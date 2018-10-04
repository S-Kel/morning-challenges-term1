# 27_maze
# 09_broken_keyboard
# 24_card_game
# 26_cipher
# 26_cipher

git checkout master
git add . && git commit -m "sync master" && git push origin master
git checkout -b 27_maze
git pull --no-edit morning 27_maze
git add . && git commit -m "resolve conflicts"
git checkout master
git merge 27_maze
git push origin master
git branch -d 27_maze