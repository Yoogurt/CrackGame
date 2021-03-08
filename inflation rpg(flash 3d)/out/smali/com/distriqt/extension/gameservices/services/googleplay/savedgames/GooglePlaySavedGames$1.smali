.class Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$1;
.super Ljava/lang/Object;
.source "GooglePlaySavedGames.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->loadSavedGames(Z)V
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
        "Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 8
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
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/AnnotatedData<Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;>;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v2, "savedGames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/SavedGame;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v5}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    .line 110
    .local v4, "snapshots":Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;
    invoke-virtual {v4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 111
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/gms/games/snapshot/SnapshotMetadata;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    .line 114
    .local v3, "snapshot":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromSnapshotMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/distriqt/extension/gameservices/objects/SavedGame;

    move-result-object v1

    .line 115
    .local v1, "savedGame":Lcom/distriqt/extension/gameservices/objects/SavedGame;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v1    # "savedGame":Lcom/distriqt/extension/gameservices/objects/SavedGame;
    .end local v3    # "snapshot":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->release()V

    .line 119
    iget-object v5, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v5}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v5

    const-string v6, "savedgames:load:success"

    .line 121
    invoke-static {v2}, Lcom/distriqt/extension/gameservices/events/SavedGamesEvent;->formatSavedGamesForEvent(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-interface {v5, v6, v7}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/gms/games/snapshot/SnapshotMetadata;>;"
    .end local v2    # "savedGames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/SavedGame;>;"
    .end local v4    # "snapshots":Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;
    :goto_1
    return-void

    .line 125
    :cond_1
    iget-object v5, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v5}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v5

    const-string v6, "savedgames:load:error"

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v7

    invoke-static {v7}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-interface {v5, v6, v7}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
