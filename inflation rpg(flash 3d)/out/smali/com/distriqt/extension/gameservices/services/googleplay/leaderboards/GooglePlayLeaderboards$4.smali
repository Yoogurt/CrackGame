.class Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$4;
.super Ljava/lang/Object;
.source "GooglePlayLeaderboards.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->loadPlayerCenteredScores(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
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
        "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$4;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 12
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
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/AnnotatedData<Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;>;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v7}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;

    .line 255
    .local v5, "result":Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;
    invoke-virtual {v5}, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->getLeaderboard()Lcom/google/android/gms/games/leaderboard/Leaderboard;

    move-result-object v1

    .line 257
    .local v1, "googleBoard":Lcom/google/android/gms/games/leaderboard/Leaderboard;
    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromLeaderboard(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Lcom/distriqt/extension/gameservices/objects/Leaderboard;

    move-result-object v0

    .line 259
    .local v0, "board":Lcom/distriqt/extension/gameservices/objects/Leaderboard;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v6, "scores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;>;"
    invoke-virtual {v5}, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    move-result-object v3

    .line 261
    .local v3, "googleScores":Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    sget-object v7, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->TAG:Ljava/lang/String;

    const-string v8, "loadTopScores::onResult(): %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    invoke-virtual {v3}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 263
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/gms/games/leaderboard/LeaderboardScore;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 265
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    .line 266
    .local v2, "googleScore":Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    invoke-static {v2}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromLeaderboardScore(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    .end local v2    # "googleScore":Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->release()V

    .line 270
    iget-object v7, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$4;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    invoke-static {v7}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v7

    const-string v8, "leaderboard:playercenteredscores:loaded"

    .line 272
    invoke-static {v0, v6}, Lcom/distriqt/extension/gameservices/events/LeaderboardEvent;->formatScoresForEvent(Lcom/distriqt/extension/gameservices/objects/Leaderboard;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    .line 270
    invoke-interface {v7, v8, v9}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .end local v0    # "board":Lcom/distriqt/extension/gameservices/objects/Leaderboard;
    .end local v1    # "googleBoard":Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .end local v3    # "googleScores":Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/gms/games/leaderboard/LeaderboardScore;>;"
    .end local v5    # "result":Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;
    .end local v6    # "scores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;>;"
    :goto_1
    return-void

    .line 276
    :cond_1
    iget-object v7, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$4;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    invoke-static {v7}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v7

    const-string v8, "leaderboard:playercenteredscores:error"

    .line 278
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v9

    invoke-static {v9}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    .line 276
    invoke-interface {v7, v8, v9}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
