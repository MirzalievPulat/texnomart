package com.example.texnomart


import android.app.Application

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("2ade47f4-e1a2-417d-a78a-53ba99e6233e")
        MapKitFactory.setLocale("uz_UZ")
        super.configureFlutterEngine(flutterEngine)
    }
}