mkdir GitHub_Lab

cd GitHub_Lab

git init
git remote add origin # 這邊放你自己的 Repo URL !!

git pull
git checkout main

echo meow > meow.txt

git add .
git commit -m "Message"
git push
