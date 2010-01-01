#!/bin/sh

while :
do
  ruby script/runner 'Status.get_xml'
  wget http://localhost:3000/plans
  rm public/index.html
  mv plans public/index.html
  git add public/index.html
  git commit -m 'update public/index.html'
  git push heroku master
  echo sleep...
  sleep 600
  echo sleeped!
done
