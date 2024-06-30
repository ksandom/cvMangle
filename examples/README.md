# Examples

## Variants

These get placed in each example by `rebuildExample`.

There are several example variants. So here is a general guide:

* HardCoded: The variant explicitly includes everything it needs, exactly how it dictates. There is nothing intelligent happening here. This is great for learning the basic concepts, but you should definitely move on to at least the Dynamic layouts.
* Dynamic: Uses commands line forEach to abstract content away from formatting.
* Layout: Any dynamic variant can be used as a layout. If you have filteredIncludes in the layout that you include, you can configure it here. You can also rapidly change the layout without having to copy-and-paste your changes.

## Example1

This is built/updated by running `./util/rebuildExample` in the repo's root directory.
