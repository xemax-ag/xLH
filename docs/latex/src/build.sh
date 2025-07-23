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
# 2-maliges Erstellen für die korrekten Referenzen innerhalb der Dokumente
pdflatex -interaction nonstopmode -output-directory $pdf_dir xLH-lx-base.tex
pdflatex -interaction nonstopmode -output-directory $pdf_dir xLH-lx-base.tex
pdflatex -interaction nonstopmode -output-directory $pdf_dir xLH-lx-power.tex
pdflatex -interaction nonstopmode -output-directory $pdf_dir xLH-lx-power.tex
pdflatex -interaction nonstopmode -output-directory $pdf_dir xLH-io-base.tex
pdflatex -interaction nonstopmode -output-directory $pdf_dir xLH-io-base.tex
pdflatex -interaction nonstopmode -output-directory $pdf_dir xLH-io-base-sp-4.tex
pdflatex -interaction nonstopmode -output-directory $pdf_dir xLH-io-base-sp-4.tex
pdflatex -interaction nonstopmode -output-directory $pdf_dir produktevorstellung.tex
pdflatex -interaction nonstopmode -output-directory $pdf_dir produktevorstellung.tex

cd "$pdf_dir"
rm *.aux *.log *.out *.nav *.snm *.toc

cd "$src_dir"
python build_postprocessor.py

deactivate
exit