<!-- Copyright (C) 2023  Kevin Sandom -->
# Make sections of small text

It's really easy. This is best done inside a [block](https://github.com/ksandom/cvMangle/blob/main/doc/howTo/nonBreakingBlocks.md), or [column](https://github.com/ksandom/cvMangle/blob/main/doc/howTo/columns.md) so that only a small section is smaller.

Please consider carefully when to use this. It should be used very sparingly, in places that don't require active reading. Eg a list of 1-word skills associated with a job.

## What you need

You need

* Beginning of a logical block, or column.
* `small` to begin the small text.
* Content to be smaller.
* End of logical block, or column.

## Example

```markdown
Some normal text.

<!-- do include src/util/blockBegin.md -->

Some normal text.

<!-- do include src/util/small.md -->

This text will be smaller.

<!-- do include src/util/blockEnd.md -->
```

Some normal text.
