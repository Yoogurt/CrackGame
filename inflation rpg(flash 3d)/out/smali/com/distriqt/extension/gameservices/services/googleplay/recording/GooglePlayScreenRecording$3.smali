.class Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$3;
.super Ljava/lang/Object;
.source "GooglePlayScreenRecording.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->checkAvailability()Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$3;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v1, "checkAvailability()::onComplete()[%b]: %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$3;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$102(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;Z)Z

    .line 173
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$3;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "screenrecording:availability:changed"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$3;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    .line 175
    invoke-static {v2}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$100(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Z

    move-result v2

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/events/ScreenRecordingEvent;->formatAvailabilityForEvent(Z)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method
