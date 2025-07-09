# xLH
## Beschreibung
Die xLH-Produkte zeichnen sich durch die klare didaktische Fokussierung im industrienahen Umfeld aus.
Industrielle Workflows preislich heruntergebrochen auf individualisiertes Lernniveau für **JEDE** Lernende und **JEDEN** Lernenden.
[PDF-Dokumentation](docs/latex/pdf/) für die technischen Details.

Merkmale
- handlungskompetenzen-orientiertes (haptisches) Lernen an realen Aufbauten 
- Lernen sollte "Freude" machen => Förderung intrinsischer Motivation 
- arbeiten mit Industrie-Tools und industrienahen Workflows 
- zeit- und ortsunabhängig 
- Produkteportfolio optimiert für didaktische Anforderungen 
- Lernarbeitsplatz zu Hause wird zum Labor (hohe Mobilität)
- Toolchain und Arbeitsprozesse aus der Industrie 
- offenes Konzept, erlaubt eigene Erweiterungen (Projekte)
- fächer- bzw. themenübergreifend einsetzbar (Harmonisierung der Toolchain)
- Systemarchitektur richtet sich nach den heute gängigen industriellen Umsetzungen

Controller-Boards
- [xLH-lx-base](docs/latex/pdf/xLH-lx-base.pdf)
- [xLH-lx-power](docs/latex/pdf/xLH-lx-power.pdf)

IO-Boards
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