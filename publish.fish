#!/usr/bin/env fish

if not test -d mc-post-leipzig-ev-im-adac-files
    echo Ich benötige das Verzeichnis ./mc-post-leipzig-ev-im-adac-files/
    echo Beende!
    exit
end

mkdir -p alt
mv * alt 2>/dev/null
mv alt/mc-post-leipzig-ev-im-adac-files/* .
mv alt/publish.fish .
rm -rf alt

echo www.mcpostleipzig.de >CNAME

git add *
git commit -m "Updated from Publii"
git push
