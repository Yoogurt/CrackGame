.class Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4$1;
.super Ljava/lang/Object;
.source "GooglePlayScreenRecording.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 234
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v1, "start()::onFailure()"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;

    iget-object v0, v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "screenrecording:error"

    .line 237
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/distriqt/extension/gameservices/events/ScreenRecordingEvent;->formatForErrorEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method
