#!/usr/bin/perl

$TITLE = 'SolveSpace - Features';

require TEMPL;

TEMPL::OutputWithHeader("FEATURES", <<EOT
<div class="featureblock">
<p><b>Sketch sections using</b></p>
<ul>
    <li>lines, rectangles, datum lines and points</li>
    <li>circles, arcs of a circle, datum circles</li>
    <li>cubic Bezier segments, C2 interpolating splines</li>
    <li>text in a TrueType font, exportable as vectors</li>
    <li>trims to split lines and curves where they intersect</li>
    <li>tangent arcs, to fillet lines and curves</li>
    <li>line styles for stroke color, stroke width, fill color</li>
    <li>adjustable snap grid, for entities and text</li>
    <li>menu item, keyboard shortcut, or toolbar</li>
    <li>cut and paste, in plane and from workplane to workplane</li>
    <li>background image with specified scale, for ease of tracing</li>
    <li>3Dconnexion six degree of freedom controllers</li>
</ul>
</div>

<div class="featureblock">
<p><b>Constraints and dimensions on</b></p>
<ul>
    <li>distance (or line length), point-line distance, diameter</li>
    <li>projected distance, along a line or vector</li>
    <li>angle, curve-to-curve tangency, parallel, perpendicular</li>
    <li>horizontal, vertical</li>
    <li>equal length, equal angle, equal radius, length ratio</li>
    <li>line length equals arc length</li>
    <li>point on line, point on circle, point on point, point on face</li>
    <li>point at midpoint of line, line's midpoint on plane</li>
    <li>points (or line) symmetric about line or plane</li>
    <li>2d (projected into specified plane) and 3d geometry</li>
    <li>lengths in metric or inch units</li>
    <li>lengths entered as arithmetic expressions (32.6 + 5/25.4)</li>
</ul>
</div>

<div class="featureblock">
<p><b>Build solid model with</b></p>
<ul>
    <li>extruded or lathed (solid of revolution) sketch</li>
    <li>Boolean operations: union (add material), difference (remove material)</li>
    <li>parametric step and repeat (pattern), rotating or translating</li>
    <li>operations performed on either meshes or NURBS surfaces</li>
</ul>
</div>

<div class="featureblock">
<p><b>Parametric and associative assembly</b></p>
<ul>
    <li>import parts and drag them with six degrees of freedom</li>
    <li>import mirrored or with arbitrary scale</li>
    <li>place parts in assembly using constraints</li>
    <li>import surfaces, and merge them using Boolean operations</li>
    <li>import lines and curves, for 2d work or solid operations later</li>
    <li>changes in parts propagate automatically into assembly</li>
</ul>
</div>

<div class="featureblock">
<p><b>Analyze with</b></p>
<ul>
    <li>measurements on a part or assembly (of
        point coordinates, line length, 
        point-point distance, point-face distance, projected distance,
        face-face angle, point-line distance)</li>

    <li>path traced by mechanism, exportable into a spreadsheet</li>
    <li>area of a plane sketch, volume of a solid shell</li>
    <li>degrees-of-freedom check to show unconstrained points in sketch</li>
    <li>interference check for assemblies</li>
    <li>"STL check" (vertex-to-vertex and not self-intersecting) for mesh</li>
</ul>
</div>

<div class="featureblock">
<p><b>Export</b></p>
<ul>
    <li>2d vector drawing as DXF, EPS, PDF, SVG, HPGL, STEP</li>
    <li>toolpath as G code</li>
    <li>as either piecewise linear segments or exact curves</li>
    <li>wireframe model, hidden-line removed model, vector shaded surfaces</li>
    <li>isometric view, orthogonal view, user-specified other view</li>
    <li>section of solid model</li>
    <li>with cutter radius compensation</li>
    <li>with adjustable canvas size</li>
    <li>3d wireframe as DXF, STEP</li>
    <li>triangle mesh as STL, Wavefront OBJ</li>
    <li>NURBS surfaces as STEP</li>
    <li>shaded view as bitmap</li>
</ul>
</div>

EOT
);
