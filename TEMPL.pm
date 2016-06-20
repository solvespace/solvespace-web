
package TEMPL;

use CGI;
use GD;

sub SizeInfoForImage {
    my ($str) = @_;

    if($str =~ /shim/i) {
        return "";
    }

    unless($str =~ m#src=(\S+)#i) {
        return "";
    }
    my $file = $1;
    $file =~ s/"//g;
    $file =~ s#.*/##;
    $file = "pics/$file";

    my $img = GD::Image->new($file);
    defined($img) or return "";

    my ($width, $height) = $img->getBounds();

    return "width=$width height=$height";
}

if(defined $ENV{'HTML'}) {
    $PL = 'html';
} else {
    $PL = 'pl';
}

@TOC = (
    [ 'Examples',   "examples.$PL",   0 ],
    [ 'Tutorials',  "tutorial.$PL",   0 ],
    [ 'Features',   "features.$PL",   0 ],
    [ 'Download',   "download.$PL",   0 ],
    [ 'Reference',  "ref.$PL",        0 ],
    [ 'Technology', "tech.$PL",       0 ],
    [ 'Library',    "library.$PL",    0 ],
    [ 'Forum',      "forum.$PL",      0 ],
    [ 'Contact',    "contact.$PL",    0 ],
);
$TOC = '';
for (@TOC) {
    my ($title, $link, $where) = @{ $_ };

    if($where and not($0 =~/tutorial|bracket/)) {
        next;
    }
    $toc = $where ? "tocsub" : "toc";

    if($0 =~ /$link$/) {
        $TOC .= qq#
            <div class="$toc">
                $title
            </div>
        #;
    } else {
        $TOC .= qq#
            <div class="$toc">
                <a class="toc" href="$link">$title</a>
            </div>
        #;
    }
}

$sp = "&nbsp;" x 20;
$sp2 = "&nbsp;" x 4;
$SEP = qq{<p style="text-align: center;">*$sp*$sp*$sp2</p>};


$TOP = qq|
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<head>
    <title>$main::TITLE</title>
    <script type=text/javascript>
        <!--
            function fixemail()
            {
                document.getElementById('emailheader').innerHTML =
                '<a href="mailto:' +
                String.fromCharCode(210/2 + 1) +
                'westhues\@cq.cx">' +
                String.fromCharCode(210/2 + 1) +
                'westhues\@cq.cx</a>';
            }
        -->
    </script>

    <style type="text/css">
        body {
            font-family: Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: white;
            font-size: 17px;
        }

        h2 {
            margin: 2em 0 0 0;
            font-size: 118%; font-weight: bold;
        }
        h3 {
            margin: 1.5em 0 0 0;
            font-size: 100%; font-weight: bold;
        }
        div.refind {
            margin: 0; padding: 0 0 0 1.5em;
            width: 38em;
        }
        table.showtab { padding: 0 0 0 1em; }
        td {
            vertical-align: top;
            padding: 0 0.5em 0 0.5em;
            margin: 0;
        }
        tr { padding: 0; }
        td.showleft { font-weight: bold; width: 7.5em; }
        form { margin:0; padding; 0;}

        div.header {
            padding: 2em 2em 1.5em 2em;
        }
        span.header_big { font-size: 230%; letter-spacing: 0.25em; }
        span.header_little { font-size: 140%; letter-spacing: 0.17em; }

        div.tocbox {
            float: left;
            margin: 0 0 0 3em;
            padding: 0.5em 1em 0.5em 1em;
            width: 7em;
            background: #dfdfdf;
        }
        div.toc { padding: 0.5em 1em 0.5em 0.3em;
            font-size: 110%; }
        div.tocsub { padding: 0.3em 1em 0.8em 1.8em;
            font-size: 110%; }

        a {
            text-decoration: none;
            color: #00b;
        }
        a.toc {
        }
        a:hover { color: red; }

        a.header_big { color: black; }
        a.header_big:hover { color: black; }

        div.vspace {
            padding: 5em 0 0 0;
        }
        div.forex {
            margin: 0;
            padding: 0.6em 0 0.6em 0em;
        }
        div.forimg {
            margin: 0;
            padding: 0 0 0 1.5em;
        }
        img.tut {
            border-width: 0;
        }
        div.tut {
            padding: 2em 0 2em 0;
        }
        div.tutcap {
            padding: 0.2em 0 0 0;
            width: 620px;
        }
        div.featureblock {
            padding: 0 0 0.2em 0;
        }

        div.movie {
            float: left;
            width: 43em;
            padding: 2em 0em 1em 2.5em;
        }

        div.main {
            width: 43em;
            float: left;
            padding: 2em 0 0em 2em;
        }
        div.subtitle {
            font-size: 150%;
            letter-spacing: 0.1em;
            font-weight: bold;
            color: #112;
            margin-bottom: 1.5em;
        }

        div.footer {
            clear: both;
            width: 40em;
            padding: 1em 3em 3em 7em;
        }
        p {
            margin: 1em 0em 1em 0em;
        }

        div.copyouter {
            padding: 3em 3em 2em 4em;
            clear:both;
        }
        div.copyfooter {
            font-size: 80%;
            padding: 1em 0 0 2em;
            border-top: solid;
            border-width: 1px;
            border-color: #333;
            width: 65em;
        }

        div.list {
            width: 34em;
        }
        ul {
            list-style-type: disc;
            margin: 0;
            padding: 0em 0em 0em 3em;
        }
        li {
            padding: 0;
            margin: 0.6em 0 0.6em 0;
        }
        table.dltab td, table.dltab th {
            border: 1px solid black;
            padding: 2px 8px; margin: 0;
        }
        table.dltab {
            border-spacing: 0;
            border-collapse: collapse;
            margin-left: 20px;
        }
    </style>
$main::ADD_TO_HEAD
</head>

<body $main::ADD_TO_BODY>
|;

$BOTTOM = qq|
<div class="copyouter">
<div class="copyfooter">
    &copy; 2008-2016 Jonathan Westhues and contributors. Most recent update June 11 2016.
</div>
</div>
</body>
|;

sub OutputWithHeader {
    my ($title, $text) = @_;

    Output(qq|
<div class="header">
    <a class="header_big" href="index.$PL">
        <span class="header_big">SOLVESPACE</span>
        <span class="header_little"> -- parametric 2d/3d CAD</span>
    </a>
</div>

<div class="tocbox">
    $TEMPL::TOC
</div>
<div class="main">
    <div class="subtitle">$title</div>
    $text
</div>
|);
}


sub Output {
    my ($str) = @_;

    $str =~ s[<(\s*img[^>]+)>][
        sub {
            my $v = $1;
            $v =~ s#/\s*$##;
            if($v =~ /(width|height)\s*=/i) {
                return "<$v>";
            } else {
                $extra = SizeInfoForImage($v);
                return "<$v $extra>";
            }
        }->();
        ]iseg;

    print CGI::header();
    print $TOP . $str . $BOTTOM;
}

1;
