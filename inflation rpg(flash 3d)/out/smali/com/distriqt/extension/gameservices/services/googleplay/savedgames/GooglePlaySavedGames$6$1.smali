.class Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6$1;
.super Ljava/lang/Object;
.source "GooglePlaySavedGames.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;->onComplete(Lcom/google/android/gms/tasks/Task;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;

    iget-object v0, v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v1

    const-string v2, "savedgames:delete:success"

    .line 388
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    invoke-interface {v1, v2, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;

    iget-object v0, v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "savedgames:delete:error"

    .line 395
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
