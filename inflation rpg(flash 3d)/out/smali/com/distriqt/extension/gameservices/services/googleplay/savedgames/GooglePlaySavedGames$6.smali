.class Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;
.super Ljava/lang/Object;
.source "GooglePlaySavedGames.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->deleteGame(Lcom/distriqt/extension/gameservices/objects/SavedGame;)V
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


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    iput-object p2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;->val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

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
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    .line 371
    .local v0, "result":Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;, "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;"
    invoke-virtual {v0}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->isConflict()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v1, v0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$100(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;)V

    .line 409
    .end local v0    # "result":Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;, "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;"
    :goto_0
    return-void

    .line 377
    .restart local v0    # "result":Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;, "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;"
    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;->val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {v1, v2}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v2

    .line 378
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    invoke-virtual {v1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/games/SnapshotsClient;->delete(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6$1;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6$1;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;)V

    .line 379
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 404
    .end local v0    # "result":Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;, "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;"
    :cond_1
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v1

    const-string v2, "savedgames:delete:error"

    .line 406
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    .line 404
    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
