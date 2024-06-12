# How to send specific variants to custom destinations

Without doing anything, variants will be built in the current directory, and custom variants will be built in the custom directory.

But if you put a symlink to your desired directory within the `outs/` directory, and name it exactly the same as a specific variant, that variant will always be built in that destination directory.

## Why?

Example: In my build setup, I have a directory per job that I want to apply for. I want the built CV to go directly into that directory, and have old versions managed in there as well.

This will also work for normal variants. Although I haven't yet thought of a good use-case for that.

## How?

Let's find a [custom CV](buildCustomCVs.md) to use:

```
$ cvList custom
CompanyA-Role1
CompanyB-Role1
CompanyB-Role2
```

Let's send `CompanyB-Role2` to the directory dedicated to that role:

```
$ mkdir -p outs
$ cd outs
$ ln -s ~/Documents/jobs/CompanyB-Role2 .
$ ls -l
total 0
lrwxrwxrwx 1 ksandom users 43 Jun 12 11:00 CompanyB-Role2 -> /home/ksandom/Documents/jobs/CompanyB-Role2
```

It doesn't matter what the destination directory is called, but the symlink has to exactly match the variant name. Eg, this would work:

```
$ ln -s ~/Documents/jobs/somethingElse CompanyB-Role2
$ ls -l
total 0
lrwxrwxrwx 1 ksandom users 43 Jun 12 11:00 CompanyB-Role2 -> /home/ksandom/Documents/jobs/somethingElse
```

But this would not work:

```
$ ln -s ~/Documents/jobs/CompanyB-Role2 somethingElse
$ ls -l
total 0
lrwxrwxrwx 1 ksandom users 43 Jun 12 11:00 somethingElse -> /home/ksandom/Documents/jobs/CompanyB-Role2
```

The above example fails because `somethingElse` does not match the variant name `CompanyB-Role2`.

And this would not work:

```
$ ln -s ~/Documents/jobs/CompanyB-Role2 CompanyB-role2
$ ls -l
total 0
lrwxrwxrwx 1 ksandom users 43 Jun 12 11:00 CompanyB-role2 -> /home/ksandom/Documents/jobs/CompanyB-Role2
```

The above example fails because `CompanyB-role2` does not match the variant name `CompanyB-Role2`.
