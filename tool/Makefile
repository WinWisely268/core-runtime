# This make file uses composition to keep things KISS and easy.
# In the boilerpalte make files dont do any includes, because you will create multi permutations of possibilities.

# ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
# Includes
# ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
BOILERPLATE_FSPATH=../boilerplate

include $(BOILERPLATE_FSPATH)/core/help.mk
include $(BOILERPLATE_FSPATH)/core/gitr.mk
include $(BOILERPLATE_FSPATH)/core/go.mk
include $(BOILERPLATE_FSPATH)/core/tool.mk

# ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
# Overrides & Variables
# ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
COPY_TARGET_FSPATH = $(PWD)/assets
COPY_SRCDIR_FSPATH = \
	$(PWD)/dummy/builds \
	$(PWD)/lang/builds \
	$(PWD)/protofig/protoc-gen-configdef/builds \
	$(PWD)/protofig/builds
COPY_SRC_FILES := \
	$(foreach D,$(COPY_SRCDIR_FSPATH), \
		$(wildcard $(D)/*))

.PHONY: help

## Print all settings
this-print:
	$(MAKE) go-print
	@echo COPY_SRC_FILES: $(COPY_SRC_FILES)
	@echo COPY_TARGET_FILES: $(COPY_TARGET_FILES)

# ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
# Build Phase
# ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯

## Build all tools for all platform (CI)
this-build-all:

	@echo -- TOOLS - BUILD ALL PLATFORMS: start --

	@echo Dummy
	cd ./dummy && $(MAKE) this-build-all

	@echo Lang
	cd ./lang && $(MAKE) this-build-all

	@echo protoc-gen-configdef
	cd ./protofig/protoc-gen-configdef && $(MAKE) this-build-all

#	@echo protoc-gen-map
#	cd ./protodb/protoc-gen-map && $(MAKE) this-build-all

	@echo Protofig
	cd ./protofig && $(MAKE) this-build-all

#	@echo Protodb
#	cd ./protodb && $(MAKE) this-build-all

	# -- PLUS ALL OTHER TOOLS !!

	@echo -- TOOLS - BUILD ALL PLATFORMS: finish --

## Build all tools
this-build:

	@echo -- TOOLS - BUILD ALL: start --

	@echo Dummy
	cd ./dummy && $(MAKE) this-build

	@echo Lang
	cd ./lang && $(MAKE) this-build

	@echo protoc-gen-configdef
	cd ./protofig/protoc-gen-configdef && $(MAKE) this-build

	@echo protoc-gen-map
	cd ./protodb/protoc-gen-map && $(MAKE) this-build

	@echo Protofig
	cd ./protofig && $(MAKE) this-build

	@echo Protodb
	cd ./protodb && $(MAKE) this-build
	# -- PLUS ALL OTHER TOOLS !!

	@echo -- TOOLS - BUILD ALL: finish --

# ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
# Test Phase
# ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯

## Test all tools
this-test:
	@echo -- TOOLS - TEST ALL: start --

	@echo Dummy
	cd ./dummy && $(MAKE) this-test

	@echo Lang
	cd ./lang && $(MAKE) this-test

	@echo Protofig
	cd ./protofig && $(MAKE) this-test

	@echo Protodb
	cd ./protodb && $(MAKE) this-test
	# -- PLUS ALL OTHER TOOLS !!

	@echo -- TOOLS - TEST ALL: finish --

# ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯
# Release Phase
# ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯

## Copy all binaries to assets path
this-assets-release: this-build-all this-clean-assets this-create-assets-dir
	${MAKE} this-copy-all
	${MAKE} this-compress-all

this-clean-assets:
	rm -rf $(COPY_TARGET_FSPATH)

this-create-assets-dir:
	mkdir -p $(COPY_TARGET_FSPATH)

this-copy-all:
	for fl in  $(COPY_SRC_FILES); \
		do cp -f $$fl $(COPY_TARGET_FSPATH)/$$(basename $$fl); \
	done

this-compress-all:
	gzip $(wildcard $(COPY_TARGET_FSPATH)/*)
