# Git Commands

This is a collection of Git custom commands to make everyday things easy.

Some commands are designed to run on Windows as a batch script. Use a Git
alias to avoid having to specify `.cmd` extension and optionally set-up an
abbreviated name. For example:

    git config --global alias.cim diff-commit-modified.cmd

## Installation

On Windows, run `install.cmd` and supply a directory path that is in the
system path (`%PATH%`) as an argument. The script will create symbol links to
all the Git commands scripts (`git-*.cmd`) found in this repository so that
Git can locate them. This set-up allows the repository to exist anywhere and
the local clone to be synchronized with any state of a remote clone. Re-run
`install.cmd` after each synchronization to create links to new commands.
The links must be deleted manually to uninstall.


## Commands


### `git-diff-commit-modified.cmd`

Does the following:

- Displays modifications (`git diff`) for review
- Stages _modified_ files only
- Prompts for a commit message and commits the changes

This is designed to speed-up a simple workflow when making many small and
atomic commits, especially during a review or refactoring.
