package com.milkandegg.zaza_xp
import androidx.annotation.NonNull
import android.os.Bundle
import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import com.ryanheise.audioservice.AudioServiceActivity;



class MainActivity: AudioServiceActivity() {
    companion object {
            const val CHANNEL = "flutter.toast.message.channel"
            const val METHOD_TOAST = "toast"
            const val KEY_MESSAGE = "message"
        }
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
            call, result ->
            // This method is invoked on the main thread.
            if(call.method == METHOD_TOAST){
                val message = call.argument<String>(KEY_MESSAGE);
                Toast.makeText(this@MainActivity,message,Toast.LENGTH_SHORT).show();
            }
        }
    }
}
