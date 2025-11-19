#!/usr/bin/env bash

while true; do
    inotifywait -r . -e modify
    rm main.aux main.nav main.snm
    pdflatex main.tex
done
