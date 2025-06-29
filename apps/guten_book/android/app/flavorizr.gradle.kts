import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.guten.book"
            resValue(type = "string", name = "app_name", value = "Guten Book")
        }
        create("staging") {
            dimension = "flavor-type"
            applicationId = "com.guten.book.staging"
            resValue(type = "string", name = "app_name", value = "Guten Book Staging")
        }
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.guten.book.dev"
            resValue(type = "string", name = "app_name", value = "Guten Book Dev")
        }
    }
}