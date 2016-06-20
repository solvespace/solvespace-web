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
<table cellpadding=0 cellspacing=0>
<tr><td>
<!--
    <OBJECT id='mediaPlayer' width="620" height="420"
    classid='CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95'
    codebase='http://activex.microsoft.com/activex/controls/ mplayer/en/nsmp2inf.cab#Version=5,1,52,701'
    standby='Loading Microsoft Windows Media Player components...' type='application/x-oleobject'>
        <param name='fileName' value="vids/demo.wmv">
        <param name='animationatStart' value='1'>
        <param name='transparentatStart' value='1'>
        <param name='autoStart' value='1'>
        <param name='ShowControls' value='0'>
        <param name='ShowDisplay' value='0'>
        <param name='ShowStatusBar' value='0'>
        <param name='loop' value='1'>
        <EMBED type='application/x-mplayer2'
        pluginspage='http://microsoft.com/windows/mediaplayer/ en/download/'
        id='mediaPlayer' name='mediaPlayer' displaysize='4' autosize='0'
        bgcolor='darkblue' showcontrols='0' showtracker='1'
        showdisplay='0' showstatusbar='0' videoborder3d='0' width="620" height="420"
        src="vids/demo.wmv" autostart='1' designtimesp='5311' loop='1'>
        </EMBED>
    </OBJECT> -->
    <img src="pics/front-page-pic.png" />
</td></tr>
<tr><td align=right>
[<a href="vids/demo.wmv">download demo vid</a>]
</td></tr>
</table>
</div>

<div class="footer">
<p><b>Release 2.1 is <a href="download.$PL">available for download</a></b>, now with Linux and Mac support, and various new features; thanks to whitequark and associates.</p>

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

<p>Learn more about SolveSpace in the <a href="tutorial.$PL">tutorials</a>,
or  <a href="download.$PL">download</a> it now.</p>

</div>
EOT
)
;
