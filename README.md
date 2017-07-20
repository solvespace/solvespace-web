SolveSpace's website
====================

This repository contains the source code of the official website of [SolveSpace], a parametric
2d/3d CAD.

[solvespace]: https://solvespace.com

Prerequisites
-------------

The templating engine that generates this website is written in Perl and requires
the `CGI` and `GD` modules.

### Linux

On Debian, Ubuntu, and compatible distributions the dependencies can be installed with:

    apt-get install perl-base libcgi-pm-perl libgd-gd2-perl

### macOS

When using Homebrew, the dependencies can be installed with:

    brew install perl libgd
    cpan install cgi gd

### Windows

On Windows 10, the dependencies can be installed using the Windows Subsystem for Linux,
by first installing [WSL] and then following the [steps for Linux](#linux).

On any version of Windows, the dependencies can be installed using [Cygwin]:

  * `git`
  * `make`
  * `perl`, `perl-CGI`, `perl-GD`

[wsl]: https://msdn.microsoft.com/en-us/commandline/wsl/install_guide
[cygwin]: https://cygwin.com/

Workflow
--------

Before you start, fork the `solvespace-web` repository and clone it into any convenient directory:

    git clone git@github.com:USERNAME/solvespace-web

Then, verify that the prerequisites are installed correctly by running `make`. If this command
succeeds, open the `html/index.html` file in your browser.

You can modify the website as follows:

  1. Change a `.pl` file to modify a page, or add an asset to `pics`, `vids` or `dl`;
  2. (Re)generate HTML for every page and copy assets by invoking `make`;
  3. Verify that the change is correct;
  4. Commit the change and send a pull request.

License
-------

TBD
