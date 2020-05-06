# urxvt-gist
Automatic GitHub Gist uploads for selections in URxvt

## Installation
Simply place this scripts in /usr/lib/urxvt/perl/ for system-wide availability
or in ~/.urxvt/ext/ for user-only availability.  You can also put them in a
folder of your choice, but then you have to add this line to your
.Xdefaults/.Xresources:
```
    URxvt.perl-lib: /your/folder/
```

See the following sections for information on how to enable the scripts or set
script-specific options and keyboard mappings in your .Xdefaults/.Xresources.

## Configuration

After installing, put the following lines in your .Xdefaults/.Xresources:
```
    URxvt.perl-ext-common: ...,urxvt-gist
    URxvt.keysym.M-Escape: perl:urxvt-gist
```

Options:
```
    URxvt.urxvt-gist.token: GitHub oauth token. (required)
    URxvt.urxvt-gist.api: GitHub Gist API to target. default: `https://api.github.com/gists` (optional)
    URxvt.urxvt-gist.allow-public: should the created Gist be public? default: `false` (optional)
```
