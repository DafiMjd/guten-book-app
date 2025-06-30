get:
	melos run get

watch_domain:
	cd shared/domain && dart run build_runner watch --delete-conflicting-outputs && cd ../..
build_domain:
	cd shared/domain && dart run build_runner build --delete-conflicting-outputs && cd ../..