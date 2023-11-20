<!-- Copyright (C) 2023  Kevin Sandom -->
# Make blocks that don't get split over 2 pages

It's really easy. You can put them anywhere where you can put includes.

## What you need

You need

* `blockBegin` to begin the block.
* Do stuff that you don't want to get broken.
* `blockEnd` to finish the block.

## Example

```markdown
<!-- do include src/util/blockBegin.md -->

## A heading within the block

Some text within the block.

This text should remain on the same page as the text above and the heading.

<!-- do include src/util/blockEnd.md -->
```
