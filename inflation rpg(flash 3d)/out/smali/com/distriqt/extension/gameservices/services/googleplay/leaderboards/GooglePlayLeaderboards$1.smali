.class Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$1;
.super Ljava/lang/Object;
.source "GooglePlayLeaderboards.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->loadLeaderboards(Ljava/lang/Boolean;)V
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
        "Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;",
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
    .line 95
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 7
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
            "Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/AnnotatedData<Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;>;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "boards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/Leaderboard;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v4}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    .line 103
    .local v2, "googleBoards":Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
    invoke-virtual {v2}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 104
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/gms/games/leaderboard/Leaderboard;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    .line 108
    .local v1, "googleBoard":Lcom/google/android/gms/games/leaderboard/Leaderboard;
    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromLeaderboard(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Lcom/distriqt/extension/gameservices/objects/Leaderboard;

    move-result-object v4

    .line 107
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v1    # "googleBoard":Lcom/google/android/gms/games/leaderboard/Leaderboard;
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->release()V

    .line 113
    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    invoke-static {v4}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v4

    const-string v5, "leaderboards:loaded"

    .line 115
    invoke-static {v0}, Lcom/distriqt/extension/gameservices/events/LeaderboardEvent;->formatLeaderboardsForEvent(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    .line 113
    invoke-interface {v4, v5, v6}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v0    # "boards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/Leaderboard;>;"
    .end local v2    # "googleBoards":Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/gms/games/leaderboard/Leaderboard;>;"
    :goto_1
    return-void

    .line 119
    :cond_1
    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    invoke-static {v4}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v4

    const-string v5, "leaderboards:error"

    .line 121
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-static {v6}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-interface {v4, v5, v6}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
