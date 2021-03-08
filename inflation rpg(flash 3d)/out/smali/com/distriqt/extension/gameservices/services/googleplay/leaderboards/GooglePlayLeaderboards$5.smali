.class Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$5;
.super Ljava/lang/Object;
.source "GooglePlayLeaderboards.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->loadPlayerScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/google/android/gms/games/AnnotatedData",
        "<",
        "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

.field final synthetic val$leaderboardId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    iput-object p2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$5;->val$leaderboardId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/AnnotatedData<Lcom/google/android/gms/games/leaderboard/LeaderboardScore;>;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    .line 306
    .local v1, "gpgScore":Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    if-eqz v1, :cond_0

    .line 308
    new-instance v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;

    invoke-direct {v0}, Lcom/distriqt/extension/gameservices/objects/Leaderboard;-><init>()V

    .line 309
    .local v0, "board":Lcom/distriqt/extension/gameservices/objects/Leaderboard;
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$5;->val$leaderboardId:Ljava/lang/String;

    iput-object v3, v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->id:Ljava/lang/String;

    .line 310
    const-string v3, ""

    iput-object v3, v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->displayName:Ljava/lang/String;

    .line 311
    const-string v3, ""

    iput-object v3, v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->scoreOrder:Ljava/lang/String;

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v2, "scores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;>;"
    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromLeaderboardScore(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v3

    const-string v4, "leaderboard:playerscore:loaded"

    .line 318
    invoke-static {v0, v2}, Lcom/distriqt/extension/gameservices/events/LeaderboardEvent;->formatScoresForEvent(Lcom/distriqt/extension/gameservices/objects/Leaderboard;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .end local v0    # "board":Lcom/distriqt/extension/gameservices/objects/Leaderboard;
    .end local v1    # "gpgScore":Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    .end local v2    # "scores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;>;"
    :goto_0
    return-void

    .line 322
    .restart local v1    # "gpgScore":Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    :cond_0
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v3

    const-string v4, "leaderboard:playerscore:error"

    .line 324
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-static {v5}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    .end local v1    # "gpgScore":Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    :cond_1
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v3

    const-string v4, "leaderboard:playerscore:error"

    .line 331
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-static {v5}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
