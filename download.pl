#!/usr/bin/perl

use TEMPL;
TEMPL::Init();

$TEMPL::TITLE = 'SolveSpace - Download';

TEMPL::OutputWithHeader("DOWNLOAD PROGRAM", <<EOT
<p>The following builds are available:</p>

<table class="dltab">
<tr>
    <th>Version</th>
    <th>Released</th>
    <th>Platforms</th>
</tr>
<tr>
    <td><a rel="nofollow" href="https://github.com/solvespace/solvespace/releases/tag/v3.1"><b>3.1 stable</b></a></td>
    <td>June 01, 2022</td>
    <td>Windows Vista&ndash;10, Linux, Mac</td>
</tr>
<tr>
    <td><a rel="nofollow" href="https://github.com/solvespace/solvespace/releases/tag/v3.0">3.0 stable</a></td>
    <td>April 17, 2021</td>
    <td>Windows Vista&ndash;10, Linux, Mac</td>
</tr>
<tr>
    <td><a rel="nofollow" href="https://github.com/solvespace/solvespace/releases/tag/v2.3">2.3 stable</a></td>
    <td>December 23, 2016</td>
    <td>Windows XP&ndash;10, Linux, Mac</td>
</tr>
<tr>
    <td><a rel="nofollow" href="https://github.com/solvespace/solvespace/releases/tag/v2.0">2.0 stable</a></td>
    <td>July 28, 2013</td>
    <td>Windows XP&ndash;10</td>
</tr>
</table>

<p><b>Release 3.1 is now available</b>, with
<a rel="nofollow" href="https://github.com/solvespace/solvespace/blob/master/CHANGELOG.md">
significant performance improvements</a>, linking of .STL files and other features and fixes. Please report
any <a rel="nofollow" href="https://github.com/solvespace/solvespace/issues">issues</a>.</p>

<p>Under <b>Windows</b>, no installation is required. Download
solvespace.exe and run it immediately. To continue using SolveSpace,
save solvespace.exe somewhere convenient. For higher performance on
multi-core processors, try solvespace-openmp.exe
(but you may need to install 
<a rel="nofollow" href="https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads">
vc_redist.x86.exe</a> first).
</p>

<p>Under <b>OS X</b>, run the .app file directly from the disk image, or drag it
to Applications to install. Use 3.0 or later, since it is a vast improvement over previous versions.
</p>

<p>Under <b>Linux</b>, you may find SolveSpace in your distribution's package manager, or you
can obtain it from the <a rel="nofollow" href="https://snapcraft.io/solvespace">Snap Store</a>.
You may also <a rel="nofollow" href="https://github.com/solvespace/solvespace/tree/v3.1#via-source-code">build</a> SolveSpace from source and install it youself.
</p>

<p>Files saved by newer versions may be readable by earlier ones, but some
<a rel="nofollow" href="https://github.com/solvespace/solvespace/blob/master/CHANGELOG.md">
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
