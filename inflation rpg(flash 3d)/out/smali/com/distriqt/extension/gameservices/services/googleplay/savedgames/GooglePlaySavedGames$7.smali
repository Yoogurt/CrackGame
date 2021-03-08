.class Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$7;
.super Ljava/lang/Object;
.source "GooglePlaySavedGames.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->resolveConflict(Ljava/lang/String;Lcom/distriqt/extension/gameservices/objects/SavedGame;)V
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
        "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict",
        "<",
        "Lcom/google/android/gms/games/snapshot/Snapshot;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

.field final synthetic val$conflict:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$7;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    iput-object p2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$7;->val$conflict:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;

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
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    .line 453
    .local v0, "result":Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;, "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;"
    invoke-virtual {v0}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->isConflict()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$7;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v1, v0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$100(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;)V

    .line 477
    .end local v0    # "result":Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;, "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;"
    :goto_0
    return-void

    .line 459
    .restart local v0    # "result":Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;, "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;"
    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$7;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v2

    const-string v3, "savedgames:conflict:resolve:success"

    .line 462
    invoke-virtual {v0}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/distriqt/extension/gameservices/objects/SavedGame;

    move-result-object v1

    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$7;->val$conflict:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;

    iget-object v4, v4, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;->conflictId:Ljava/lang/String;

    .line 461
    invoke-static {v1, v4}, Lcom/distriqt/extension/gameservices/events/SavedGamesEvent;->formatSavedGamesForEvent(Lcom/distriqt/extension/gameservices/objects/SavedGame;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-interface {v2, v3, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$7;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$200(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$7;->val$conflict:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 472
    .end local v0    # "result":Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;, "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;"
    :cond_1
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$7;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v1

    const-string v2, "savedgames:conflict:resolve:error"

    .line 474
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    .line 472
    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
