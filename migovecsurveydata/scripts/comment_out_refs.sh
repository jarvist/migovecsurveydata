#find ./ -iname "*.svx" -print0 | xargs -0 echo sed -i'' "s/^*ref/;*ref/g" 

Did it by hand in the end, greping for affected files and then:
sed -e "s/^*ref/;*ref/g" -i '' */*.svx

Be careful - using -i without a backup (in place substitution) can lead to file
corruption etc. So check very carefully before committing with git.

