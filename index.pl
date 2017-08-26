#!/usr/bin/perl

$TITLE = 'SolveSpace - parametric 3d CAD';

require TEMPL;

TEMPL::Output(<<EOT
<div class="header">
    <span class="header_big">SOLVESPACE</span>
    <span class="header_little"> -- parametric 2d/3d CAD</span>
</div>

<div class="tocbox">
    $TEMPL::TOC
</div>

<div class="movie">
    <video preload="metadata" height="420" width="620"
           poster="pics/front-page-pic.png" onloadedmetadata="videoPrepare(this)">
        <source src="vids/demo.webm" type="video/webm">
        <source src="vids/demo.mp4" type="video/mp4" onerror="videoFallback(parentNode)">

        <!-- fall back to showing a picture and a download link -->
        <table cellpadding="0" cellspacing="0">
        <tr><td>
            <img src="pics/front-page-pic.png" width="548" height="410">
        </td></tr>
        <tr><td align="right">
            [<a href="vids/demo.mp4">download demo video</a>]
        </td></tr>
        </table>
    </video>
    <a class="playbutton" href="#" onclick="videoPlay(event)" style="display:none">
        demo video&nbsp;&nbsp;&nbsp;▶
    </a>
</div>

<div class="footer">

<p style="margin-top: 30px;">SOLVESPACE is a parametric 3d CAD program. Applications include:</p>
<div class="list">
<ul>
    <li><b>modeling 3d parts</b> &mdash;
        draw with extrudes, revolves, and Boolean
        (union / difference) operations</li>

    <li><b>modeling 2d parts</b> &mdash;
        draw the part as a single section, and
        export DXF, PDF, SVG; use 3d assembly to verify fit</li>

    <li><b>3d-printed parts</b> &mdash;
        export the STL or other triangle mesh expected by most
        3d printers</li>

    <li><b>preparing CAM data</b> &mdash;
        export 2d vector art for a waterjet
        machine or laser cutter; or generate STEP or STL, for import
        into third-party CAM software for machining</li>

    <li><b>mechanism design</b> &mdash;
        use the constraint solver to simulate
        planar or spatial linkages, with pin, ball, or slide joints</li>

    <li><b>plane and solid geometry</b> &mdash;
        replace hand-solved
        trigonometry and spreadsheets with a live dimensioned drawing</li>
</ul>
</div>

<p>Learn more about SolveSpace in the <a href="tutorial.$TEMPL::PL">tutorials</a>,
or  <a href="download.$TEMPL::PL">download</a> it now.</p>

</div>
EOT
)
;
