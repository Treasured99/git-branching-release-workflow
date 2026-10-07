# Git Branching, Merging & Release Workflow



A hands-on Git project demonstrating feature branching, development workflows, rebasing, release branches, hotfixes, merges, and version tagging.



## Project Overview



This project was completed as part of a practical Git course exercise: Version control with Git (Atlassian). The focus was on using Git to manage a development workflow rather than building a large software application.



The repository preserves the original Git history, including its branches, merge commits, rebasing activity, release tags, and hotfix workflow.



## Git Concepts Demonstrated



- Feature branching

- Development branches

- Branch merging

- Rebasing

- Release branches

- Hotfix branches

- Merge commits

- Version tagging

- Git history inspection

- Branch and release management



## Branch Structure



The project used several branches during development:



- `master` — main/release branch

- `develop` — development branch

- `feature1` — feature development

- `feature2` — additional feature development

- `release1` — release preparation

- `hotfix` — post-release bug fixing



Some feature and hotfix branches were subsequently merged and are preserved in the repository history.



## Releases



### v1.00



The first release was created by merging the `release1` branch into `master`.



Tag:



`v1.00`



### v1.01



A hotfix was subsequently merged into `master` and tagged as the second release.



Tag:



`v1.01`



The hotfix was also merged into `develop`.



## Rebase Workflow



The project also demonstrates rebasing during feature development.



The original `feature2` work was rebased onto the updated development history, resulting in a new commit representing the same work on a different base.



This provides an example of how rebasing rewrites commit history and produces a new commit hash.



## Repository Structure



```text

.

├── fileA.txt

└── README.md

