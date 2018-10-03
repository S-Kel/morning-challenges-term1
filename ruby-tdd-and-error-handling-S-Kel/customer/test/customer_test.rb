# 08_letter_blocks
# 09_broken_keyboard
# 24_card_game
# 26_cipher
# 26_cipher

git checkout master
git add . && git commit -m "sync master" && git push origin master
git checkout -b 08_letter_blocks
git pull --no-edit morning 08_letter_blocks
git add . && git commit -m "resolve conflicts"
git checkout master
git merge 08_letter_blocks
git push origin master
git branch -d 08_letter_blocks