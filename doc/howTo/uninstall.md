<!-- Copyright (C) 2023  Kevin Sandom -->
# How to uninstall cvMangle

TL;DR Run

```
./install/linkedUnInstall.sh
```

Read on for more considerations.

# See also

* [install.md](install.md).
* [update.md](update.md).

## UnInstall methods

At the moment, the following uninstall methods are available:

* ./install/linkedUnInstall.sh . Can be used with
    * ./install/linkedInstall.sh

Have a look in the [./install](https://github.com/ksandom/cvMangle/tree/main/install) directory to see the current install/uninstall methods (in case this document hasn't been updated yet.)

### linkedUnInstall

#### Overview

* Assumes that the installation has been done via a linkedInstall.
* Removes known* files from
    * Executables: `~/bin` ("bin" in your home directory.)
    * Stuff that might get used such as libraries: `~/.config/cvMangle`
* Does not remove the original repo that you cloned.

_*known: It looks at the current state of the repo, and removes what it expects to be installed based on how it would currently be installed. If this has changed, there could be stuff left behind. See [update.md](update.md) for more information._
