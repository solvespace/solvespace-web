#!/usr/bin/perl

$TITLE = 'SolveSpace - Contact';
$ADD_TO_BODY = 'onload="fixemail()"';

require TEMPL;

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
