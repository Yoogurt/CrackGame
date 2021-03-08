.class Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$1;
.super Ljava/lang/Object;
.source "GooglePlayScreenRecording.java"

# interfaces
.implements Lcom/google/android/gms/games/VideosClient$OnCaptureOverlayStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureOverlayStateChanged(I)V
    .locals 5
    .param p1, "overlayState"    # I

    .prologue
    .line 82
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureOverlayStateChanged( %d )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    packed-switch p1, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "screenrecording:controls:shown"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
