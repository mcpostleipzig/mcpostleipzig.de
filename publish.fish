#!/usr/bin/env fish

# mkdir -p alt
# mv * alt 2>/dev/null
# mv alt/mc-post-leipzig-ev-im-adac-files/* .
# mv alt/publish.fish .
# rm -rf alt

git add *
git commit -m "Updated from Publii"
git push
