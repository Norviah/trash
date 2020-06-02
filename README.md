# Trash

The proper way to delete files on OS X systems. Trash uses Finder to delete items, rather than simply moving items to the trash can, this allows Finder to perform tasks in the back ground revolving around `.DS_Store`, which stores information about the original location of a file before deleting it, which allows you to restore the item if wanted.

In addition, Trash also comes with a few optional flags. Note Trash parses flags *after* deleting items, if any were given.

`-e, --empty`

If this flag is given, Trash will recycle all items in your trash can, but will ask for confirmation before continuing.

`-y, --yes`

If this flag is given, Trash will skip the confirmation prompt for the `--empty` flag.

`-l, --list`

If this flag is given, Trash will list all items in your trash can, by using `ls -a`.

## Installing

You can install Trash via [brew](https://brew.sh)

`brew install norviah/formulae/trash`
