get:
	melos run get
get_app:
	cd apps/guten_book && fvm flutter pub get && cd ../..
get_deps:
	cd shared/dependencies && fvm flutter pub get && cd ../..

clean:
	melos run clean
clean_get:
	melos run clean && melos run get

format:
	melos run format

watch_domain:
	cd shared/domain && fvm dart run build_runner watch --delete-conflicting-outputs && cd ../..
build_domain:
	cd shared/domain && fvm dart run build_runner build --delete-conflicting-outputs && cd ../..

watch_app:
	cd apps/guten_book && fvm dart run build_runner watch --delete-conflicting-outputs && cd ../..
build_app:
	cd apps/guten_book && fvm dart run build_runner build --delete-conflicting-outputs && cd ../..

watch_component:
	cd shared/component && fvm dart run build_runner watch --delete-conflicting-outputs && cd ../..
build_component:
	cd shared/component && fvm dart run build_runner build --delete-conflicting-outputs && cd ../..