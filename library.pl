#!/usr/bin/perl

$TITLE = 'SolveSpace - As a Library';

require TEMPL;

TEMPL::OutputWithHeader("AS A LIBRARY", <<EOT

<p>Parametric sketching is a standard feature of mechanical CAD
software&mdash;most operators would consider it essential. It is valuable
in a wide range of applications, including mechanical drawing, MEMS
layout, architectural drawing, and printed circuit board layout. But
outside mechanical PLM packages (Pro/E, Solidworks, etc.), it has not
frequently been implemented.</p>

<p>SolveSpace is a standalone executable program, and its constraint
solver is heavily coupled with the rest of the program. If you wish
to embed SolveSpace's constraint solver in another application, then
you may be able to use the library interface exposed by SolveSpace.

$TEMPL::SEP

<p>This library is built from the same code used in SolveSpace; you
can evaluate its performance by <a href="download.pl">downloading</a>
and running solvespace.exe. Constraints and entities exposed in the
program's user interface correspond very closely to constraints and
entities defined by this library.</p>

<p>This library is available with SolveSpace's source download package,
in the directory exposed/... in:</p>

<ul>
    <li><b><a href="dl/solvespace-rel2.0.zip">solvespace-rel2.0.zip</a></b></li>
</ul>

<p>This package includes documentation, the library itself, and the
necessary interface files to use the library with your code. Examples
are included, in:</p>

<ul>
<li>C/C++ (for the MSVC++ compiler, version 6 or later)</li>
<li>VB.NET (for the Microsoft .NET Framework, version 3.0 or later)</li>
</ul>

<p>SolveSpace is distributed under the GPLv3, which permits most use in
free software but generally 
forbids linking the library with proprietary software.
If you're interested in the latter, then SolveSpace is also available for
licensing under typical commercial terms; please <a href="contact.pl">
contact me</a> for details.</p>

EOT
);
