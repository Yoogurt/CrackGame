.class Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;
.super Ljava/lang/Object;
.source "GooglePlayScreenRecording.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener",
        "<",
        "Lcom/google/android/gms/games/video/CaptureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 8
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/video/CaptureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/video/CaptureState;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 296
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/video/CaptureState;

    .line 300
    .local v0, "state":Lcom/google/android/gms/games/video/CaptureState;
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$200(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/google/android/gms/games/video/CaptureState;

    move-result-object v1

    if-nez v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1, v0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$202(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;Lcom/google/android/gms/games/video/CaptureState;)Lcom/google/android/gms/games/video/CaptureState;

    .line 339
    .end local v0    # "state":Lcom/google/android/gms/games/video/CaptureState;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$300(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$400(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$400(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v2, v2, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$300(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    :cond_1
    return-void

    .line 306
    .restart local v0    # "state":Lcom/google/android/gms/games/video/CaptureState;
    :cond_2
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v2, "captureMode = %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/games/video/CaptureState;->getCaptureMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v2, "captureQuality = %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/games/video/CaptureState;->getCaptureQuality()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v2, "isCapturing = %b"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/games/video/CaptureState;->isCapturing()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v2, "isOverlayVisible = %b"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/games/video/CaptureState;->isOverlayVisible()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v2, "isPaused = %b"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/games/video/CaptureState;->isPaused()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$200(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/google/android/gms/games/video/CaptureState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/games/video/CaptureState;->isCapturing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/games/video/CaptureState;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v1

    const-string v2, "screenrecording:started"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_3
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$200(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/google/android/gms/games/video/CaptureState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/games/video/CaptureState;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/games/video/CaptureState;->isCapturing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 319
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v1

    const-string v2, "screenrecording:stopped"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v1

    const-string v2, "screenrecording:complete"

    const-string v3, ""

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/events/ScreenRecordingEvent;->formatForCompleteEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_4
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$200(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/google/android/gms/games/video/CaptureState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/games/video/CaptureState;->isOverlayVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/games/video/CaptureState;->isOverlayVisible()Z

    move-result v1

    if-nez v1, :cond_5

    .line 325
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v1

    const-string v2, "screenrecording:controls:closed"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$400(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v2, v2, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$300(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1, v7}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$402(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;Landroid/os/Handler;)Landroid/os/Handler;

    .line 329
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1, v7}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$302(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 331
    const/4 v0, 0x0

    .line 334
    :cond_5
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v1, v0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$202(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;Lcom/google/android/gms/games/video/CaptureState;)Lcom/google/android/gms/games/video/CaptureState;

    goto/16 :goto_0
.end method
