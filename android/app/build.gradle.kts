plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.doctor"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        applicationId = "com.example.doctor"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }

    flavorDimensions += "default"

    productFlavors {

        create("development") {
            dimension = "default"
            applicationIdSuffix = ".development"

            resValue(
                "string",
                "app_name",
                "Flavors Development"
            )
        }

        create("production") {
            dimension = "default"
            applicationIdSuffix = ".production"

            resValue(
                "string",
                "app_name",
                "Flavors Production"
            )
        }
    }
}

flutter {
    source = "../.."
}