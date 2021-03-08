.class Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$12;
.super Ljava/lang/Object;
.source "GooglePlayTurnBasedMultiplayer.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->leaveMatchDuringTurn(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

.field final synthetic val$matchId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$12;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    iput-object p2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$12;->val$matchId:Ljava/lang/String;

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$12;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "turnbasedmultiplayer:match:leaveMatch:success"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$12;->val$matchId:Ljava/lang/String;

    .line 557
    invoke-static {v2}, Lcom/distriqt/extension/gameservices/events/TurnBasedMatchEvent;->formatForEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 555
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$12;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "turnbasedmultiplayer:match:leaveMatch:failed"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$12;->val$matchId:Ljava/lang/String;

    .line 564
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/distriqt/extension/gameservices/events/TurnBasedMatchEvent;->formatErrorForEvent(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
