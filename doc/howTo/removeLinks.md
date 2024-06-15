# How to remove links

Sometimes there is a need to remove the hyperlinks in a document (eg you want to colourise the document, but the links will mask that), but it makes sense to keep the links in the original document (eg you want to use the links in another context, or another variant.).

[noLinks](https://github.com/ksandom/cvMangle/blob/main/doc/usingIt.md#nolinks) is a way to strip out links from the output of a given command at compile time, while leaving everything else intact.

## How?

Here is a line from my jobHistory layout. For each job, it includes `skills-communication.md` file from that job (`~!context!~`), and applies the `skills` filter to it.

```
<!-- do filteredIncludeToList skills ~!context!~/skills-communication.md -->
```

This line does all of that. But then it strips the links from output of that.

```
<!-- do noLinks filteredIncludeToList skills ~!context!~/skills-communication.md -->
```
