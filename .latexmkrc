#!/usr/bin/env perl
$pdf_mode      = 3;  # generates pdf via dvipdfmx
$max_repeat    = 5;
$latex         = 'uplatex -halt-on-error';
$latex_silent  = 'uplatex -halt-on-error -interaction=batchmode';
$bibtex        = 'upbibtex';
# $dvipdf        = 'dvipdfmx %O -o %D $S';
$dvipdfmx      = 'dvipdfmx -p a4 %S';
$makeindex     = 'mendex %O -o %D %S';

