# xLH
## Produktefamilie
Eine ausführliche Anleitung sowie technische Details finden Sie in der [PDF-Dokumentation](docs/latex/pdf/).
- [xLH-lx-base](docs/latex/pdf/xLH-lx-base.pdf)
- [xLH-lx-power](docs/latex/pdf/xLH-lx-power.pdf)
- [xLH-io-base](docs/latex/pdf/xLH-io-base.pdf)
- [xLH-io-base-sp-4](docs/latex/pdf/xLH-io-base-sp-4.pdf)

## Installation Python
- pyenv install 3.12.9
- pyenv local 3.12.9
- python -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install poetry
poetry lock
poetry install

## Installation LaTex
- sudo apt install texlive-full
- sudo apt install texlive-lang-german

## Divers
- Zone.Identifier in WSL2: find . -name "*Zone.Identifier" -type f -delete