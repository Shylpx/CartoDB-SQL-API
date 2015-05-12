all:
	npm install

clean:
	rm -rf node_modules/*

check:
	npm test

test:
	test/run_tests.sh ${RUNTESTFLAGS} test/unit/*.js test/unit/model/*.js test/acceptance/*.js  test/acceptance/export/*.js

test-unit:
	test/run_tests.sh ${RUNTESTFLAGS} test/unit/*.js test/unit/model/*.js

test-acceptance:
	test/run_tests.sh ${RUNTESTFLAGS} test/acceptance/*.js  test/acceptance/export/*.js

.PHONY: test
