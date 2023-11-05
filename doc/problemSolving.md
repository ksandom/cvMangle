## Problems

### I can't find file...


```
! I can't find file `intentionalFailure'.
<*> ...=1; ; nonstopmode; input intentionalFailure
```

You may also see `missfont.log` appear.

This is likely to be caused by a missing font.

In this case, I changed `mainfont` from

```
mainfont: NimbusSanL-Regu
```

```
mainfont: intentionalFailure
```

Choose a font that exists on your system.

TODO Document how to find available fonts on your system.
