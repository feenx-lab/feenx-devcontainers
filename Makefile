CONTAINERID ?= $(shell bash -c 'read -p "Dev Container ID: " dci; echo $$dci')

build:
	./.github/actions/smoke-test/build.sh $(CONTAINERID)

run-tests:
	./.github/actions/smoke-test/test.sh $(CONTAINERID)
