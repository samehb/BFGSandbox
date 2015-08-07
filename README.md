# BFGSandbox
## Introduction
If you have made the mistake of pushing a file with sensitive information into your repository. You would know that pushing a delete will not fix the problem. That is because the History will still presist. So, after removing the file you would need to remove the History, too.

In order to accomplish this, you can either use git-filter-branch or [BFG Repo-Cleaner] (https://rtyley.github.io/bfg-repo-cleaner/). Having used both, I picked BFG Repo-Cleaner over git-filter-branch because it is more efficient and very simple. Though, I decided to simplify the task even further, for Windows users. I created a batch file that takes two arguments and does everything for you. 

## How to use
1. Start by pushing a delete to the file you want removed and make sure it went through.
2. Download the [BFG Repo-Cleaner] (https://rtyley.github.io/bfg-repo-cleaner/) .jar file.
3. Create a new folder and name it anything you want.
4. Get the [bfg.bat](https://raw.githubusercontent.com/samehb/BFGSandbox/master/bfg.bat) file from this repo.
5. Place both the .jar and bfg.bat files into the folder you created.
6. Open the command interpreter (Cmd.exe).
7. Navigate to the folder you created.
8. Provide the bfg.bat file with the link to your git repo and the file to be removed like the following:
```
bfg http://yoursite.com/your-repo.git filetoberemoved.fileextensionifavailable
```
Here is an example using this repo:
```
bfg https://github.com/samehb/BFGSandbox.git passwords.txt
```
Hit enter and type your username then password (if you are asked to do so) and you are done.

Note that BFG Repo-Cleaner assumes you did your part deleteing the file from your repo before using it. The BFG Repo-Cleaner has so many other features. Feel free to check them out. You may use this repo as a sandbox before trying the batch on your repo. Also, make sure you made a backup of your repo before trying the batch, just in case something goes wrong.

## Links
[Blog] (http://sres.tumblr.com)

