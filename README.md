# TUM Thesis Latex Template
A latex theis template for Technical University of Munich (TUM), extracted from my own master thesis. The cover is based on [Technical University of Munich (tumphthesis)](https://www.overleaf.com/latex/templates/technical-university-of-munich-tumphthesis/gzzqnqhbwwpb).

## Requirement
This template was tested with **Overleaf** and **VSCodeLatex Workshop**. About how to set up Latex Workshop in VSCode, please look at [LaTeX Workshop - Installation and basic settings](https://github.com/James-Yu/LaTeX-Workshop/wiki/Install).

## Structure
* Folder `chapters` contains chapters in the main text.  
* Folder `figures` contains pictures, there are two for example in it.  
* Folder `meta` contains those meta parts of a thesis, including abbreviation list `abbr.tex`, abstract `abstract.tex`, acknowledgement `acknowledgement.tex` and declaration of originality `declaration.tex`.  
* `.latexmkrc` is a compile configuration for latex, ensure the generation of the abbreviation list.
* `tumthesis.cls` is a self-defined document class, most of the typesetting is done here.  
* `ref.bib` is a bibtex file for references.  
* `main.tex` is the main tex file, where you can change the basic information and the chapters you want to include.
