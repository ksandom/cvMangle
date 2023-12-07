# cvSyncSet

Used to make sure that

* every item in a set of directories has has all of the files from _template, without overwriting existing files.
* there are no extra files in any item that is not already present in the _template.

This is useful for quickly adding, or removing details across all of the jobs in a way that is easy to keep everything matching without errors.

This is expected to be run from within the set directory.

## Usage

* `cd` into the set directory.
* Make a change in _template.
* `cvSyncSet` that change across the set.

## Example

Let's create a new file in _template.

```
$ touch _template/example.md
```

Now, we'll sync it across all of the jobs.

```
$ cvSyncSet
job1
'../_template/example.md' -> './example.md'
job2
'../_template/example.md' -> './example.md'
job3
'../_template/example.md' -> './example.md'
job4
'../_template/example.md' -> './example.md'
```

Actually, we don't want it. Let's delete it.

```
$ rm _template/example.md
```

And now we'll sync that change across all of the jobs.

```
$ cvSyncSet
job1
renamed 'example.md' -> 'exclude/example.md'
job2
renamed 'example.md' -> 'exclude/example.md'
job3
renamed 'example.md' -> 'exclude/example.md'
job4
renamed 'example.md' -> 'exclude/example.md'
```

Notice how the obsolete file has been moved into `exclude`? This is so that you don't accidentally delete all of your work.

Once you're happy that you don't need anything in the exclude directories, you can get rid of them like this.

```
$ rm -Rf */exclude

```
