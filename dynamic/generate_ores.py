import numpy as np
from PIL import Image
import json

# Colors to create
ores = {'ruby':    {'type': 'gem', 'colors': ((247, 212, 217), (221, 47, 70),  (137, 0, 17))},
        'topaz':    {'type': 'gem', 'colors': ((255, 226, 133), (255, 198, 0),  (162, 98, 31))},
        'peridot':  {'type': 'gem', 'colors': ((176, 211, 114), (115, 162, 58), (49, 91, 7))},
        'emerald':  {'type': 'gem', 'colors': ((217, 255, 235), (23, 221, 98),  (0, 123, 24))},
        'diamond':  {'type': 'gem', 'colors': ((161, 251, 232), (74, 237, 217), (26, 170, 167))},
        'lapis':    {'type': 'gem', 'colors': ((247, 212, 217), (221, 47, 70),  (137, 0, 17))},
        'sapphire': {'type': 'gem', 'colors': ((105, 119, 255), (51, 52, 212),  (7, 1, 131))},
        'amethyst': {'type': 'gem', 'colors': ((247, 212, 217), (221, 47, 70),  (137, 0, 17))}}


def replaceColor(data, r1, r2, r3, color):
    red, green, blue = data[:, :, 0], data[:, :, 1], data[:, :, 2]
    mask = (red == r1) & (green == r2) & (blue == r3)
    data[:, :, :3][mask] = [color[0],
                            color[1],
                            color[2]]
    return data


# Open template
gem_template = Image.open('gem_template.png').convert('RGBA')
# ore_template = Image.open('ore_template.png').convert('RGBA')


for ore in ores:
    print(f"Creating ore {ore}")

    # ----- CREATE ORE TEXTURE -----
    if ores[ore]['type'] == 'gem':
        data = np.array(gem_template)

    # Replace placeholder colors with color... (leaves alpha values alone...)
    data = replaceColor(data, 255, 0, 0, ores[ore]['colors'][0])  # Red
    data = replaceColor(data, 0, 255, 0, ores[ore]['colors'][1])  # Green
    data = replaceColor(data, 0, 0, 255, ores[ore]['colors'][2])  # Blue

    data = replaceColor(data, 255, 255, 0, (            # Yellow
        (ores[ore]['colors'][0][0] + ores[ore]['colors'][1][0]) / 2,
        (ores[ore]['colors'][0][1] + ores[ore]['colors'][1][1]) / 2,
        (ores[ore]['colors'][0][2] + ores[ore]['colors'][1][2]) / 2))

    data = replaceColor(data, 0, 255, 255, (            # Cyan
        (ores[ore]['colors'][1][0] + ores[ore]['colors'][2][0]) / 2,
        (ores[ore]['colors'][1][1] + ores[ore]['colors'][2][1]) / 2,
        (ores[ore]['colors'][1][2] + ores[ore]['colors'][2][2]) / 2))

    data = replaceColor(data, 255, 0, 255, (            # Magenta
        (ores[ore]['colors'][2][0] - ores[ore]['colors'][2][0]*.25),
        (ores[ore]['colors'][2][1] - ores[ore]['colors'][2][1]*.25),
        (ores[ore]['colors'][2][2] - ores[ore]['colors'][2][2] * .25)))

    im2 = Image.fromarray(data)
    im2.save(f"../assets/gaeacraft/textures/block/geo_res/{ore}.png", "PNG")

gem_template.close()
