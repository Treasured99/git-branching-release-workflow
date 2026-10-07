#!/bin/bash

# ============================================================
# Git Branching, Merging & Release Workflow
# ============================================================
# This script documents the Git commands used while completing
# the project.
#
# IMPORTANT:
# This is a command reference/documentation script.
# It is NOT intended to be executed from top to bottom.
#
# The repository already contains the resulting Git history.
# Running commands such as merge, rebase, reset, or push again
# could modify the repository.
# ============================================================


# ============================================================
# 1. REPOSITORY INSPECTION
# ============================================================

# Check the current working-tree state.
git status

# Display the commit history in a compact graphical format.
# --oneline  = abbreviated commit IDs and commit messages
# --graph    = show branches and merges visually
# --decorate = show branch and tag names
# --all      = include all local and remote branches
git log --oneline --graph --decorate --all

# Display local branches.
git branch

# Display local and remote branches.
git branch -a

# Display all tags.
git tag


# ============================================================
# 2. CREATING AND SWITCHING BRANCHES
# ============================================================

# Create a new branch.
git branch <branch-name>

# Switch to an existing branch.
git checkout <branch-name>

# Create a new branch and switch to it immediately.
git checkout -b <branch-name>

# Example workflow:
#
# git checkout -b feature1
#
# This creates the feature1 branch and switches to it.


# ============================================================
# 3. MAKING AND COMMITTING CHANGES
# ============================================================

# Stage a specific file.
git add <file>

# Stage all modified/new files.
git add .

# Create a commit with a descriptive message.
git commit -m "Commit message"

# Example:
#
# git add fileA.txt
# git commit -m "feature 1 wip"


# ============================================================
# 4. FEATURE DEVELOPMENT AND MERGING
# ============================================================

# Switch to the development branch.
git checkout develop

# Merge a feature branch into develop.
git merge feature1

# This creates a merge commit when Git cannot perform a
# fast-forward merge.

# Example from the project history:
#
# git merge feature1
#
# Result:
# 2c0d1b0 Merge branch 'feature1' into develop


# ============================================================
# 5. RELEASE BRANCH
# ============================================================

# Create/switch to the release branch.
git checkout -b release1

# After release preparation, switch to master.
git checkout master

# Merge the release branch into master.
git merge release1

# The project history records:
#
# 0cdedbf Merge branch 'release1'


# ============================================================
# 6. VERSION TAGGING
# ============================================================

# Create a version tag.
git tag v1.00

# Display information about a tag and the commit it references.
git show v1.00

# Later, another release was tagged:
git tag v1.01

# Inspect the second release.
git show v1.01


# ============================================================
# 7. HOTFIX WORKFLOW
# ============================================================

# A hotfix branch can be created from the release/master line.
git checkout -b hotfix

# After fixing the problem, switch back to master.
git checkout master

# Merge the hotfix into master.
git merge hotfix

# Tag the updated release.
git tag v1.01

# The project history records:
#
# f19b1fb Merge branch 'hotfix'


# The hotfix was also incorporated into develop.
git checkout develop
git merge hotfix

# The project history records:
#
# 7bbee6f Merge branch 'hotfix' into develop


# ============================================================
# 8. REBASE WORKFLOW
# ============================================================

# Switch to the feature branch.
git checkout feature2


# branch's updated history.
#
# In this project, the original feature2 commit:
# d0aaff7 feature 2 wip
#
# was replayed during the rebase and resulted in:
# d58a936 feature 2 wip
#
# The commit message and change were preserved, but the commit
# hash changed because the commit received a new parent.


# ============================================================
# ============================================================

# Display the details of a specific commit.
git show <commit>

# Examples from this project:
git show 2c0d1b0
git show d58a936
git show f19b1fb

# Display a specific tag.
git show v1.00
git show v1.01


# ============================================================
# 10. USING REFLOG
# ============================================================

# Reflog records movements of HEAD and branch references,
# including operations such as checkout, merge, rebase and reset.
git reflog

# Reflog was particularly useful in this project for examining
# the feature2 rebase and understanding how the branch reference
# moved through different commits.


# ============================================================
# 11. REMOTE REPOSITORY / GITHUB
# ============================================================

# Display configured remote repositories.
git remote -v

# Connect an existing local repository to GitHub.
git remote add origin <repository-url>

# Push the master branch and establish its upstream branch.
git push -u origin master

# Push additional project branches.
git push -u origin develop
git push -u origin feature2
git push -u origin release1

# Push version tags.
git push origin v1.00
git push origin v1.01


# ============================================================
# 12. VERIFYING THE GITHUB REPOSITORY
# ============================================================

# Confirm the working tree is clean.
git status

# View the complete branch/merge history.
git log --oneline --graph --decorate --all

# Confirm local and remote branches.
git branch -a

# Confirm release tags.
git tag


# ============================================================
# 13. PORTFOLIO DOCUMENTATION
# ============================================================

# Stage the README after documentation changes.
git add README.md

# Commit the documentation update.
git commit -m "Improve project documentation"

# Push the new documentation commit to GitHub.
git push


# ============================================================
# END OF GIT WORKFLOW REFERENCE
# ============================================================
#
# Important historical commits:
#
# 4e259c5  initial add README.md
# 7248db2  add fileA.txt
# a2557b1  feature 1 wip
# 9435cde  add feature 1
# 2c0d1b0  Merge branch 'feature1' into develop
# d0aaff7  feature 2 wip
# 3ea8887  fix feature 1 bug X
# 0cdedbf  Merge branch 'release1'       [v1.00]
# e0394d7  Merge branch 'release1' into develop
# d58a936  feature 2 wip                 [rebased commit]
# 13ba7e4  fix feature 1 bug Y
# f19b1fb  Merge branch 'hotfix'          [v1.01]
# 7bbee6f  Merge branch 'hotfix' into develop
# cb749a5  Add project documentation
#
# The repository history itself is the authoritative record of
# the actual operations performed during the project.
# ============================================================# 9. INSPECTING INDIVIDUAL COMMITS
#
#
# Rebase replays the feature commits on top of another

