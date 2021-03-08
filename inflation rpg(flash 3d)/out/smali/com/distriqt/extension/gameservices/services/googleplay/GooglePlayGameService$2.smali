.class Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$2;
.super Ljava/lang/Object;
.source "GooglePlayGameService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->handleSignInSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
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
        "Lcom/google/android/gms/games/Player;",
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
    .line 353
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$2;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/Player;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/Player;>;"
    :try_start_0
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$2;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    const-class v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/Player;

    invoke-static {v2, v1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->access$202(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;Lcom/google/android/gms/games/Player;)Lcom/google/android/gms/games/Player;
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$2;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->access$100(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v1

    sget-object v2, Lcom/distriqt/extension/gameservices/events/GameServicesEvent;->SIGN_IN_SUCCESS:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Lcom/google/android/gms/common/api/ApiException;
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting player: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
