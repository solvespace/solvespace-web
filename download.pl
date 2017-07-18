#!/usr/bin/perl

$TITLE = 'SolveSpace - Download';

require TEMPL;

TEMPL::OutputWithHeader("DOWNLOAD PROGRAM", <<EOT
<p>The following builds are available:</p>

<table class=dltab>
<tr>
    <th>Version</th>
    <th>Released</th>
    <th>Platforms</th>
    <th>Link</th>
</tr>
<tr>
    <td>2.3</td>
    <td>December 23, 2016</td>
    <td>Windows XP&ndash;10, Linux, Mac</td>
    <td><a rel="nofollow" href="https://github.com/solvespace/solvespace/releases/tag/v2.3"><b>via GitHub</b></a></td>
</tr>
<tr>
    <td>2.0</td>
    <td>July 28, 2013</td>
    <td>Windows XP&ndash;10</td>
    <td><a rel="nofollow" href="https://github.com/solvespace/solvespace/releases/tag/v2.0"><b>via GitHub</b></a></td>
</tr>
</table>

<p>Under Windows, no installation is required. After downloading solvespace.exe,
you can run it immediately. If you wish to continue using SolveSpace,
then save solvespace.exe somewhere convenient (e.g., on your desktop).</p>

<p>Under OS X, run the .app file directly from the disk image, or drag it
to Applications to install. Under Linux,
<a rel="nofollow" href="https://github.com/solvespace/solvespace/tree/2.x#building-on-linux">build</a> and install, or get SolveSpace through your distribution's package manager.</p>

<p>Files saved by 2.3 are usually readable by 2.0, but some
<a rel="nofollow" href="https://github.com/solvespace/solvespace/blob/v2.3/CHANGELOG.md">
new features
</a>
are unsupported in older versions.</p>

$TEMPL::SEP

<p><b>Quick start:</b> The first time SolveSpace runs, you will see an empty
workplane.</p>
<ul>
<li>To draw a line, choose the Sketch &rarr; Line Segment (or circle, or
arc, or ...) menu. Then left-click to define the endpoints. Hit Escape
if you want to stop drawing before you've formed a closed contour.</li>
<li>Right-drag to pan, center-drag to rotate, and mousewheel to zoom.
To align the view's rotation back to the workplane, choose View &rarr;
Align View to Workplane.</li>
<li>To select a line, hover the mouse over the line (it turns yellow),
and left-click (it turns red). To dimension the line's length, choose
Constrain &rarr; Distance / Diameter.</li>
<li>To move the dimension, drag it. To change the dimension, double-click
it, type a number, and hit Enter.</li>
</ul>

<p>To learn more about SolveSpace, see the
<a href="tutorial.$TEMPL::PL">tutorials</a>, or the
<a href="ref.$TEMPL::PL">reference manual.</a>
</p>

$TEMPL::SEP

<p>SolveSpace is free software, distributed under the GPLv3. Source
code for the first release is available for download at:</p>

<ul>
    <li><a href="dl/solvespace-rel2.0.zip">solvespace-rel2.0.zip</a></li>
</ul>

<p>Later versions of the source code are <a href="https://github.com/solvespace/solvespace.git"><b>hosted
in git at GitHub</b></a>.</p>

EOT
);
