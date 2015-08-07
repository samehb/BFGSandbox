SET "gitf=%~nx1"
git clone --mirror "%1"
java -jar bfg.jar --delete-files %2 %gitf%
cd %gitf%
git reflog expire --expire=now --all && git gc --prune=now --aggressive
git push
cd..