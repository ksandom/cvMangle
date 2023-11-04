# cvMangle

Make multiple versions of your CV in markdown.

## Install

```
./install/linkedInstall.sh
```

## Using it

1. First time set up.
    1. Initialise the directory structure with `cvGenerateBase` .
    1. Run `cvSetWho "Your Name"` so that your name will get filled in in the appropriate places.
1. Run `cv` to generate PDFs based on the example data.
1. Modify files in `cvData/src` to change the contents.
1. Change the the symlinks in `cvData/variant` to change the order, and which items get included in each variant.
1. Re-run `cv` to generate fresh PDFs with the current state.

## Requirements

* pandoc

## Working with the example

```
cd examples
cv
```

**NOTE:** If you are wanting to update any of the `src` files in the examples directory, be sure to update them in the `template` directory, and then run `./util/rebuildExample` to refresh the examples directory.
