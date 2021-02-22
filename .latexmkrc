#!/usr/bin/env perl
$latex         = 'uplatex -synctex=1 -halt-on-error';
$latex_silent  = 'uplatex -synctex=1 -halt-on-error -interaction=batchmode';
$dvipdf      = 'dvipdfmx %O -o %D %S';
$bibtex        = 'upbibtex';
$makeindex     = 'mendex %O -o %D %S';
$pdf_mode      = 3;  # generates pdf via dvipdfmx
$max_repeat    = 5;

