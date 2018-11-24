#!/usr/bin/perl

use TEMPL;
TEMPL::Init();

$TEMPL::TITLE = 'SolveSpace - Examples';
$TEMPL::SHOW_VERSION = 1;

$sep = '<div class="vspace"></div>';

TEMPL::OutputWithHeader("EXAMPLES", <<EOT

<div class="forex" style="padding-left: 2em;">
    <a href="dl/ex-stand.pdf">
        <img border="0" src="pics/ex-stand.png">
    </a>
</div>

<div class="forex">
    <img src="pics/ex-stand-detail.jpg">
</div>

<p>A stand made from notched angle iron. Notice the way that parts for
the slanting front are constrained: point-on-plane constraints are used
to fix the orientation (and not just the position) of one part to the
correct angle. This means that a change in the angle of the other part
will propagate through to the assembly without user
intervention. Subsequent slanted parts are just constrained same-orientation
against the first slanted part, in the same way that parts at right angles
are typically constrained same-orientation against the coordinate (x, y, z)
axes. So once the first slanted part is placed, we can specify
the orientation of subsequent slanted parts with just a single constraint.</p>

<ul>
<li><b><a href="dl/ex-stand.zip">ex-stand.zip</a></b></li>
</ul>

$sep
<div class="forex">
    <a href="dl/ex-collet.pdf">
        <img border="0" src="pics/ex-collet.png">
    </a>
</div>

<div class="forex">
    <img src="pics/ex-collet.jpg">
</div>

<p>
A mostly-2d part cut from sheet: a collet to clamp a 1.000" round shaft.
The entire part is drawn in a single 2d sketch (except for the screw hole,
which is out-of-plane). This is not necessarily the best way to draw the
part; the part could instead have been drawn in multiple steps with Boolean
operations, for example. But 2d parts may be drawn this way, and then not
even extruded or otherwise modeled as solids. The sketch may be exported
directly.
</p>

<ul>
<li><b><a href="dl/ex-collet.slvs">ex-collet.slvs</a></b></li>
</ul>

$sep

<div class="forex">
    <img src="pics/ball-mill-side.png">
</div>
<div class="forex">
    <img src="pics/ball-mill-top.png">
</div>
<div class="forex">
    <img src="pics/ball-mill-view-1.jpg">
</div>
<div class="forex">
    <img src="pics/ball-mill-view-2.jpg">
</div>

<p>A belt-driven ball mill. The images above are a mixture of
parallel projections, as for the top and side views, and perspective
projections for the pictorials. All were generated directly from the
3d model.</p>

<p>This model makes use of lathed (solid of revolution) features for
the pulleys, and for the rounded end caps of the canister. It also uses
a variety of assembly constraints, including point-on-line constraints
(for example, to align the shafts to the bearings). Try lengthening
the orange and red canister, and then lengthening the rest of the machine
accordingly. This should require only changes to the dimensions, and the
model will regenerate with the parts assembled as desired.</p>

<p>Note the group where the belt is drawn (g013-belt). The belt
is drawn from lines and arcs constrained against the pulleys, and then
"stretched out" using equal-length constraints and measured using a
reference dimension.</p>


<ul>
<li><b><a href="dl/ex-ball-mill.zip">ex-ball-mill.zip</a></b></li>
</ul>



$sep

<div class="forex">
    <img src="pics/ex-case.jpg">
</div>

<div class="forex">
    <img src="pics/ex-case-outline.png">
</div>

<p>A case for a printed circuit board, made by stacking up four parts cut
from sheet. The outline of the case is drawn only once, in outline.slvs.
Each part that uses the outline (the top, the sides, a spacer sheet, and
the base) imports that outline and modifies it as required. To change that
outline, we can change it in a single location, and our changes will
propagate through to all the parts.</p>

<ul>
<li><b><a href="dl/ex-case.zip">ex-case.zip</a></b></li>
</ul>

$sep

<div class="forex">
    <img src="pics/ex-peaucellier.png">
</div>

<p>Peaucellier's linkage. The rightmost point moves in an exact vertical
line. This is only a demonstration of the constraint solver, and a mathematical
curiosity. The linkage is too complex to be of practical value.

<ul>
<li><b><a href="dl/ex-peaucellier.slvs">ex-peaucellier.slvs</a></b></li>
</ul>

$sep

<div class="forex">
    <img src="pics/ex-chebyshev.png">
</div>

<p>Chebyshev's linkage. The path traced by the midpoint of the short
link approximates a straight line; and with only four bars, the linkage
is practical.</p>

<ul>
<li><b><a href="dl/ex-chebyshev.slvs">ex-chebyshev.slvs</a></b></li>
</ul>

$sep

<div class="forex">
    <img src="pics/ex-isometric.png">
</div>

<p>Geometric construction of an isometric view. We
know that in an isometric view, the three coordinate axes are projected
to the same length. So we draw our three coordinate axes, and then in a
new group create a workplane, and constrain our coordinate axes to have
equal projected length in that workplane. Since the coordinate axes cannot
move, the workplane is rotated to produce the required projection; select
the workplane's normal to read that projection out as a 3x3 rotation
matrix.</p>

<p>(To get an isometric projection in normal drawing, you would just
choose View &rarr; Nearest Iso View. This is a demonstration of the
constraint solver, not a practical way to generate an isometric view.)</p>

<ul>
<li><b><a href="dl/ex-isometric.slvs">ex-isometric.slvs</a></b></li>
</ul>

EOT
);
