get:
	melos run get

watch_domain:
	cd shared/domain && fvm dart run build_runner watch --delete-conflicting-outputs && cd ../..
build_domain:
	cd shared/domain && fvm dart run build_runner build --delete-conflicting-outputs && cd ../..

watch_app:
	cd apps/guten_book && fvm dart run build_runner watch --delete-conflicting-outputs && cd ../..
build_app:
	cd apps/guten_book && fvm dart run build_runner build --delete-conflicting-outputs && cd ../..