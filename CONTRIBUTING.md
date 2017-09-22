# Welcome to a SESYNC Training Event

This document explains how to create and contribute to your own GitHub repository, including how to initialize your repository from the original [SESYNC-ci/handouts] repo. The steps below assume you will primarilly use the git version control system from withing RStudio.

1. **Create a RSA Key Pair**
1. **Import SESYNC-ci/handouts on GitHub**
1. **Create a new project in RStudio**
1. **Configure git**

## 1. Create RSA Key Pair in RStudio and GitHub

Setting up an RSA key pair between your GitHub account and your computer allows you to access your repository on GitHub without a password when using git for version control. To set up a key pair, follow these detailed [instructions](http://adamwilson.us/RDataScience/GitSSHNotes.html#generating-a-ssh-key-in-rstudio) written out by Adam Wilson, a professor of Geography from the University at Buffalo. **If you choose not to set up a key pair**, change any URL like `git@github.com:<username>/<repository>` to `https://github.com/<username>/<repository>/` in the instructions below.

## 2. Import Repository

Make sure you are logged in to <https://github.com>. Then select "Import repository" from the drop-down menu labeled "+" in the upper right corner of the page. You will be directed to the [import page](https://github.com/new/import). In the space for "Your old repository’s clone URL" put in `https://github.com/sesync-ci/handouts.git`. Use "handouts" for the repository name. During import, if asked about "large files", choose to exclude them.

## 3. Create RStudio Project

Now that the "origin" repository exists under your account on GitHub, you need to create a "clone" on your computer. The clone of your repository is synonymous with an "RStudio project", so begin by selecting "New Project" from the RStudio tool bar. Create a new project from version control, using git, and enter your repository URL. The URL can be generated using the green "Clone or Download" button from your repository on GitHub, but it should be `git@github.com:<username>/handouts`. Name the project "handouts" and use the "Browse" button to select a location for the project folder.

## 4. Configure git

The first time you work with git on your computer, you should tell it your GitHub username and e-mail address. This allows the author associated with your commits to be recognized by GitHub. While your RStudio project is open, choose "Tools > Shell" from the toolbar. Put in the following two lines, with appropriate substitutions for your name and email:

    git config --global user.name <username>
    git config --global user.email <email>
    
You should now be abble to commit and push to your GitHub repository from RStudio.

[SESYNC-ci/handouts]:https://github.com/sesync-ci/handouts
