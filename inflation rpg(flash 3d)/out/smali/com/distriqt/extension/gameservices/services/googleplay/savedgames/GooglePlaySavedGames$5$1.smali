.class Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5$1;
.super Ljava/lang/Object;
.source "GooglePlaySavedGames.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->onComplete(Lcom/google/android/gms/tasks/Task;)V
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
        "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;

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
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/snapshot/SnapshotMetadata;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    .line 316
    .local v0, "result":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->TAG:Ljava/lang/String;

    const-string v2, "openGame::Games.getSnapshotsClient.commitAndClose( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v1

    const-string v2, "savedgames:save:success"

    .line 320
    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromSnapshotMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/distriqt/extension/gameservices/objects/SavedGame;

    move-result-object v3

    .line 319
    invoke-static {v3}, Lcom/distriqt/extension/gameservices/events/SavedGamesEvent;->formatSavedGamesForEvent(Lcom/distriqt/extension/gameservices/objects/SavedGame;)Ljava/lang/String;

    move-result-object v3

    .line 317
    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v0    # "result":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5$1;->this$1:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v1

    const-string v2, "savedgames:save:error"

    .line 328
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
