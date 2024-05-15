import numpy as np
from PIL import Image
from tqdm import tqdm
import cv2
import os
import uuid

ACESSCIBLE = 1
DIRECTION = 0.8
step = 50
STAR_RADIUS = 150

ITERATION = 100000


def getpdf(im:Image, x, y, start, end):
    value = im.getpixel((x,y))
    if value < 250:
        pdf = 0
    else:
        pdf = 1*ACESSCIBLE

    start = np.array(start)
    end = np.array(end)
    direction = end - start
    direction = direction/np.linalg.norm(direction)
    pos = np.array([x,y])
    start_dir = pos - start
    if np.linalg.norm(start_dir) < 0.1:
        cos_start = 1
    else:
        start_dir = start_dir/np.linalg.norm(start_dir)
        cos_start = np.dot(direction, start_dir)
    pdf *= ((cos_start+1)*0.5*DIRECTION + 1 - DIRECTION)
    return pdf

def parsefield(im:Image, start, end):
    height = im.height
    width = im.width
    field = np.zeros((width*height))
    cdf = 0
    for idx in range(width*height):
        x = idx//height
        y = idx%height
        pdf = getpdf(im, x, y, start, end)
        cdf += pdf
        field[idx] = cdf
    field = field/cdf
    return field

def samplefield(field:np.ndarray, width, height):
    x = np.random.rand()
    value = field.searchsorted(x)
    return np.array([value//height, value%height])

def retrievepdf(field:np.ndarray, width, height, x, y):
    if x*height+y == 0:
        return field[0]
    idx = int(x*height + y)
    cdf_1 = field[idx - 1]
    cdf_2 = field[idx]
    return cdf_2 - cdf_1

def linerenderer(start, end):
    slope = (end[1] - start[1])/(end[0] - start[0])
    if abs(slope) < 1:
        if start[0]>end[0]:
            start, end = end, start
        for x in range(int(start[0]), int(end[0])):
            y = start[1] + slope*(x - start[0])
            yield (x, y)
    else:
        if start[1]>end[1]:
            start, end = end, start
        for y in range(int(start[1]), int(end[1])):
            x = start[0] + (y - start[1])/slope
            yield (x, y)

def treenodedist(treenode, pos):
    dist = np.linalg.norm(treenode['pos'] - pos)
    node = treenode
    for child in treenode['children']:
        d, n = treenodedist(child, pos)
        if d < dist:
            dist = d
            node = n
    return dist, node
    

def rrt(field:np.ndarray, width, height, start, end):
    id = 0
    treenode = {'id':id,'pos':start, 'parent':None, 'children':[], 'cost':0, 'path':False}
    start = np.array(start)
    end = np.array(end)
    leaf = None

    for i in tqdm(range(ITERATION)):
        # rand = np.random.rand()
        # if rand > 0.5:
        #     sampled = end
        # else:
        #     sampled = samplefield(field, width, height)

        sampled = samplefield(field, width, height)


        # print('sampled:', sampled)
        dist, nearest = treenodedist(treenode, sampled)
        # print('dist:', dist)
        # print('nearest:', nearest['pos'])
        if dist < 0.001:
            continue
        dir = sampled - nearest['pos']
        sampled = nearest['pos'] + dir/dist*step
        collision = False
        for x, y in linerenderer(nearest['pos'], sampled):
            pdf = retrievepdf(field, width, height, x, y)
            if pdf <= np.finfo(float).eps:
                collision = True
                break
        # print(collision)
        if collision:
            continue
        id += 1
        newnode = {'id':id,'pos':sampled, 'parent':nearest, 'children':[], 'cost':nearest['cost'] + step, 'path':False}
        nearest['children'].append(newnode)
        pathrefine(field, width, height, treenode, newnode)
        if np.linalg.norm(sampled - end) < 30:
            node = newnode
            while node['parent'] is not None:
                node['path'] = True
                node = node['parent']
            leaf = newnode
            break
    return treenode, leaf

def processimg(path):
    out_file = path[:-4] + '_processed.pgm'
    if os.path.exists(out_file):
        return out_file
    im = cv2.imread(path, cv2.IMREAD_GRAYSCALE)
    kernel = np.ones((5,5),np.uint8)
    #erode
    im = cv2.erode(im,kernel,iterations = 1)
    # # dilate
    # im = cv2.dilate(im,kernel,iterations = 1)
    im = Image.fromarray(im)
    cv2.imwrite(out_file, np.array(im))
    return out_file

def findnodes(field, width, height, root, leaf):
    if leaf['parent']['id'] == root['id']:
        pass
    pos = leaf['pos']
    dist = np.linalg.norm(root['pos'] - pos)
    if dist < STAR_RADIUS:
        collision = False
        for x, y in linerenderer(root['pos'], pos):
            pdf = retrievepdf(field, width, height, x, y)
            if pdf <= np.finfo(float).eps:
                collision = True
                break
        if not collision:
            yield root
    for child in root['children']:
        for n in findnodes(field, width, height, child, leaf):
            yield n
        

def pathrefine(field, width, height, root, leaf):
    mincost = leaf['cost']
    node = leaf['parent']
    for n in findnodes(field, width, height, root, leaf):
        cost = n['cost'] + np.linalg.norm(leaf['pos'] - n['pos'])
        if cost < mincost:
            mincost = cost
            node = n
    leaf['parent']['children'].pop()
    node['children'].append(leaf)
    leaf['parent'] = node
    leaf['cost'] = mincost
    



# def sample_nearby(im:Image, point, radius = 50, pref_dir=None):
#     if pref_dir is None:
#         angle = np.random.rand()*2*np.pi
#     else:

#     radius = step
#     x = int(point[0] + radius*np.cos(angle))
#     y = int(point[1] + radius*np.sin(angle))


# def rrt_nearby(im:Image, start, end):
#     start = np.array(start)
#     end = np.array(end)
#     treenode = {'pos':start, 'parent':None, 'children':[]}

#     for i in tqdm(range(ITERATION)):
