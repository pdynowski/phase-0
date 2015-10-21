> How does tracking and adding changes make developers' lives easier?

 It makes developers' lives easier because, should something go wrong at some point, there's always a last known working state that can be reverted to, and to indicate where the error occurred.

> What is a commit?

A commit is a snapshot of the work that has been done at a given point in time.

> What are the best practices for commit messages?

Commit messages should be descriptive and written in the imperative. 

> What does the HEAD^ argument mean?

HEAD^ refers to the last commit made.

> What are the three stages of a git change and how do you move a file from one stage to the other?

1. Edit - actually make the changes that you want to make. Save them, then move to step 2.
2. Add - add the changes with git add filename to prepare them for being committed
3. Commit - commit the changes with git commit -m to create the snapshot of the changes

>Write a handy cheatsheet of the commands you need to commit your changes.

* git add filename - add the file to the commit staging
* git commit -m "Commit message" - commit the snapshot of the project, which will include all the staged files from git add

> What is a pull request and how do you create and merge one?

A pull request is a request to have committed changes in a branch included into the main project. To create one, you push your branch back to the project origin (git push origin branch-name). Then, on GitHub, you find the "Create Pull Request" button and, after making sure that you're pointing at the correct base repository, click it. Then, if you're dealing with your own project, you find the "Merge pull request" button and, assuming that everything can be automatically merged, press it. Generally, if you're a contributor to a larger project, the merging will be someone else's responsibility, though. Finally, after confirming that everything has merged correctly, clean up by deleting your working branch.

> Why are pull requests preferred when working with teams?

Pull requests give the code administrator the opportunity to perform code reviews before merging new commits with the master project, and add an extra layer of safety.