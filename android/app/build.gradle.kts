plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.doctor_app"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    compileOptions {
        // --- تم تحديث هذا القسم إلى Java 17 ---
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        // --- وتم تحديث هذا القسم إلى Java 17 ---
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        applicationId = "com.example.doctor_app"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName

        // --- تمت إضافة هذا السطر الهام ---
        multiDexEnabled = true
    }

    // --- هذا هو قسم الـ Flavors بالصيغة الصحيحة ---
    flavorDimensions.add("default")
    productFlavors {
        create("production") {
            dimension = "default"
            resValue("string", "app_name", "DocDoc production")
        }
        create("development") {
            dimension = "default"
            applicationIdSuffix = ".dev"
            resValue("string", "app_name", "DocDoc development")
        }
        // يمكنك إضافة flavor الـ staging هنا إذا أردت
        // create("staging") { ... }
    }


    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}