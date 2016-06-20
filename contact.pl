#!/usr/bin/perl

$TITLE = 'SolveSpace - Contact';
$ADD_TO_BODY = 'onload="fixemail()"';

require TEMPL;

TEMPL::OutputWithHeader("CONTACT", <<EOT

<p>SolveSpace is developed by
<a href="http://cq.cx/">Jonathan Westhues</a> and others.</p>

<p>I can be reached at:</p>

<blockquote>
    <span id="emailheader">
        <a href="mailto:jwesthues-pleaseremove\@nospma-cq.cx">
            jwesthues-pleaseremove\@nospma-cq.cx
        </a>
    </span>
</blockquote>


EOT
);
