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
1. Modify the variants in `cvData/variant` to change which versions of each section gets included in each variant, and in what order. Use `cvList src` to see possible entries.
1. Re-run `cv` to generate fresh PDFs with the current state.

## Requirements

* pandoc

## For devs working with the example in the repo tree

```
cd examples
cv
```

**NOTE:** If you are wanting to update any of the `src` files in the examples directory, be sure to update them in the `template` directory, and then run `./util/rebuildExample` to refresh the examples directory.
