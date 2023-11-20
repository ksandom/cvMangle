<!-- Copyright (C) 2023  Kevin Sandom -->
# How to install cvMangle

TL;DR Run

```
./install/linkedInstall.sh
```

Read on for more considerations.

## See also

* [uninstall.md](uninstall.md).
* [update.md](update.md).

## Install methods

At the moment, the following install methods are available:

* ./install/linkedInstall.sh

Have a look in the [./install](https://github.com/ksandom/cvMangle/tree/main/install) directory to see the current install/uninstall methods (in case this document hasn't been updated yet.)

### linkedInstall

#### Overview

* Installs to
    * Executables: `~/bin` ("bin" in your home directory.)
    * Stuff that might get used such as libraries: `~/.config/cvMangle`
* Places symlinks in those directories so that updates to the repo get propagated immediately.
    * Excellent for development.
    * Relies on the cloned repo staying in place. Ie if you delete it, the installation will break.

### installDeps

Install dependencies into the cvMangle directory.
