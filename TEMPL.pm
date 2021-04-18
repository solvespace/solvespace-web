
package TEMPL;

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

    (-r $file) or return "";

    my $img = GD::Image->new($file);
    defined($img) or return "";

    my ($width, $height) = $img->getBounds();

    return qq|width="$width" height="$height"|;
}

sub Init {
    $TITLE = 'SolveSpace';
    $ADD_TO_HEAD = '';
    $ADD_TO_BODY = '';
    $VERSION = undef;
    $SHOW_VERSION = undef;
    $DYNAMIC = 0;

    if(defined $ENV{'HTML'}) {
        $HTML = 1;
        $PL = 'html';
    } else {
        $HTML = 0;
        $PL = 'pl';
    }
    $VERSION = '';
    if(defined $ENV{'VERSION'}) {
        $VERSION = $ENV{'VERSION'};
    }

    $sp = "&nbsp;" x 20;
    $sp2 = "&nbsp;" x 4;
    $SEP = qq{<p style="text-align: center;">*$sp*$sp*$sp2</p>};
}

sub MakeTemplate {
    @TOC = (
        [ 'Examples',   "examples",   0 ],
        [ 'Tutorials',  "tutorial",   0 ],
        [ 'Features',   "features",   0 ],
        [ 'Download',   "download",   0 ],
        [ 'Reference',  "ref",        0 ],
        [ 'Technology', "tech",       0 ],
        [ 'Library',    "library",    0 ],
        [ 'Forum',      "forum",      0 ],
        [ 'Contact',    "contact",    0 ],
    );
    $TOC = '';
    for (@TOC) {
        my ($title, $link, $where) = @{ $_ };
    
        if($where and not($0 =~/tutorial|bracket/)) {
            next;
        }
        $toc = $where ? "tocsub" : "toc";
    
        if($0 =~ /$link\.pl$/) {
            $TOC .= qq#
                <div class="$toc">
                    $title
                </div>
            #;
        } else {
            $TOC .= qq#
                <div class="$toc">
                    <a class="toc" href="$link.$PL">$title</a>
                </div>
            #;
        }
    }
    
    $TOP = qq|
<!DOCTYPE html>

<head>
<title>$TITLE</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript" src="support.js"></script>
$ADD_TO_HEAD
</head>

<body $ADD_TO_BODY>
|;
    
    $BOTTOM = qq|
<div class="copyouter">
<div class="copyfooter">
&copy; 2008-2021 SolveSpace contributors. Most recent update Apr 18 2021.
</div>
</div>
</body>
|;
}

sub OutputWithHeader {
    my ($title, $text) = @_;
    MakeTemplate();

    $version = '';
    if(defined $SHOW_VERSION && defined $VERSION && $HTML) {
        $version = qq|<span class="version"> (for $VERSION)</span>|;
    }

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
    <div class="subtitle">$title$version</div>
    $text
</div>
|);
}


sub Output {
    my ($str) = @_;
    MakeTemplate();

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

    if(!$HTML) {
        if($DYNAMIC) {
            print "Cache-Control: private, no-cache\r\n";
        } else {
            print "Cache-Control: public, max-age=3000\r\n";
        }
        print "Content-Type: text/html; charset=utf-8\r\n\r\n";
    }
    print $TOP . $str . $BOTTOM;
}

1;
