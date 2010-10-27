#!/bin/bash
cd 1-Fach
wget --Output="Prüfungsordnung.pdf" -N http://www.studservice.uni-kiel.de/sta/6.3-121.pdf
wget --Output="Prüfungsverfahrensordnung.pdf" -N http://www.studservice.uni-kiel.de/sta/0-1-2.1.pdf
wget --Output="Praktikumsordnung.pdf" -N http://www.studservice.uni-kiel.de/sta/0-1-9.2.pdf
pdftotext *.pdf
cd ..
cd 2-Fach
wget --Output="Prüfungsordnung.pdf" -N http://www.studservice.uni-kiel.de/sta/6.3-122.pdf
wget --Output="2-Fach-Prüfungsordnung.pdf" -N http://www.studservice.uni-kiel.de/sta/0-1-2.2.pdf
wget --Output="Prüfungsverfahrensordnung.pdf" -N http://www.studservice.uni-kiel.de/sta/0-1-2.1.pdf
wget --Output="Praktikumsordnung.pdf" -N http://www.studservice.uni-kiel.de/sta/0-1-9.pdf
pdftotext *.pdf
cd ..
git add .
git commit -a -m"Update"
git push physik master
