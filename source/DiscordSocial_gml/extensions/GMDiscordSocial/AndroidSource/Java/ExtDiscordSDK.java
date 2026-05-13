package ${YYAndroidPackageName};
import java.lang.String;
import java.nio.ByteBuffer;
import android.app.Activity;

public final class ExtDiscordSDK extends ExtDiscordSDKInternal {

    public ExtDiscordSDK() {
        Activity activity = RunnerActivity.CurrentActivity;
        com.discord.socialsdk.DiscordSocialSdkInit.setEngineActivity(activity);
    }
}