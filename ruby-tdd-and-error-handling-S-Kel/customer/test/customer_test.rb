# 24_card_game
# 26_cipher
# 26_cipher

git checkout master
git add . && git commit -m "sync master" && git push origin master
git checkout -b 26_cipher
git pull --no-edit morning 26_cipher
git add . && git commit -m "resolve conflicts"
git checkout master
git merge 26_cipher
git push origin master
git branch -d 26_cipher