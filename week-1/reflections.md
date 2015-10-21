# 1.1 Think About Time Reflection

In browsing through the links for this assignment, I found myself most interested in the articles on flow, the Pomodoro technique, and the Fogg Method, and somewhat interested in the meditation - which is something that I keep hearing is very beneficial, and I keep meaning to try, and then just never do. So, I've actually downloaded the Headspace app described in the link, and will try that. 

Time Boxing is a method for managing the use of time; basically, you set aside a certain, generally shortish, period during which you work towards the completion of a task, with no outside interruptions (so, no checking email, answering the phone, or whatever else you use to distract yourself). After the defined period is over, you should then review your session to check what was accomplished and how much progress was made towards your goal. I can use it in Phase 0 to give some definition to the work and study sessions that I'll be undertaking, and to make sure I'm frequently reviewing my progress and staying fresh for the new challenges. It'll be interesting for me, as I'm generally very much a "get-everything-done-now" person at times, followed by periods of "but-I-don't-WANT-to-do-anything". 

Currently, I don't employ any particular time management strategy. It's certainly not the best way to accomplish anything, but it works well enough when there aren't actually deadlines to accomplish any specific tasks.

As for the techniques I read about, I intend to experiment with the Pomodoro technique and the Fogg Method (although the latter may apply more to life outside DBC than to Phase 0, specifically), and to start working on some meditation. My overall plan for time management in Phase 0 will basically, I think, be to accomplish one of the assignments per day, while attempting to integrate the Pomodoro/Time Boxing method into my workflow.

# 1.2 The Command Line Reflection

A shell is a program in Unix that acts as the user interface - it's where you launch programs and generally tell the computer what you want it to do. Bash is a specific type of shell. I've used Unix systems before, so there wasn't too much new or challenging with this module, honestly, although the pushd and popd commands were new to me, and making sure I remembered and could properly use the rest was solid review. The most useful commands to me have been ls (especially ls -l), grep, and cd - basically, seeing what's where you are, finding specific things in files, and moving around the file structure.

*pwd - print working directory - tell me where I am

*ls - show me the files and directories that are in the directory I'm in

*mv - move and/or rename a file

*cd - change directory, either by typing the name of a subdirectory that's in the directory I'm currently in, or by providing a full or relative path to the new directory

*../ - move up one directory

*touch - create an empty file

*mkdir - make a new directory

*less - print the contents of a file to the screen, a certain number of lines at a time

*rmdir - remove a directory

*rm - remove a file or directory

*help - when used without a command (just 'help'), it will provide a list of commands that the shell will accept; if used with a command ('help cd'), it will provide a description of what the command does, and the arguments that can be used with the command

# 1.4 Forking and Cloning Reflection

Create a repository: on GitHub, click on the green "New repository" button near the top-right of the home screen. On the page that comes up, fill out the repository name, select a license if necessary, and click on the "Create Repository" button. Voila, new repository on GitHub. Locally, use "git init <repository_name>" to create a new git repository.

Fork a repository: find the repository you want to fork on GitHub (generally, this will be easiest if you know the user you want to clone from, and the name of the repository -  you can then just go to http://github.com/user/repository. Click on the grey "Fork" button near the top right of the screen, and select the user you wold like to have fork the repository.

Clone a repo: again, it's simplest to have the specific web address for the repo, which can be gotten from the GitHub page for the repo - labelled HTTPS clone URL near the bottom of the repo page. (Again, it will be of the form https://github.com/username/reponame (Links to an external site.)); then use the git clone command on the command line to clone the repo to your local box.

You would fork a repository as opposed to creating a new one so that you would be working from a local version of a project that already contains all the necessary files - no need to start completely from scratch.

I didn't have any real trouble setting up git or GitHub, alhtough I'm sure I probably missed something that will make my life difficult in the future. Making sure that git talked to GitHub was probably the most difficult thing, and that was fairly straightforward.