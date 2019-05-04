#!/bin/sh


git checkout master
git add *.png
git remote add origin2 https://${GITHUB_TOKEN}@github.com/aggarwalpiush/optimization-benchmark.git
git commit -m "update leaderboard"
git push origin2