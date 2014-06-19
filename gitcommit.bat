@echo off
if {%1}=={} goto noparams
git add .
git commit -a -m %1
git push origin master
goto ok
:noparams
echo Usage: gitcommit your-commit-comment
goto end
:ok
echo Done!
:end


