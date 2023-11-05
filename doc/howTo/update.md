# Cleanly updating cvMangle

While updating, it's possible to get into a dirty state where symlinks are left behind. Luckily, it's really easy to prevent.

## Why

Uninstall, and install work by looking at the current state of the repo, and installing/uninstalling based on how it would currently be installed. If this has changed as the result of an update, there could be stuff left behind.

## Solution

When updating the cvMangle, follow this proceedure:

1. Uninstall.
1. Update the repo.
1. Install.

Eg for a linked install:

```
./install/linkedUnInstall.sh
git pull
./install/linkedInstall.sh
```

There is a convenient script to do this for you:

```
./install/linkedUpdate.sh
```

NOTE that the update part may not do what you expect if you want to change branch/tag as part of the update.
