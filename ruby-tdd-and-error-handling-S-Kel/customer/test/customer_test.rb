# 08_letter_blocks
# 09_broken_keyboard
# 24_card_game
# 26_cipher
# 26_cipher

git checkout master
git add . && git commit -m "sync master" && git push origin master
git checkout -b 09_broken_keyboard
git pull --no-edit morning 09_broken_keyboard
git add . && git commit -m "resolve conflicts"
git checkout master
git merge 09_broken_keyboard
git push origin master
git branch -d 09_broken_keyboard