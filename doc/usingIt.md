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

## cvMangle commands

### include

Insert another file into the output as if it's contents existed at the point in the file where the `include` command is present.

Syntax

```html
<!-- do include relative/path/to/file/from/cvData/file.md -->
```

Eg

```html
<!-- do include src/intro/longIntro.md -->
```

To find things that you can include, run

```
cvList src
```

### forEach

Loop over a directory of directories that contain the content that you want to include. This is useful for formatting the same data in different ways.

Syntax

```html
<!-- do forEach relative/path/to/directory/of/directories include relative/path/to/file/from/cvData/file.md -->
```

Or more concisely

```html
<!-- do forEach directoryOfdirectories include file.md -->
```

Let's work through an example. Here is a portion of the examples directory structure:

```
$ find -type f | sort | grep '\(src\|var\).*\(job[12]\|ynamic\)'
./cvData/src/jobHistory/dynamicFull.md
./cvData/src/jobHistory/dynamicNoCompanyDescription.md
./cvData/src/jobHistory/dynamicNoDescriptions.md

./cvData/src/jobHistory/jobs/job1/companyDescription.md
./cvData/src/jobHistory/jobs/job1/jobHeading.md
./cvData/src/jobHistory/jobs/job1/responsibilitiesHeading.md
./cvData/src/jobHistory/jobs/job1/responsibilities.md
./cvData/src/jobHistory/jobs/job1/roleDescription.md
./cvData/src/jobHistory/jobs/job1/skillsHeading.md
./cvData/src/jobHistory/jobs/job1/skills.md
./cvData/src/jobHistory/jobs/job2/companyDescription.md
./cvData/src/jobHistory/jobs/job2/jobHeading.md
./cvData/src/jobHistory/jobs/job2/responsibilitiesHeading.md
./cvData/src/jobHistory/jobs/job2/responsibilities.md
./cvData/src/jobHistory/jobs/job2/roleDescription.md
./cvData/src/jobHistory/jobs/job2/skillsHeading.md
./cvData/src/jobHistory/jobs/job2/skills.md

./cvData/variant/exampleFullDynamic.md
./cvData/variant/exampleFullDynamicNoDescriptions.md
```

There are 3 sections of interest here:

1. The files directly in the jobHistory directory like dynamicFull.md and dynamicNoCompanyDescription.md.
1. The directories of files, job1 and job2, inside the jobs directory.
1. The files inside the variant directory.

Let's start with the variant directory:

./cvData/variant/exampleFullDynamic.md

```html
<!-- # This is the full variant, with all of the luxury bells and whistles. -->
<!-- do include src/header/exampleHeaderWithoutCols.md -->
<!-- do include src/intro/longIntro.md -->
<!-- do include src/util/pageBreak.md -->
<!-- do forEach src/jobHistory/jobs include src/jobHistory/dynamicFull.md -->
<!-- do include src/util/pageBreak.md -->
<!-- do include src/keySkills/exampleKeySkills.md -->
```

and

./cvData/variant/exampleFullDynamicNoDescriptions.md

```html
<!-- # This is the full variant, with all of the luxury bells and whistles. -->
<!-- do include src/header/exampleHeaderWithoutCols.md -->
<!-- do include src/intro/longIntro.md -->
<!-- do include src/util/pageBreak.md -->
<!-- do forEach src/jobHistory/jobs include src/jobHistory/dynamicNoDescriptions.md -->
<!-- do include src/util/pageBreak.md -->
<!-- do include src/keySkills/exampleKeySkills.md -->
```

The only difference between the two files is the forEach line, which says which file to include. Both are using the same jobs directory. So the only difference in those lines is `src/jobHistory/dynamicFull.md` vs `src/jobHistory/dynamicNoDescriptions.md`. So let's look at those:

src/jobHistory/dynamicFull.md:

```html
<!-- do include ~!context!~/jobHeading.md -->
<!-- do include ~!context!~/companyDescription.md -->
<!-- do include ~!context!~/roleDescription.md -->
<!-- do include ~!context!~/responsibilitiesHeading.md -->
<!-- do include ~!context!~/responsibilities.md -->
<!-- do include ~!context!~/skillsHeading.md -->
<!-- do include ~!context!~/skills.md -->
```

src/jobHistory/dynamicNoDescriptions.md:

```html
<!-- do include ~!context!~/jobHeading.md -->
<!-- do include ~!context!~/responsibilitiesHeading.md -->
<!-- do include ~!context!~/responsibilities.md -->
<!-- do include ~!context!~/skillsHeading.md -->
<!-- do include ~!context!~/skills.md -->
```

In both cases, they have `~!context!~`, which resolves to the current item within the jobs directory. Eg `jobs`, or `jobs2`.

So as we iterate over each directory within the jobs directory, we include a few files. How many, depends on which file we told the forEach to include.