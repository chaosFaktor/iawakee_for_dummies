#!/usr/bin/env bash

MACHINE_TIME=$(date --iso-8601=seconds)
HUMAN_TIME=$(date --date="$MACHINE_TIME" "+%d.%m.%Y; %H:%m:%S")
FILE=$(dirname $0)/sections/$MACHINE_TIME.tex
PREFIX="""\
% $HUMAN_TIME


\\\\section{sectionName}%
\\\\begin{frame}%
    \\\\frametitle{sectionName}


\\\\end{frame}
\n
\n
\\\\note {



}


"""

echo -e "$PREFIX" > $FILE
exec $EDITOR $FILE
