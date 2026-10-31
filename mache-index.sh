#!/usr/bin/env bash
# Baut index.html (GitHub Pages) aus seite.html (Artifact-Fassung).
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="de">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1">\n'
  printf '<style>html{color-scheme:light dark}body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
  sed -n '1,/^<\/style>$/p' seite.html
  printf '</head>\n<body>\n'
  sed '1,/^<\/style>$/d' seite.html
  printf '</body>\n</html>\n'
} > index.html
