# Universidad de Chile FCFM thesis template

This repository hosts the thesis template for Universidad de Chile at the Facultad Ciencias Físicas Matemáticas (FCFM). This is a light version and minimal template that fulfills all needed requirements plus gives the student a set of useful tools to develop the document. The idea of this template is to keep it as customizable as possible, without using or adding custom commands.  

FCFM official guidelines can be found [here](https://repositorio.uchile.cl/handle/2250/185276). These guidelines are very minimal and there is plenty of flexibility for the document. All requirements have been incorporated here, including the order of the sections, line spacing, page layout, and font size/style.

In general,
- Font size cannot be modified, must be 12.
- Font itself can be changed, but be aware that other styling options may change as well (e.g., by creating your own Python figures).
- The use of `\textbf{...}` is not allowed, the only way to highlight something is using italics, `\textit{...}`.
- Bibliography can be any of the classical standards and not necessarily IEEE, supervisor must approve this. I included here the natural sciences bibliography style which is the standard in my research area. I strongly suggest that you use this.
- There is no clear standard for the cover page, neither for headers or footers.
- Order of the sections are: title page, abstract (Spanish then English), dedication, acknowledgements, list of contents, chapters, acronyms or glossaries, bibliography, and appendices (which for this template are called annexes).

The goal of this minimal `\LaTeX\` thesis template is to help students deepen their understanding of `\LaTeX\`, explore new packages and utilities, and develop their own writing style while following the academic and scientific writing standards. `\LaTeX\` offers a wide range of commands, automation features, and tools that can make writing your manuscript both elegant and efficient. Take advantage of [Comprehensive TeX Archive Network (CTAN)](https://ctan.org) and other resources to discover open-source solutions that enhance your writing experience.

## Setting up an enhanced writing environment

Writing your thesis should be all about the writing and making figures, and less about solving dependencies problems, adjusting formats, and versioning the document. I strongly suggest you use all the following tools to set up a productive and distraction free environment to write your manuscript.

### Installation

Local `\LaTeX\` installation. You can freely install it on Linux, Mac or Windows. `\LaTeX` is a truly open source software built by a an open community over decades, there shouldn't be any reason why we'd want to pay for it. First you'd need to install a `\TeX\` distribution (the low level code for `\LaTeX\`). There are multiple distributions out there, I recommend using [`\TeX\` Live](https://tug.org/texlive/). This distribution comes with its own text editor and other useful software. Nevertheless, I personally prefer a fully command line interface. Beware that you'd need around 5 GB of free available space in your computer to install this distribution (a small price for the right to have your own data!).

### Customization and text editors

Similarly as distributions, there are multiple text editors that are `\LaTeX\` compatible. Feel free to use what ever feels best for you. I personally use Visual Studio Code coupled with the [`\LaTeX\` Workshop Extension](https://github.com/James-Yu/LaTeX-Workshop) (included also my own environment settings in the `uchile-tt.code-workspace`). These combination is great since it lets you use right next to it the command line to either run Python and bash scripts (e.g., `latexdiff` and `git-latexdiff`) as well as `git`.

## `\LaTeX\` useful links:

- By far the best LaTeX forum [TeX](https://tex.stackexchange.com).
- When you know the symbol but you don't know how is it called, then draw it with [Detexify](http://detexify.kirelabs.org/).
- Ti _k_ z examples, [TeXample](http://www.texample.net/).
- `\LaTeX\` [colors](http://latexcolor.com).

# Project structure

The project structure looks something like this:

```bash
(base) tcassanelli@Tomas-MacBook-M2 uchile-thesis-template % tree
.
├── appendix1
│   └── appendix1.tex
├── appendix2
│   └── appendix2.tex
├── chapter1
│   └── chapter1.tex
├── chapter2
│   └── chapter2.tex
├── chapter3
│   └── chapter3.tex
├── figures
│   ├── dummy.pdf
│   └── uchile.pdf
├── latexdiff-v.sh
├── main
│   ├── main-acronyms.tex
│   ├── main.tex
├── plot_python
│   ├── dummy.py
│   └── thesis_sty.mplstyle
├── README.md
├── references
│   ├── aas_macros.sty
│   ├── bibfile_thesis.bib
│   └── bibstyle_aa.bst
└── uchile-tt.code-workspace
```

`\LaTeX\` files can be compiled in their own directory or preferable in `main/`. All figures should be included only in the `figures/` directory. 

# `git-latexdiff`

The command line `git-latexdiff` or `latexdiff-vc --git` which should be already installed in the `\LaTeX\` default configuration is a very powerful tool. Particularly useful when you get your first round of comments and then they are incorporated in the text. Once they have been written you can just simply use the already made script `latexdiff-v.sh` calling a single commit against the latest changes. A good exercise is to generate commits as you go (with meaningful comments), so you have a well written history of your manuscript.

Pro tip, save your most important commits (or even better generate a `git tag`) for important milestones to then compare your updated document to. In addition, typing `git log` will give you access to your recent commits. As an example you can directly use the line:
```bash
bash latexdiff-v.sh <commit>
```

## Bugs, issues & feature requests

Tell me what you think and how to improve the template :smiley: !

## License

This template is licensed under a 3-clause BSD style license - see the LICENSE.md file.

## Contact

If you have any questions about the code, do not hesitate and raise an issue. You can also send me an email directly:

* tcassanelli _at_ protonmail.com