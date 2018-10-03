# 24_card_game
# 25_deck_of_cards
# 26_cipher

git checkout master
git add . && git commit -m "sync master" && git push origin master
git checkout -b 25_deck_of_cards
git pull --no-edit morning 25_deck_of_cards
git add . && git commit -m "resolve conflicts"
git checkout master
git merge 25_deck_of_cards
git push origin master
git branch -d 25_deck_of_cards