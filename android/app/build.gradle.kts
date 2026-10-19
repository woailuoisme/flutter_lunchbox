import java.util.Properties
import java.io.FileInputStream

plugins {
    id("com.android.application")
    // Kotlin 由 AGP 9 的 built-in Kotlin 提供，不再应用 kotlin-android
    // The Flutter Gradle Plugin must be applied after the Android Gradle plugin.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.hxg.lunchbox"
    compileSdk = 37 // permission_handler_android 编译于 37
    ndkVersion = flutter.ndkVersion

    lint {
        // stripe 的 play-services-tapandpay:18.8.0 在仓库中不存在，release lint 无法解析类路径
        checkReleaseBuilds = false
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
      isCoreLibraryDesugaringEnabled = true
    }


    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.hxg.lunchbox"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 26 // sentry_flutter 要求 26，低于此值清单合并失败
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    val keystoreProperties = Properties()
    val keystorePropertiesFile = rootProject.file("key.properties")
    if (keystorePropertiesFile.exists()) {
        keystoreProperties.load(FileInputStream(keystorePropertiesFile))
    }
    // 缺 keystore 时禁止打 release 包，避免静默用 debug key 签名
    val buildingRelease = gradle.startParameter.taskNames.any {
        it.contains("Release", ignoreCase = true)
    }
    if (buildingRelease && !keystorePropertiesFile.exists()) {
        error("Release build requires android/key.properties, run: just signing-key")
    }

    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties.getProperty("keyAlias")
            keyPassword = keystoreProperties.getProperty("keyPassword")
            storeFile = keystoreProperties.getProperty("storeFile")?.let { file(it) }
            storePassword = keystoreProperties.getProperty("storePassword")
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("release")
            
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
}

kotlin {
    compilerOptions {
        jvmTarget.set(org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17)
    }
}

flutter {
    source = "../.."
}

dependencies {
  coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
  implementation("androidx.appcompat:appcompat:1.7.1")
}
