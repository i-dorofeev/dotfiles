#!/bin/zsh

git fetch origin

REPO_PATH=$1
FROM_COMMIT=$2
TO_COMMIT=$3

echo "\n"

DATE="%ad"
HASH="%Cred%h%Creset"
AUTHOR_MAX_LENGTH=30
AUTHOR="%Cblue%>($AUTHOR_MAX_LENGTH)%an%Creset"
MESSAGE="%s"
git --no-pager log \
    --pretty=format:"$DATE $HASH $AUTHOR $MESSAGE" \
    --date=format:"%Y-%m-%d %H:%M" \
    --full-history \
    $FROM_COMMIT..$TO_COMMIT \
    -- $REPO_PATH
