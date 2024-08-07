<!-- Copyright (C) 2023  Kevin Sandom -->
# cvMangle

Make multiple versions of your CV in markdown.

## Install

```
./install/linkedInstall.sh
```

Read full [install](https://github.com/ksandom/cvMangle/blob/main/doc/howTo/install.md)/[uninstall](https://github.com/ksandom/cvMangle/blob/main/doc/howTo/uninstall.md) documentation.

## Using it

1. First time set up.
    1. Initialise the directory structure with `cvGenerateBase` .
    1. Run `cvSetWho "Your Name"` so that your name will get filled in in the appropriate places.
1. Run `cv` to generate PDFs based on the example data.
1. Modify files in `cvData/src` to change the contents.
1. Modify the variants in `cvData/variant` to change which versions of each section gets included in each variant, and in what order. Use `cvList src` to see possible entries.
1. Re-run `cv` to generate fresh PDFs with the current state.

Read full [using it](https://github.com/ksandom/cvMangle/blob/main/doc/usingIt.md) documentation.

## Requirements

| Dependency | OpenSUSE package |
| --- | --- |
| pandoc | pandoc-cli |
| xelatex | texlive-latex |
| texlive-fontsize | texlive-fontsize |
| texlive-lastpage | texlive-lastpage |

These will slowly start to be automated in `./install/installDeps.sh`.

Pull requests adding packages for other distributions welcome.

Read more: [Where it works](https://github.com/ksandom/cvMangle/blob/main/doc/whereItWorks.md).

## Experimenting with the examples

```
cd examples
cv
```

You'll get some PDF files appear in `examples/` .

## For devs working with the example in the repo tree

**NOTE:** If you are wanting to update any of the `src` or `variant` files in the [examples/example1/cvData](https://github.com/ksandom/cvMangle/tree/main/examples/example1/cvData), be sure to update them in the correct place, and then run `./util/rebuildExample` to refresh the examples directory.

| Destination | Where to edit it |
| --- | --- |
| [examples/example1/cvData/src](https://github.com/ksandom/cvMangle/tree/main/examples/example1/cvData/src) | [template](https://github.com/ksandom/cvMangle/tree/main/template) |
| [examples/example1/cvData/variant](https://github.com/ksandom/cvMangle/tree/main/examples/example1/cvData/variant) | [examples/variant](https://github.com/ksandom/cvMangle/tree/main/examples/variant) |
