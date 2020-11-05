import sys
import os
import pathlib

from zipfile import ZipFile


def list_files(path, ext):
    files = sorted([os.path.join(path, file)
                    for file in os.listdir(path) if file.endswith(ext)])
    return files


def unzip(files, path):
    for file in files:
        with ZipFile(file, 'r') as zip:
            zip.extractall(path)


if __name__ == "__main__":

    if len(sys.argv[1]) > 0:
        path = pathlib.Path(sys.argv[1])

        files = list_files(path, '.zip')
        unzip(files, 'data/importaciones')
