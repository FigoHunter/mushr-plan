import argparse
import matplotlib
import os
from PIL import Image, ImageDraw
import numpy as np
import nav

data_path = 'src/mushr_mujoco_ros/maps/real-floor0.pgm'

startpoint = [1789,2453]
endpoint = [3519,1188]

light_grey=200

def circle(x,y,radius = 40):
    return [x-radius, y-radius, x+radius, y+radius]

def drawtree(draw, treenodes, color=light_grey):
    node = treenodes
    pos = node['pos']
    draw.ellipse(circle(*pos, radius=10), fill = color)
    for child in node['children']:
        draw.line([*pos, *child['pos']], fill = color)
        drawtree(draw, child)

def drawparenttree(draw, node, color='black'):
    while node['parent'] is not None:
        draw.ellipse(circle(*node['pos'], radius=10), fill = color)
        draw.line([*node['pos'], *node['parent']['pos']], fill = color)
        node = node['parent']

def get_path_nodes(node):
    nodes=[]
    while node['parent'] is not None:
        nodes.insert(0, node)
        node = node['parent']
    return nodes

if __name__ == '__main__':

    data_path = nav.processimg(data_path)

    im = Image.open(data_path)
    startpoint[1] = im.height - startpoint[1]
    endpoint[1] = im.height - endpoint[1]
    print(f'startpoint: {startpoint}')
    print(f'endpoint: {endpoint}')

    # draw = ImageDraw.Draw(im)
    # draw.ellipse(circle(*startpoint), fill = 'black')
    # draw.ellipse(circle(*endpoint), fill = 'black')
    # field = nav.parsefield(im, startpoint, endpoint)
    # for i in range(1000):
    #     point = nav.samplefield(field, im.width, im.height)
    #     draw.ellipse(circle(*point,radius=10), fill = 'grey')
    # im.show()
    # exit()
    
    # draw = ImageDraw.Draw(im)
    # draw.ellipse(circle(*startpoint), fill = 'black')
    # draw.ellipse(circle(*endpoint), fill = 'black')
    # draw.line([*startpoint, *endpoint], fill = 'black')
    # exit()

    print('parsing field...')
    field = nav.parsefield(im, startpoint, endpoint)
    root, leaf = nav.rrt(field, im.width, im.height, startpoint, endpoint)

    nodes = get_path_nodes(leaf)

    with open('plan/planned_path.txt', 'w') as f:
        for node in nodes:
            f.write(f'{node["pos"][0]},{im.height - node["pos"][1]}\n')

    draw = ImageDraw.Draw(im)
    draw.ellipse(circle(*startpoint), fill = 'black')
    draw.ellipse(circle(*endpoint), fill = 'black')
    drawtree(draw, root)
    drawparenttree(draw, leaf)
    
    im.show()