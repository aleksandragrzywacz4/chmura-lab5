#!/bin/sh
echo "<html><body>" > index.html
echo "<p><b>IP serwera:</b> $(hostname -i)</p>" >> index.html
echo "<p><b>Nazwa serwera (hostname):</b> $(hostname)</p>" >> index.html
echo "<p><b>Wersja aplikacji:</b> $APP_VERSION</p>" >> index.html
echo "</body></html>" >> index.html
