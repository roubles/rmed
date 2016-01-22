# Rouble's Most Excellent (Git) Difftool

I am not going to lie to you, this just may be the most excellent git difftool. 

I know what you are thinking, why do we need another git difftool? Well, I was looking for a simple, lightweight, portable side by side git difftool. I wanted to generate diffs in my local repo and share them with my team without actually merging or pushing my changes.

rmed does that. It relies heavily on bash, sed, vim, and obviously git, so it is theoretically very portable. It's just a wrapper around 'git diff', so it takes the same arguments as 'git diff'. 

To install, just clone the repo, and run ../install.sh. Tada!

When run, it generates diffs, and launches a browser to the file list (obligatory screenshot): ![alt tag](https://raw.githubusercontent.com/roubles/rmed/master/doc/filelist.jpg)

And for textual files, it generates side by side diffs (hat tip to vim): ![alt tag](https://raw.githubusercontent.com/roubles/rmed/master/doc/diffs.jpg)

## Sailent Features
* Uses very portable tools. (This may be a lie, sed is notoriously unportable).
* Takes the same command line arguments as 'git diff'
* Generates text diffs for each individual file and full text diffs
* Generates side by side color diffs for all text files using a github colorscheme. Well, as close as I could get the colorscheme.
* Works out of the box of OSX and many, dare I say, all, linuxes. Don't own a windows machine anymore - can't test there.

## About the diffs
rmed generates simple html diffs in a date delimited temporary folder. By default the diffs would fall into /tmp/rmed/<user>/<repo>/2016-01-22T19:23:30Z/diffs on the host machine. This folder structure provides good tracability of the repo and the time of the diffs.

You can change the folder location, and dump the diffs in a commonly mounted location, or into a location that is served by a webserver - to make the diffs easily shareable. See --diff-directory.

## Usage
You should just be able to run:
```
$ rmed <your git diff options>
```

But there are some rmed specifc command line arguments:
```
$ rmed --help
usage: rmed [--diff-directory /path/to/some/folder] [--no-launch-broswer] [--rmed-help] <regular git diff parameters>

       rmed is a simple wrapper around git diff. Invoke rmed with the same parameters that you would invoke git diff.

       --diff-directory    :    By default, rmed stores diffs in a temp location. This setting will override that.
       --no-launch-broswer :    By default, rmed will try to launch a browser with your diffs. This argument reverses 
                                that behavior.
       --no-date           :    Don't add the current date in the diff path.
       --http-base-url     :    If your --diff-directory is web accessible, rmed can display the full path to the diffs
                                when the base http url is specified.
       --help              :    Display this help text.

More info here: https://github.com/roubles/rmed

```

## Installation
```
$ git clone https://github.com/roubles/rmed.git
$ cd rmed
$ sudo ./install.sh
```

## Custom Directory Installation
```
$ git clone https://github.com/roubles/rmed.git
$ cd rmed
$ sudo ./install.sh --prefix /path/to/my/location
```

## Uninstall
```
$ cd rmed
$ sudo ./uninstall.sh
```

## Custom Directory Uninstall
```
$ cd rmed
$ sudo ./uninstall.sh --prefix /path/to/my/location
```
