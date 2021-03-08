.class Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$1;
.super Ljava/lang/Object;
.source "GooglePlayGameService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->signIn(Z)Z
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
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

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
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;>;"
    sget-object v2, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v3, "signIn::silentSignIn::onComplete"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 306
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    invoke-static {v2, v0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 317
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    :cond_1
    const-string v1, "There was an issue with sign in.  Please try again later."

    .line 315
    :cond_2
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->access$100(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v2

    sget-object v3, Lcom/distriqt/extension/gameservices/events/GameServicesEvent;->SIGN_IN_FAILED:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
