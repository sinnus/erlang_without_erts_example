all:
	rebar compile

compile:
	rebar compile

package_dev: pre_package
	cp -R release/etc/dev target/etc
	cd target && \
	tar -cvzf ../example-dev.tar.gz *

package_prod: pre_package
	cp -R release/etc/prod target/etc
	cd target && \
	tar -cvzf ../example-prod.tar.gz *

pre_package: compile
	rm -Rf target
	mkdir -p target
	mkdir -p target/ebin
	cp -R release/bin target/bin
	cp ebin/* target/ebin
