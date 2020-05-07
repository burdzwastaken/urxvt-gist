# urxvt-gist
Automatic GitHub Gist uploads for selections in URxvt

This is an URxvt extension that uploads the selection as a GitHub Gist. It
currently requires the use of an oauth token stored in your
.Xdefaults/.Xresources.

The current name of the file upload is the hex encoded md5 sum of the
selection, so the same content should lead to the same Gist. Currently this
extension does not support PATCHing an existing Gist as selection checksum with
be different however it is something that maybe explored in the future.

**Note to xrdb users:** xrdb uses the C preprocessor, which might interpret
the double `/` characters as comment start. Use `<\057\057>` instead,
which works regardless of whether xrdb is used to parse the resource file
or not.

GitHub Gist API spec: https://developer.github.com/v3/gists/#create-a-gist

## Installation
Simply place this scripts in `/usr/lib/urxvt/perl/` for system-wide availability
or in `~/.urxvt/ext/` for user-only availability. You can also put them in a
folder of your choice, but then you have to add this line to your
`.Xdefaults`/`.Xresources`:
```
    URxvt.perl-lib: /your/folder/
```

See the following sections for information on how to enable the scripts or set
script-specific options and keyboard mappings in your `.Xdefaults`/`.Xresources`.

## Configuration
After installing, put the following lines in your `.Xdefaults`/`.Xresources`:
```
    URxvt.perl-ext-common: ...,urxvt-gist
    URxvt.keysym.C-M-e: perl:urxvt-gist
```

Options:
```
    URxvt.urxvt-gist.token: GitHub oauth token. (required)
    URxvt.urxvt-gist.api: GitHub Gist API to target. default: `https://api.github.com/gists` (optional)
    URxvt.urxvt-gist.public: should the created Gist be public? default: `0` (optional)
```
