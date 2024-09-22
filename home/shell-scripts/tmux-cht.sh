#!/bin/sh

selected=`echo "typescript
javascript
tailwind
react
java
csharp
cpp
c
rust
html
css
sass
bash
lua
go
python
haskell" | fzf --reverse`

if [[ -z $selected ]]; then
    exit 0
fi

read -p "query: " query
clear

query=`echo $query | tr ' ' '+'`
curl -s cht.sh/$selected/$query | less -R
