#!/bin/bash
set -euo pipefail

# -h specified to follow symlinks when boxing;
# might want to symlink the file so as not to
# include huge files in the git repo
rm boxes/*.box
for I in boxes/*; do
	tar czhf ${I}.box -C ${I} $(ls ${I})
done
