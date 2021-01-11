"""
Usage: bash remove.sh 'path'

Args:
  path (optional): Path of file or directory. Default is trash directory.

"""
path=${1:-~/.Trash}
rm -Rf $path
