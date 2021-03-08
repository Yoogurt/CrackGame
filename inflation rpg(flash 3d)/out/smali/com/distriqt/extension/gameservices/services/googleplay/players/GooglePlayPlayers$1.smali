.class Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers$1;
.super Ljava/lang/Object;
.source "GooglePlayPlayers.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;->loadPlayerFriends()Z
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
        "Lcom/google/android/gms/games/PlayerBuffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;

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
            "Lcom/google/android/gms/games/PlayerBuffer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/AnnotatedData<Lcom/google/android/gms/games/PlayerBuffer;>;>;"
    sget-object v4, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;->TAG:Ljava/lang/String;

    const-string v5, "loadPlayerFriends::onComplete"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v4}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/PlayerBuffer;

    .line 91
    .local v1, "googlePlayers":Lcom/google/android/gms/games/PlayerBuffer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v3, "players":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/Player;>;"
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 94
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/gms/games/Player;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Player;

    .line 98
    .local v0, "googlePlayer":Lcom/google/android/gms/games/Player;
    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromPlayer(Lcom/google/android/gms/games/Player;)Lcom/distriqt/extension/gameservices/objects/Player;

    move-result-object v4

    .line 97
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v0    # "googlePlayer":Lcom/google/android/gms/games/Player;
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    .line 102
    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;

    invoke-static {v4}, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v4

    const-string v5, "players:loadPlayerFriends:success"

    .line 104
    invoke-static {v3}, Lcom/distriqt/extension/gameservices/events/PlayersEvent;->formatPlayersForEvent(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-interface {v4, v5, v6}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .end local v1    # "googlePlayers":Lcom/google/android/gms/games/PlayerBuffer;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/gms/games/Player;>;"
    .end local v3    # "players":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/Player;>;"
    :goto_1
    return-void

    .line 108
    :cond_1
    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;

    invoke-static {v4}, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v4

    const-string v5, "players:loadPlayerFriends:error"

    .line 110
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-static {v6}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-interface {v4, v5, v6}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
