#!/bin/bash

BOOKMARK_DIRECTORY="/home/hammas/.config/google-chrome/Default/Bookmarks"

#last_modified_temp

last_modified=$(date -r $BOOKMARK_DIRECTORY)

echo $last_modified