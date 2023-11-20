<!-- Copyright (C) 2023  Kevin Sandom -->
# How to build custom CVs

You probably want to build most variants every time. However, sometimes you may one to do a one-off CV for a particular company. For that, you want a custom CV.

## Create a custom CV

Create a file in the [custom folder](https://github.com/ksandom/cvMangle/tree/main/examples/custom) just like you would do for a normal [variant](https://github.com/ksandom/cvMangle/tree/main/examples/variant).

This is identical to a normal variant, except it won't be included in the normal build.

## How to see what variants exist

Simply run `cvList custom`.

```
$ cvList custom
exampleCustom
```

## How to build it

Put the name of the custom CV right after the `cv` command:

```
cv exampleCustom
```
