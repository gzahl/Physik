#!/bin/bash
git pull physik master
cd 1-Fach
wget --output-document="Prüfungsordnung.pdf"  http://www.studservice.uni-kiel.de/sta/6.3-121.pdf
wget --output-document="Prüfungsverfahrensordnung.pdf"  http://www.studservice.uni-kiel.de/sta/0-1-2.1.pdf
wget --output-document="Praktikumsordnung.pdf"  http://www.studservice.uni-kiel.de/sta/0-1-9.2.pdf
for pdffile in *.pdf
do
pdftotext $pdffile
echo "$pdffile in Text umwandeln.."
done
cd ..
cd 2-Fach
wget --output-document="Prüfungsordnung.pdf"  http://www.studservice.uni-kiel.de/sta/6.3-122.pdf
wget --output-document="2-Fach-Prüfungsordnung.pdf"  http://www.studservice.uni-kiel.de/sta/0-1-2.2.pdf
wget --output-document="Prüfungsverfahrensordnung.pdf"  http://www.studservice.uni-kiel.de/sta/0-1-2.1.pdf
wget --output-document="Praktikumsordnung.pdf"  http://www.studservice.uni-kiel.de/sta/0-1-9.pdf

for pdffile in *.pdf
do
pdftotext $pdffile
echo "$pdffile in Text umwandeln.."
done

cd ..
git add .
git commit -a -m"Update"
git push physik master
