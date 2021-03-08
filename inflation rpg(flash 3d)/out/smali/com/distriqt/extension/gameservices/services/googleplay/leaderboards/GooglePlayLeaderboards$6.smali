.class Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$6;
.super Ljava/lang/Object;
.source "GooglePlayLeaderboards.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->submitScore(Ljava/lang/String;JLjava/lang/String;)V
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
        "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$6;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

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
            "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$6;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "leaderboard:submitscore:success"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$6;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "leaderboard:submitscore:error"

    .line 370
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
