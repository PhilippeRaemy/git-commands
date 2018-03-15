# Git Commands

This is a collection of Git custom commands to make everyday things easy.

Some commands are designed to run on Windows as a batch script. Use a Git
alias to avoid having to specify `.cmd` extension and optionally set-up an
abbreviated name. For example:

    git config --global alias.cim git-diff-commit-modified.cmd


## `git-diff-commit-modified.cmd`

Does the following:

- Displays modifications (`git diff`) for review
- Stages _modified_ files only
- Prompts for a commit message and commits the changes

This is designed to speed-up a simple workflow when making many small and
atomic commits, especially during a review or refactoring.
