#!/usr/bin/perl

use TEMPL;
TEMPL::Init();

$TEMPL::TITLE = 'SolveSpace - Contact';
$TEMPL::ADD_TO_BODY = 'onload="fixEmail()"';

TEMPL::OutputWithHeader("CONTACT", <<EOT

<p>SolveSpace was developed by:</p>
<ul>
<li><a href="http://cq.cx/">Jonathan Westhues</a> - original release 2.0</li>
<li><a href="https://whitequark.org/">whitequark</a> - maintainer, 2015-2020</li>
<li>Paul Kahler - maintainer, 2020-</li>
</ul>
<p>and many others.</p>

<p>If you have a question, please post it on the
<a href="forum.pl">forum</a>.</p>

<p>Bug reports and feature requests may be posted to the
<a href="https://github.com/solvespace/solvespace/issues">issue tracker</a>.

<!-- <p>For commercial support and licensing, please contact:</p>

<blockquote>
    <span>
        <a href="mailto:support\@solvespace.com">
            support\@solvespace.com
        </a>
    </span>
</blockquote> -->


EOT
);
