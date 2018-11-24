#!/usr/bin/perl

use TEMPL;
TEMPL::Init();

$TEMPL::TITLE = 'SolveSpace - Contact';
$TEMPL::ADD_TO_BODY = 'onload="fixEmail()"';

TEMPL::OutputWithHeader("CONTACT", <<EOT

<p>SolveSpace was developed by
<a href="http://cq.cx/">Jonathan Westhues</a>. I can be reached at:</p>

<blockquote>
    <span id="emailheader">
        <a href="mailto:jwesthues-pleaseremove\@nospam-cq.cx">
            jwesthues-pleaseremove\@nospam-cq.cx
        </a>
    </span>
</blockquote>

<p>SolveSpace is now maintained by
<a href="https://whitequark.org/">whitequark</a> and others through
<a href="https://m-labs.hk/">M-Labs Limited</a>.</p>

<p>Bug reports and feature requests may be posted to the
<a href="https://github.com/solvespace/solvespace/issues">issue tracker</a>.

<p>For commercial support and licensing, please contact:</p>

<blockquote>
    <span id="emailheader">
        <a href="mailto:support\@solvespace.com">
            support\@solvespace.com
        </a>
    </span>
</blockquote>


EOT
);
