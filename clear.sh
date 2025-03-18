#!/bin/bash
cd "$(dirname "$0")" || exit
rm -f *.aux *.latexmk *.fls *.idx *.ilg *.ind *.log *.out *.toc *.nctex.gz

if [ -d "chapter" ]; then
    rm -f chapter/*.aux
else
    echo "Directory 'chapter' not found. Skipping .aux file removal in 'chapter'."
fi
