# This make file uses composition to keep things KISS and easy.
# In the boilerpalte make files dont do any includes, because you will create multi permutations of possibilities.

# includes
include ./boilerplate/core/help.mk
include ./boilerplate/core/go.mk
include ./boilerplate/core/gitr.mk

.PHONY: help

## Print all settings
this-print:
	$(MAKE) go-print

### Tools
# These make targets do the releases for us.
# They can also be called by CI itself. When it gets a tag it will call the make this-tools-release

## Builds all tools
this-tools-build:
	# reach into eac ones make and build
	cd tool/dummy && $(MAKE) this-build

## Tags the tools via  git tag
this-tools-tag:
	# tag it
	$(MAKE)  gitr-release-tag

# Releases a build
this-tools-release: this-tools-build
	# runs off a tag event or a specified tag
	$(MAKE)  gitr-release-push
	
### Dummy

## build dummy
build-dummy:
	@echo "building dummy"
	go build -o dummy -v $(PWD)/tool/dummy

## clean dummy builds
build-dummy-clean:
	@echo "clean build dummy"
	@rm -rf $(PWD)/outputs $(PWD)/.tmp
