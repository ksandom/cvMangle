# Using cvMangle

## Overview

1. First time set up.
    1. Initialise the directory structure with `cvGenerateBase` .
    1. Run `cvSetWho "Your Name"` so that your name will get filled in in the appropriate places.
1. Run `cv` to generate PDFs based on the example data.
1. Modify files in `cvData/src` to change the contents.
1. Modify the variants in `cvData/variant` to change which versions of each section gets included in each variant, and in what order. Use `cvList src` to see possible entries.
1. Re-run `cv` to generate fresh PDFs with the current state.

## Variants syntax

The variants files are markdown, but with the ability to run commands:

```html
<!-- do command parameter1 parameter2 parameter3 etc -->
<!-- This is a normal comment that will make it through to the final document. -->
<!-- # This is a comment that will **not** make it through to the final document. -->
```

## cvMangle commands

### include

Syntax

```html
<!-- do include relative/path/to/file/from/cvData.md -->
```

Eg

```html
<!-- do include src/intro/longIntro.md -->
```

To find things that you can include, run

```
cvList src
```

## Example file

Here's one of the examples:

```html
<!-- # Let's get to the point quickly and in as little space as possible. -->
<!-- do include src/header/exampleHeaderWithoutCols.md -->
<!-- do include src/intro/quickIntro.md -->
<!-- do include src/keySkills/exampleKeySkills.md -->
<!-- do include src/util/pageBreak.md -->
<!-- do include src/jobHistory/exampleRecentJobHistory.md -->
```

The first line begins with `<!-- #`, so it is a comment that will not go through to the final document.

The remaining lines are all includes. Note that the relative path begins at `src`, which is directly inside of cvData.
