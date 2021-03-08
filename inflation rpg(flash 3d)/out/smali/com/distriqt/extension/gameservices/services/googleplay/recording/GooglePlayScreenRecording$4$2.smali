.class Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4$2;
.super Ljava/lang/Object;
.source "GooglePlayScreenRecording.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4$2;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 225
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v1, "start()::onSuccess()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4$2;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;

    iget-object v0, v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x33e98bc

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 221
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4$2;->onSuccess(Landroid/content/Intent;)V

    return-void
.end method
