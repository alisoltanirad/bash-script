"""
Usage: bash shortcut.sh 'dirs_path' ['target']

Args:
  dirs_path: Path of directories.
  target (optional): Target path to make shortcuts. Default is home (~/).

"""
dirs_path=$1
target=${2:-~/}

cd $target
for path in $dirs_path*; do
  if test -e "$target${path##/*/}"
  then
    echo "\"${path##/*/}\" exists in \"$target\"."
  else
    ln -s $path ${path##/*/}
    echo "\"${path##/*/}\" created in \"$target\"."
  fi
done
