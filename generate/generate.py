import numpy as np
from PIL import Image
import json
import sys

try:
    generate = sys.argv[1]
except (IndexError):
    generate = 'h'

# generate.py ore ruby gem [[247, 212, 217],[221, 47, 70],[137, 0, 17]]

# generate.py item geo_res/hematite


def replaceColor(data, r, g, b, color):
    red, green, blue = data[:, :, 0], data[:, :, 1], data[:, :, 2]
    mask = (red == r) & (green == g) & (blue == b)
    data[:, :, :3][mask] = [color[0],
                            color[1],
                            color[2]]
    return data


if generate == 'h' or generate == 'help':
    print(f"Usage: \
        \n\t{sys.argv[0]} ore <name> <ore|mineral|gem> [[r,g,b],[r,g,b],[r,g,b],...]\
        \n\t{sys.argv[0]} item [path/]<name> [id]")

    # TODO: add block command (model, <item model | terracotta blockstate>, convert_player_head.mcfunction lines?)

elif generate == 'ore':
    # Load arguments
    ore_name = sys.argv[2]
    ore_type = sys.argv[3]
    ore_colors = json.loads(sys.argv[4])

    # Open template
    template = Image.open(ore_type + '_template.png').convert('RGBA')
    data = np.array(template)
    print(f"Creating {ore_type} {ore_name}")

    # ----- Create ore texture -----
    # Replace placeholder colors with color... (leaves alpha values alone...)
    data = replaceColor(data, 255, 0, 0, ore_colors[0])  # Red

    if ore_type == 'ore':
        data = replaceColor(data, 255, 255, 0, (ore_colors[1]))  # Yellow
        data = replaceColor(data, 0, 255, 0, ore_colors[2])  # Green
        data = replaceColor(data, 0, 0, 255, ore_colors[3])  # Blue

    elif ore_type == 'gem':
        data = replaceColor(data, 0, 255, 0, ore_colors[1])  # Green
        data = replaceColor(data, 0, 0, 255, ore_colors[2])  # Blue
        data = replaceColor(data, 255, 255, 0, (            # Yellow
            (ore_colors[0][0] + ore_colors[1][0]) / 2,
            (ore_colors[0][1] + ore_colors[1][1]) / 2,
            (ore_colors[0][2] + ore_colors[1][2]) / 2))

        data = replaceColor(data, 0, 255, 255, (            # Cyan
            (ore_colors[1][0] + ore_colors[2][0]) / 2,
            (ore_colors[1][1] + ore_colors[2][1]) / 2,
            (ore_colors[1][2] + ore_colors[2][2]) / 2))

        data = replaceColor(data, 255, 0, 255, (            # Magenta
            (ore_colors[2][0] - ore_colors[2][0]*.25),
            (ore_colors[2][1] - ore_colors[2][1]*.25),
            (ore_colors[2][2] - ore_colors[2][2] * .25)))

    # Save and close images
    im2 = Image.fromarray(data)
    im2.save(f"../assets/gaeacraft/textures/block/geo_res/{ore_name}.png", "PNG")
    template.close()

    # ---- Create ore models (poor|normal|rich) -----

    # Create & open item model file
    for quality in ['poor', 'normal', 'rich']:
        block = open(f'../assets/gaeacraft/models/block/geo_res/{ore_name}_{quality}.json', 'w')

        # Create block models
        block.write(
            '{"parent":"gaeacraft:block/geo_res/base_' + quality + '","textures":{"texture": "gaeacraft:block/geo_res/' + ore_name + '"}}')

        # Save and close model
        block.close()

elif generate == 'item':
    # Load arguments
    item_name = sys.argv[2]
    try:
        item_id = sys.argv[3]
    except (IndexError):
        item_id = 0

    # Create & open item model file
    item = open(f'../assets/gaeacraft/models/item/{item_name}.json', 'w')

    # Create model & lang.json entry (for copy+pasting, inserting it using code is annoying)
    item.write('{"parent":"item/generated","textures":{"layer0": "gaeacraft:item/' + item_name + '"}}')
    item_name = item_name.replace('/', '.')
    item_readable_name = " ".join([
        word.capitalize()
        for word in item_name.split('.')[-1].split(" ")
    ])
    print(f'lang.json:\n"item.gaeacraft.{item_name}": "{item_readable_name}",')
    if not item_id == 0:
        print('feather.json:\n{"predicate": {"custom_model_data": ' +
              item_id + '}}, "model": "gaeacraft:item/' + item_name + '"},')

    # Save and close model
    item.close()
