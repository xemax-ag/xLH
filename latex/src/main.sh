#!/bin/bash
# chmod +x main.sh
# bash main.sh
# ==================================================
shell_dir="$(cd "$(dirname "$(readlink -f "$0")")" && pwd)"
cd "$shell_dir"
cd ../..
src_dir="$(pwd)/latex/src"
out_dir="$(pwd)/latex/out"
venv_dir="$(pwd)/venv"
echo "shell_dir = $shell_dir"
echo "src_dir = $src_dir"
echo "out_dir = $out_dir"
echo "venv_dir = $venv_dir"
# ==================================================
cd "$src_dir"
source "$venv_dir/bin/activate"

# https://tex.stackexchange.com/questions/140845/how-can-i-ignore-latex-error-while-compiling
pdflatex --interaction nonstopmode xLH-lx-base.tex

deactivate
exit