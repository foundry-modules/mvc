all: build join-script-files resolve-namespace wrap-script minify-script

include ../../build/modules.mk

MODULE = mvc

SOURCE_SCRIPT_FOLDER = jquery/dist/modules/mvc

SOURCE_SCRIPT_FILES = ${SOURCE_SCRIPT_FOLDER}/lang.string.js\
${SOURCE_SCRIPT_FOLDER}/lang.string.rsplit.js\
${SOURCE_SCRIPT_FOLDER}/lang.string.deparam.js\
${SOURCE_SCRIPT_FOLDER}/event.default.js\
${SOURCE_SCRIPT_FOLDER}/event.destroyed.js\
${SOURCE_SCRIPT_FOLDER}/event.hashchange.js\
${SOURCE_SCRIPT_FOLDER}/event.key.js\
${SOURCE_SCRIPT_FOLDER}/event.livehack.js\
${SOURCE_SCRIPT_FOLDER}/event.pause.js\
${SOURCE_SCRIPT_FOLDER}/event.resize.js\
${SOURCE_SCRIPT_FOLDER}/dom.closest.js\
${SOURCE_SCRIPT_FOLDER}/dom.cookie.js\
${SOURCE_SCRIPT_FOLDER}/dom.compare.js\
${SOURCE_SCRIPT_FOLDER}/dom.cur_styles.js\
${SOURCE_SCRIPT_FOLDER}/dom.range.js\
${SOURCE_SCRIPT_FOLDER}/dom.within.js\
${SOURCE_SCRIPT_FOLDER}/class.js\
${SOURCE_SCRIPT_FOLDER}/controller.js\
${SOURCE_SCRIPT_FOLDER}/view.js\
${SOURCE_SCRIPT_FOLDER}/view.ejs.js\
${SOURCE_SCRIPT_FOLDER}/lang.observe.js

build:
	./js jquery/buildScripts.js