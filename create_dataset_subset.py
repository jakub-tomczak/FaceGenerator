# Python Copy File - Sample Code

from shutil import copyfile
from sys import exit, exc_info
from os.path import join, exists
from os import makedirs
from tqdm import tqdm

source_dir = join('.', 'datasets', 'celeb_a', 'img_align_celeba')
num_of_images = int(input("number of images: "))
if not 0 < num_of_images < 200000:
    print("number of images must be in range (0, 200000)")
    exit(-1)
target_dir = join('.', 'datasets', 'celeb_a', str(num_of_images))

if not exists(target_dir):
    makedirs(target_dir)

copied = 0
try:
    for i in tqdm(range(num_of_images)):
        filename = '{:06d}.jpg'.format(i + 1)
        source_file = join(source_dir, filename)
        target_file = join(target_dir, filename)
        if exists(source_file):
            copyfile(source_file, target_file)
            copied += 1
except IOError as e:
    print("Unable to copy file. %s" % e)
    exit(1)
except:
    print("Unexpected error:", exc_info())
    exit(1)

print("\nFile copy done!. Copied {} files.\n".format(copied))
