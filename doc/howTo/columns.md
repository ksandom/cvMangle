# Adding columns to your CV

It's really easy. You can put them anywhere where you can put includes.

## What you need

You need

* `colBegin` to begin a section that is divided into columns.
* Declare a column. Eg `col33` for a column with a width of 33%.
* `colNext` to finish that column.
* Declare another column. Eg `col66` for a column with a width of 66%.
* `colEnd` to finish the current column, and the column section.

## Example

### Example 1 - 2 uneven columns

```markdown
<!-- do include src/util/colBegin.md -->
<!-- do include src/util/col80.md -->

Text in the 80% column.

<!-- do include src/util/colNext.md -->
<!-- do include src/util/col20.md -->

Text in the 20% column.

<!-- do include src/util/colEnd.md -->
```

### Example 2 - 3 even

```markdown
<!-- do include src/util/colBegin.md -->
<!-- do include src/util/col33.md -->

Text in the first 33% column.

<!-- do include src/util/colNext.md -->
<!-- do include src/util/col33.md -->

Text in the second 33% column.

<!-- do include src/util/colNext.md -->
<!-- do include src/util/col33.md -->

Text in the third 33% column.

<!-- do include src/util/colEnd.md -->
```
