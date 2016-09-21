hugo
cd ../blogging-public
rm -rf *
y
cp -rf ../blogging/public/ ./

echo -n "Wanna push to gh-pages (y/n)? "
read answer
if echo "$answer" | grep -iq "^y" ;then
    git add .
    git cim "update stuff on website"
    git push
else
    echo Not right now
fi

