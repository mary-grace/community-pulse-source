# Utility scripts

These scripts are used for managing the release and updates of the theme. The script should be run after you've downloaded the new release (zip file, not source code) from the [Castanet Releases](https://github.com/mattstratton/castanet/releases).

## update-theme.sh

This script will update this repo with a specific version of `castanet`. Run this script from the root directory of the repo. This script requires that local installation of the [hub](https://github.com/github/hub) tool, in order to generate the pull request.

Usage:
```
utils/update-theme.sh <VERSION>
```
