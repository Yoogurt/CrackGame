.class public Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;
.super Lcom/distriqt/core/ActivityStateListener;
.source "GooglePlayLeaderboards.java"

# interfaces
.implements Lcom/distriqt/extension/gameservices/services/ILeaderboards;


# static fields
.field public static final RC_DISPLAY_LEADERBOARD_UI:I = 0x5dfe801

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 70
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object v0
.end method


# virtual methods
.method public displayLeaderboardUI(Ljava/lang/String;)V
    .locals 5
    .param p1, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 381
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->TAG:Ljava/lang/String;

    const-string v2, "displayLeaderboardUI( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 384
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_1

    .line 386
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Lcom/google/android/gms/games/LeaderboardsClient;->getAllLeaderboardsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$7;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$7;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)V

    .line 390
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v1

    .line 402
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/LeaderboardsClient;->getLeaderboardIntent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$8;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$8;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)V

    .line 403
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public loadLeaderboards(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "forceReload"    # Ljava/lang/Boolean;

    .prologue
    .line 88
    sget-object v2, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->TAG:Ljava/lang/String;

    const-string v3, "loadLeaderboards( %s )"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "true"

    :goto_0
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 90
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/LeaderboardsClient;->loadLeaderboardMetadata(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$1;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$1;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)V

    .line 94
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 126
    :cond_0
    return-void

    .line 88
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_1
    const-string v1, "false"

    goto :goto_0
.end method

.method public loadPlayerCenteredScores(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .param p3, "span"    # Ljava/lang/String;
    .param p4, "collection"    # Ljava/lang/String;
    .param p5, "forceReload"    # Ljava/lang/Boolean;

    .prologue
    .line 238
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->TAG:Ljava/lang/String;

    const-string v4, "loadPlayerCenteredScores( %s, %d, %s, %s, %s )"

    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v0

    const/4 v0, 0x2

    aput-object p3, v5, v0

    const/4 v0, 0x3

    aput-object p4, v5, v0

    const/4 v7, 0x4

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_0
    aput-object v0, v5, v7

    invoke-static {v1, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v6

    .line 240
    .local v6, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v6, :cond_0

    .line 242
    invoke-static {p3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->convertLeaderboardSpan(Ljava/lang/String;)I

    move-result v2

    .line 243
    .local v2, "spanInt":I
    invoke-static {p4}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->convertLeaderboardCollection(Ljava/lang/String;)I

    move-result v3

    .line 245
    .local v3, "collectionInt":I
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    .line 246
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/LeaderboardsClient;->loadPlayerCenteredScores(Ljava/lang/String;IIIZ)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$4;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$4;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)V

    .line 247
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 283
    .end local v2    # "spanInt":I
    .end local v3    # "collectionInt":I
    :cond_0
    return-void

    .line 238
    .end local v6    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method

.method public loadPlayerScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "span"    # Ljava/lang/String;
    .param p3, "collection"    # Ljava/lang/String;

    .prologue
    .line 289
    sget-object v3, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->TAG:Ljava/lang/String;

    const-string v4, "loadPlayerScore( %s, %s, %s )"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 291
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 293
    invoke-static {p2}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->convertLeaderboardSpan(Ljava/lang/String;)I

    move-result v2

    .line 294
    .local v2, "spanInt":I
    invoke-static {p3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->convertLeaderboardCollection(Ljava/lang/String;)I

    move-result v1

    .line 296
    .local v1, "collectionInt":I
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v3

    .line 297
    invoke-virtual {v3, p1, v2, v1}, Lcom/google/android/gms/games/LeaderboardsClient;->loadCurrentPlayerLeaderboardScore(Ljava/lang/String;II)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$5;

    invoke-direct {v4, p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$5;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 336
    .end local v1    # "collectionInt":I
    .end local v2    # "spanInt":I
    :cond_0
    return-void
.end method

.method public loadScores(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "maxResults"    # I
    .param p4, "span"    # Ljava/lang/String;
    .param p5, "collection"    # Ljava/lang/String;
    .param p6, "forceReload"    # Ljava/lang/Boolean;

    .prologue
    .line 183
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->TAG:Ljava/lang/String;

    const-string v4, "loadScores( %s, %d, %d, %s, %s, %s )"

    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v0

    const/4 v0, 0x3

    aput-object p4, v5, v0

    const/4 v0, 0x4

    aput-object p5, v5, v0

    const/4 v7, 0x5

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_0
    aput-object v0, v5, v7

    invoke-static {v1, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v6

    .line 189
    .local v6, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v6, :cond_0

    .line 191
    invoke-static {p4}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->convertLeaderboardSpan(Ljava/lang/String;)I

    move-result v2

    .line 192
    .local v2, "spanInt":I
    invoke-static {p5}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->convertLeaderboardCollection(Ljava/lang/String;)I

    move-result v3

    .line 194
    .local v3, "collectionInt":I
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    .line 195
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/LeaderboardsClient;->loadTopScores(Ljava/lang/String;IIIZ)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$3;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$3;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)V

    .line 196
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 232
    .end local v2    # "spanInt":I
    .end local v3    # "collectionInt":I
    :cond_0
    return-void

    .line 183
    .end local v6    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method

.method public loadTopScores(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .param p3, "span"    # Ljava/lang/String;
    .param p4, "collection"    # Ljava/lang/String;
    .param p5, "forceReload"    # Ljava/lang/Boolean;

    .prologue
    .line 132
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->TAG:Ljava/lang/String;

    const-string v4, "loadTopScores( %s, %d, %s, %s, %s )"

    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v0

    const/4 v0, 0x2

    aput-object p3, v5, v0

    const/4 v0, 0x3

    aput-object p4, v5, v0

    const/4 v7, 0x4

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_0
    aput-object v0, v5, v7

    invoke-static {v1, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v6

    .line 134
    .local v6, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v6, :cond_0

    .line 136
    invoke-static {p3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->convertLeaderboardSpan(Ljava/lang/String;)I

    move-result v2

    .line 137
    .local v2, "spanInt":I
    invoke-static {p4}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->convertLeaderboardCollection(Ljava/lang/String;)I

    move-result v3

    .line 139
    .local v3, "collectionInt":I
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    .line 140
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/LeaderboardsClient;->loadTopScores(Ljava/lang/String;IIIZ)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$2;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$2;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 177
    .end local v2    # "spanInt":I
    .end local v3    # "collectionInt":I
    :cond_0
    return-void

    .line 132
    .end local v6    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 423
    packed-switch p1, :pswitch_data_0

    .line 429
    :goto_0
    return-void

    .line 426
    :pswitch_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "leaderboard:ui:closed"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x5dfe801
        :pswitch_0
    .end packed-switch
.end method

.method public submitScore(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "score"    # J
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 342
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->TAG:Ljava/lang/String;

    const-string v2, "submitScore( %s, %d, %s )"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 346
    :cond_0
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->TAG:Ljava/lang/String;

    const-string v2, "submitScore:: INVALID LEADERBOARD ID"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 350
    :cond_2
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 351
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_1

    .line 353
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v1

    .line 354
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/gms/games/LeaderboardsClient;->submitScoreImmediate(Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$6;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards$6;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;)V

    .line 355
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0
.end method
