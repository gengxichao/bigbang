all: css js

css:
	sass assets/stylesheets/bigbang.scss:static/style.css --style compressed

css-watch:
	sass --watch assets/stylesheets/bigbang.scss:static/style.css --style compressed

js: js-lib

js-lib :
	uglifyjs -nc assets/scripts/jquery-1.8.3.min.js > static/lib.js
	uglifyjs -nc assets/scripts/bootstrap.min.js >> static/lib.js
