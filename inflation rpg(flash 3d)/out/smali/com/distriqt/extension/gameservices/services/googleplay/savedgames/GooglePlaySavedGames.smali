.class public Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;
.super Lcom/distriqt/core/ActivityStateListener;
.source "GooglePlaySavedGames.java"

# interfaces
.implements Lcom/distriqt/extension/gameservices/services/ISavedGames;


# static fields
.field public static final RC_DISPLAY_SAVEDGAMES_UI:I = 0x5dfe81f

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field private _pendingConflicts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 75
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_pendingConflicts:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;)V
    .locals 0
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;
    .param p1, "x1"    # Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->dispatchConflict(Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;)V

    return-void
.end method

.method static synthetic access$200(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_pendingConflicts:Ljava/util/ArrayList;

    return-object v0
.end method

.method private dispatchConflict(Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;, "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<Lcom/google/android/gms/games/snapshot/Snapshot;>;"
    const/4 v7, 0x2

    .line 505
    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;

    invoke-direct {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;-><init>()V

    .line 506
    .local v0, "conflict":Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;
    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getConflict()Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->getConflictId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;->conflictId:Ljava/lang/String;

    .line 507
    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getConflict()Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v2

    iput-object v2, v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;->snapshotA:Lcom/google/android/gms/games/snapshot/Snapshot;

    .line 508
    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getConflict()Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;->getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;

    move-result-object v2

    iput-object v2, v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;->snapshotB:Lcom/google/android/gms/games/snapshot/Snapshot;

    .line 510
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_pendingConflicts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v2, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->TAG:Ljava/lang/String;

    const-string v3, "dispatchConflict( %s, %s )"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;->snapshotA:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-interface {v6}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;->snapshotB:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-interface {v6}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 515
    .local v1, "savedgames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/SavedGame;>;"
    iget-object v2, v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;->snapshotA:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/distriqt/extension/gameservices/objects/SavedGame;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v2, v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;->snapshotB:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/distriqt/extension/gameservices/objects/SavedGame;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v3, "savedgames:conflict"

    iget-object v4, v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;->conflictId:Ljava/lang/String;

    .line 520
    invoke-static {v1, v4}, Lcom/distriqt/extension/gameservices/events/SavedGamesEvent;->formatSavedGamesForEvent(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 518
    invoke-interface {v2, v3, v4}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method private findConflict(Ljava/lang/String;)Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;
    .locals 3
    .param p1, "conflictId"    # Ljava/lang/String;

    .prologue
    .line 531
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_pendingConflicts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;

    .line 533
    .local v0, "c":Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;
    iget-object v2, v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;->conflictId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    .end local v0    # "c":Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchSavedGameWithSnapshotMetadata(Lcom/distriqt/extension/gameservices/objects/SavedGame;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Z
    .locals 4
    .param p1, "savedGame"    # Lcom/distriqt/extension/gameservices/objects/SavedGame;
    .param p2, "metadata"    # Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    .prologue
    .line 542
    iget-wide v0, p1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->lastModifiedTimestamp:J

    .line 547
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->playedTime:J

    .line 549
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 552
    const/4 v0, 0x1

    .line 555
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createGame(Ljava/lang/String;)V
    .locals 6
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->TAG:Ljava/lang/String;

    const-string v2, "createGame::Games.Snapshots.open( ..., %s, true )"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 169
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v1

    .line 172
    invoke-virtual {v1, p1, v5}, Lcom/google/android/gms/games/SnapshotsClient;->open(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$3;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$3;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)V

    .line 173
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 209
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v2, "savedgames:create:error"

    const-string v3, "Not available"

    .line 207
    invoke-static {v4, v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteGame(Lcom/distriqt/extension/gameservices/objects/SavedGame;)V
    .locals 6
    .param p1, "savedGame"    # Lcom/distriqt/extension/gameservices/objects/SavedGame;

    .prologue
    const/4 v5, 0x0

    .line 357
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->TAG:Ljava/lang/String;

    const-string v2, "deleteGame( SavedGame(%s) )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->uniqueName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 359
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v1

    iget-object v2, p1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->uniqueName:Ljava/lang/String;

    .line 362
    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/games/SnapshotsClient;->open(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;

    invoke-direct {v2, p0, v0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$6;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 363
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 418
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v2, "savedgames:delete:error"

    const-string v3, "Not available"

    .line 416
    invoke-static {v5, v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 414
    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public displaySavedGamesUI(Ljava/lang/String;ZZI)Z
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "allowAdd"    # Z
    .param p3, "allowDelete"    # Z
    .param p4, "maxSavedGames"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    sget-object v4, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->TAG:Ljava/lang/String;

    const-string v5, "displaySavedGamesUI( %s, %s, %s, %d )"

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v3

    if-eqz p2, :cond_0

    const-string v1, "true"

    :goto_0
    aput-object v1, v6, v2

    const/4 v7, 0x2

    if-eqz p3, :cond_1

    const-string v1, "true"

    :goto_1
    aput-object v1, v6, v7

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 146
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_2

    .line 148
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v1

    .line 149
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/gms/games/SnapshotsClient;->getSelectSnapshotIntent(Ljava/lang/String;ZZI)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v3, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$2;

    invoke-direct {v3, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$2;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)V

    .line 150
    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move v1, v2

    .line 160
    :goto_2
    return v1

    .line 144
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_0
    const-string v1, "false"

    goto :goto_0

    :cond_1
    const-string v1, "false"

    goto :goto_1

    .restart local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_2
    move v1, v3

    .line 160
    goto :goto_2
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public loadSavedGames(Z)V
    .locals 6
    .param p1, "forceReload"    # Z

    .prologue
    const/4 v5, 0x0

    .line 95
    sget-object v2, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->TAG:Ljava/lang/String;

    const-string v3, "loadSavedGames( %s )"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v1, "true"

    :goto_0
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 97
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v1

    .line 100
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/SnapshotsClient;->load(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$1;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$1;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)V

    .line 101
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 138
    :goto_1
    return-void

    .line 95
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_0
    const-string v1, "false"

    goto :goto_0

    .line 134
    .restart local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_1
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v2, "savedgames:load:error"

    const-string v3, "Not available"

    .line 136
    invoke-static {v5, v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 566
    packed-switch p1, :pswitch_data_0

    .line 592
    :goto_0
    return-void

    .line 570
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 572
    const-string v2, "com.google.android.gms.games.SNAPSHOT_METADATA"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 574
    const-string v2, "com.google.android.gms.games.SNAPSHOT_METADATA"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    .line 575
    .local v1, "snapshotMetadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v0, "savedGames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/SavedGame;>;"
    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromSnapshotMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/distriqt/extension/gameservices/objects/SavedGame;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v3, "savedgames:ui:select"

    .line 580
    invoke-static {v0}, Lcom/distriqt/extension/gameservices/events/SavedGamesEvent;->formatSavedGamesForEvent(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 578
    invoke-interface {v2, v3, v4}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .end local v0    # "savedGames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/SavedGame;>;"
    .end local v1    # "snapshotMetadata":Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v3, "savedgames:ui:closed"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_1
    const-string v2, "com.google.android.gms.games.SNAPSHOT_NEW"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v3, "savedgames:ui:new"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 566
    :pswitch_data_0
    .packed-switch 0x5dfe81f
        :pswitch_0
    .end packed-switch
.end method

.method public openGame(Lcom/distriqt/extension/gameservices/objects/SavedGame;)V
    .locals 6
    .param p1, "savedGame"    # Lcom/distriqt/extension/gameservices/objects/SavedGame;

    .prologue
    const/4 v5, 0x0

    .line 215
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->TAG:Ljava/lang/String;

    const-string v2, "openGame::Games.Snapshots.open( ..., SavedGame(%s), false )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->uniqueName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 217
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v1

    iget-object v2, p1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->uniqueName:Ljava/lang/String;

    .line 220
    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/games/SnapshotsClient;->open(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$4;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$4;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)V

    .line 221
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v2, "savedgames:open:error"

    const-string v3, "Not available"

    .line 258
    invoke-static {v5, v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resolveConflict(Ljava/lang/String;Lcom/distriqt/extension/gameservices/objects/SavedGame;)V
    .locals 9
    .param p1, "conflictId"    # Ljava/lang/String;
    .param p2, "savedGame"    # Lcom/distriqt/extension/gameservices/objects/SavedGame;

    .prologue
    const/4 v8, 0x0

    .line 424
    sget-object v3, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->TAG:Ljava/lang/String;

    const-string v4, "resolveConflict( %s, SavedGame(%s) )"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    const/4 v6, 0x1

    iget-object v7, p2, Lcom/distriqt/extension/gameservices/objects/SavedGame;->uniqueName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 426
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_2

    .line 428
    invoke-direct {p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->findConflict(Ljava/lang/String;)Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;

    move-result-object v1

    .line 430
    .local v1, "conflict":Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;
    if-eqz v1, :cond_1

    .line 434
    iget-object v3, v1, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;->snapshotA:Lcom/google/android/gms/games/snapshot/Snapshot;

    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->matchSavedGameWithSnapshotMetadata(Lcom/distriqt/extension/gameservices/objects/SavedGame;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    iget-object v2, v1, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;->snapshotA:Lcom/google/android/gms/games/snapshot/Snapshot;

    .line 443
    .local v2, "snapshot":Lcom/google/android/gms/games/snapshot/Snapshot;
    :goto_0
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v3

    .line 444
    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/games/SnapshotsClient;->resolveConflict(Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$7;

    invoke-direct {v4, p0, v1}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$7;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;)V

    .line 445
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 495
    .end local v1    # "conflict":Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;
    .end local v2    # "snapshot":Lcom/google/android/gms/games/snapshot/Snapshot;
    :goto_1
    return-void

    .line 440
    .restart local v1    # "conflict":Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;
    :cond_0
    iget-object v2, v1, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;->snapshotB:Lcom/google/android/gms/games/snapshot/Snapshot;

    .restart local v2    # "snapshot":Lcom/google/android/gms/games/snapshot/Snapshot;
    goto :goto_0

    .line 482
    .end local v2    # "snapshot":Lcom/google/android/gms/games/snapshot/Snapshot;
    :cond_1
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v4, "savedgames:conflict:resolve:error"

    const-string v5, "Conflict not found"

    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 490
    .end local v1    # "conflict":Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/PendingConflict;
    :cond_2
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v4, "savedgames:conflict:resolve:error"

    const-string v5, "Not available"

    .line 492
    invoke-static {v8, v5}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 490
    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public saveGame(Lcom/distriqt/extension/gameservices/objects/SavedGame;)V
    .locals 6
    .param p1, "savedGame"    # Lcom/distriqt/extension/gameservices/objects/SavedGame;

    .prologue
    const/4 v5, 0x0

    .line 266
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->TAG:Ljava/lang/String;

    const-string v2, "saveGame( SavedGame(%s) )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->uniqueName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v1, p1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->uniqueName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->uniqueName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    :cond_0
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->TAG:Ljava/lang/String;

    const-string v2, "ERROR:: Invalid savedGame"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 275
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_2

    .line 277
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getSnapshotsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/SnapshotsClient;

    move-result-object v1

    iget-object v2, p1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->uniqueName:Ljava/lang/String;

    .line 278
    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/games/SnapshotsClient;->open(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$5;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;Lcom/distriqt/extension/gameservices/objects/SavedGame;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 279
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v2, "savedgames:save:error"

    const-string v3, "Not available"

    .line 349
    invoke-static {v5, v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
