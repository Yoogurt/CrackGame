.class Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$3;
.super Ljava/lang/Object;
.source "GooglePlayGameService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->signOut()Z
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
        "Ljava/lang/Void;",
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
    .line 386
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$3;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$3;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->access$202(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;Lcom/google/android/gms/games/Player;)Lcom/google/android/gms/games/Player;

    .line 391
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$3;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->access$100(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    sget-object v1, Lcom/distriqt/extension/gameservices/events/GameServicesEvent;->SIGN_OUT_SUCCESS:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method
