cd ~/Github/obsidian-vault

# CHANGES_EXIST="$(git status --porcelain | sc -l)"
CHANGES_EXIST="$(git status --porcelain=v1  | wc -l)"
echo $CHANGES_EXIST

if [ "$CHANGES_EXIST" -eq 0 ]; then
  exit 0
fi

DATE=`date +%Y-%m-%d_%H:%M:S`

 git pull && git add --all &&  git commit -q -m"Auto Sync: ($DATE)" && git push
