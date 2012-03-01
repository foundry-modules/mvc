include ../../build/modules.mk

SOURCE_DIR = jquery/dist/modules/mvc

MODULES = class\
	controller\
	controller.route\
	controller.subscribe\
	controller.view\
	dom.closest\
	dom.compare\
	dom.cookie\
	dom.cur_styles\
	dom.dimensions\
	dom.fixture\
	dom.form_params\
	dom.range\
	dom.route\
	dom.selection\
	dom.within\
	event.default\
	event.destroyed\
	event.drag\
	event.drag.limit\
	event.drag.scroll\
	event.drag.step\
	event.drop\
	event.handle\
	event.hashchange\
	event.hover\
	event.key\
	event.pause\
	event.resize\
	event.selection\
	model\
	model.backup\
	model.list\
	model.list.cookie\
	model.list.local\
	model.service\
	model.service.json_rest\
	model.service.twitter\
	model.service.yql\
	model.store\
	model.validations\
	tie\
	view\
	view.ejs\
	view.helpers\
	lang.string\
	lang.observe\
	lang.string.deparam\
	lang.openajax\
	lang.json\
	lang.object\
	lang.vector\
	lang.string.rsplit

all:
	./js jquery/buildModule.js

	mkdir -p ${DEVELOPMENT_DIR}/mvc
	mkdir -p ${PRODUCTION_DIR}/mvc

	$(foreach MODULE,$(MODULES), \
		cat ${SOURCE_DIR}/$(MODULE).js | ${RESOLVE_NAMESPACE} > ${DEVELOPMENT_DIR}/mvc/$(MODULE).js;${\n} \
		${UGLIFYJS} ${DEVELOPMENT_DIR}/mvc/$(MODULE).js > ${PRODUCTION_DIR}/mvc/$(MODULE).js;${\n} \
    )

	@@echo "Module mvc build complete."
