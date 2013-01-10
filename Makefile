include ../../build/modules.mk

SOURCE_DIR = jquery/dist/modules/mvc

MODULES = ${SOURCE_DIR}/lang.string.js\
${SOURCE_DIR}/lang.string.rsplit.js\
${SOURCE_DIR}/lang.string.deparam.js\
${SOURCE_DIR}/lang.observe.js\
${SOURCE_DIR}/event.default.js\
${SOURCE_DIR}/event.destroyed.js\
${SOURCE_DIR}/event.hashchange.js\
${SOURCE_DIR}/event.key.js\
${SOURCE_DIR}/event.livehack.js\
${SOURCE_DIR}/event.pause.js\
${SOURCE_DIR}/event.resize.js\
${SOURCE_DIR}/dom.closest.js\
${SOURCE_DIR}/dom.cookie.js\
${SOURCE_DIR}/dom.compare.js\
${SOURCE_DIR}/dom.cur_styles.js\
${SOURCE_DIR}/dom.dimensions.js\
${SOURCE_DIR}/dom.range.js\
${SOURCE_DIR}/dom.route.js\
${SOURCE_DIR}/dom.within.js\
${SOURCE_DIR}/class.js\
${SOURCE_DIR}/controller.js\
${SOURCE_DIR}/controller.route.js\
${SOURCE_DIR}/view.js\
${SOURCE_DIR}/view.ejs.js

all:
	./js jquery/buildScripts.js

	rm -fr ${DEVELOPMENT_DIR}/mvc
	rm -fr ${PRODUCTION_DIR}/mvc

	cat ${MODULES} | ${RESOLVE_NAMESPACE} > ${DEVELOPMENT_DIR}/mvc.js.raw
	${WRAP} -c ${DEVELOPMENT_DIR}/mvc.js.raw > ${DEVELOPMENT_DIR}/mvc.js
	${UGLIFYJS} ${DEVELOPMENT_DIR}/mvc.js > ${PRODUCTION_DIR}/mvc.js

	rm -fr ${DEVELOPMENT_DIR}/mvc.js.raw

	@@echo "Module mvc build complete."
