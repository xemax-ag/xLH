# xLH


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