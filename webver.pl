#!/usr/bin/perl

use TEMPL;
TEMPL::Init();

$TEMPL::TITLE = 'SolveSpace - Experimental Web Version';

TEMPL::OutputWithHeader("EXPERIMENTAL WEB VERSION", <<EOT
<p>
SolveSpace is developed primarily as normal desktop software. It's
compact enough that it runs surprisingly well when compiled with
emscripten for the browser, though. There is some speed penalty and
there are many remaining bugs, but with smaller models the experience is
often highly usable.
</p>

<p>
In keeping with the experimental status of this target, the version
below is built from our latest development branch. You are likely to
encounter issues that don't exist in the
<a href="download.pl">normal desktop targets</a>, but
feel free to
<a href="https://github.com/solvespace/solvespace/issues">report</a>
bugs in the usual way.
</p>

<blockquote>
<b><a href="/webver/solvespace.html" target="_blank">START EXPERIMENTAL WEB VERSION</a></b>
</blockquote>

<p>
This web version has no network dependencies after loading. To host your
own copy,
<a href="https://github.com/solvespace/solvespace/#building-for-web-very-experimental">build</a>
and host the output like any other static web content.
</p>
EOT
);
