.class Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;
.super Ljava/lang/Object;
.source "GooglePlaySavedGames.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->saveGame(Lcom/distriqt/extension/gameservices/objects/SavedGame;)V
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

.field final synthetic val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field final synthetic val$savedGame:Lcom/distriqt/extension/gameservices/objects/SavedGame;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;Lcom/distriqt/extension/gameservices/objects/SavedGame;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    iput-object p2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->val$savedGame:Lcom/distriqt/extension/gameservices/objects/SavedGame;

    iput-object p3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

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
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;>;"
    sget-object v3, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->TAG:Ljava/lang/String;

    const-string v4, "saveGame::onComplete"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    .line 288
    .local v1, "result":Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;, "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;"
    invoke-virtual {v1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->isConflict()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v3, v1}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$100(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;)V

    .line 342
    .end local v1    # "result":Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;, "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;"
    :goto_0
    return-void

    .line 294
    .restart local v1    # "result":Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;, "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;"
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/snapshot/Snapshot;

    .line 295
    .local v2, "snapshot":Lcom/google/android/gms/games/snapshot/Snapshot;
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->val$savedGame:Lcom/distriqt/extension/gameservices/objects/SavedGame;

    iget-object v3, v3, Lcom/distriqt/extension/gameservices/objects/SavedGame;->data:[B

    if-eqz v3, :cond_1

    .line 297
    invoke-interface {v2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v3

    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->val$savedGame:Lcom/distriqt/extension/gameservices/objects/SavedGame;

    iget-object v4, v4, Lcom/distriqt/extension/gameservices/objects/SavedGame;->data:[B

    invoke-interface {v3, v4}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->writeBytes([B)Z

    .line 300
    :cond_1
    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->val$savedGame:Lcom/distriqt/extension/gameservices/objects/SavedGame;

    iget-object v4, v4, Lcom/distriqt/extension/gameservices/objects/SavedGame;->description:Ljava/lang/String;

    .line 302
    invoke-virtual {v3, v4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->val$savedGame:Lcom/distriqt/extension/gameservices/objects/SavedGame;

    iget-wide v4, v4, Lcom/distriqt/extension/gameservices/objects/SavedGame;->playedTime:J

    .line 303
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    move-result-object v3

    .line 304
    invoke-virtual {v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object v0

    .line 306
    .local v0, "metadataChange":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {v3, v4}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v3

    .line 307
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/games/SnapshotsClient;->commitAndClose(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5$1;

    invoke-direct {v4, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5$1;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;)V

    .line 308
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 337
    .end local v0    # "metadataChange":Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    .end local v1    # "result":Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;, "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;"
    .end local v2    # "snapshot":Lcom/google/android/gms/games/snapshot/Snapshot;
    :cond_2
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v3

    const-string v4, "savedgames:save:error"

    .line 339
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-static {v5}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
