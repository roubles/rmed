# Rouble's Most Excellent (Git) Difftool

I am not going to lie to you, this may just be the best simple git difftool. 

I know what you are thinking, why do we need another git difftool? Well, I was looking for a simple, lightweight, portable side by side git difftool. I wanted to generate diffs in my local repo and share them with my team without actually merging or pushing my changes.

rmed does that. It relies heavily on bash, sed, vim, and obviously Git. It takes the same parameters as 'git diff'. It generates a file list: ![alt tag](https://raw.githubusercontent.com/roubles/rmed/master/doc/filelist.jpg)

Each filename is a link to side by side diffs: ![alt tag](https://raw.githubusercontent.com/roubles/rmed/master/doc/diffs.jpg)

The diffs are in a github colorscheme. rmed also generates text diffs, to make patching easier.



