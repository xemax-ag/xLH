#!/bin/bash
# chmod +x build.sh
# bash build.sh
# ==================================================
clear
shell_dir="$(cd "$(dirname "$(readlink -f "$0")")" && pwd)"
cd ../../..
src_dir="$(pwd)/docs/latex/src"
pdf_dir="$(pwd)/docs/latex/pdf"
venv_dir="$(pwd)/venv"
echo "shell_dir = $shell_dir"
echo "src_dir = $src_dir"
echo "pdf_dir = $pdf_dir"
echo "venv_dir = $venv_dir"
# ==================================================
source "$venv_dir/bin/activate"

cd "$src_dir"
python build_preprocessor.py

# https://tex.stackexchange.com/questions/140845/how-can-i-ignore-latex-error-while-compiling
pdflatex -interaction nonstopmode -output-directory $pdf_dir xLH-lx-base.tex
pdflatex -interaction nonstopmode -output-directory $pdf_dir xLH-lx-power.tex

cd "$pdf_dir"
rm *.aux *.log *.out

cd "$src_dir"
python build_postprocessor.py

deactivate
exit