Open-Advice 2
=============

## Building a PDF

To build a pdf file out of the LaTeX source install pdflatex and run the
command

    make

If you don't have make, you can run:

    pdflatex Open-Advice2

To build all other formats run:

    make all

## Updating the book after changes

If you have made local changes to the source of the book and want to render
a PDF again:

    make clean
    make

## Installing pdflatex

On Debian-based systems, you can install "pdflatex" with:

    sudo apt-get install texlive-latex-extra

On Gentoo-based systems, "pdflatex" and required extra pacakges can be installed with:

    emerge texlive-latexrecommended xcolor

## Issues

    "File `todonotes.sty' not found."

This means you need to run the above apt-get command, because you are
missing one of the LaTeX extra packages.

    "File `tocstyle.sty' not found."

If your distro doesn't have that you can download it from
http://www.tug.org/texlive/devsrc/Master/texmf-dist/tex/latex/koma-script/tocstyle.sty
and place it in the root directory of the book.

## License

The book and its content is licenced under CC-BY-SA. For questions about the
book contact Lydia Pintscher at lydia@kde.org.