# 24_card_game
# 25_deck_of_cards
# 26_cipher

git checkout master
git add . && git commit -m "sync master" && git push origin master
git checkout -b 24_card_game
git pull --no-edit morning 24_card_game
git add . && git commit -m "resolve conflicts"
git checkout master
git merge 24_card_game
git push origin master
git branch -d 24_card_game