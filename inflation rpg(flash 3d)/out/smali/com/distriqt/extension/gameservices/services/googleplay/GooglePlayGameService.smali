.class public Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;
.super Lcom/distriqt/core/ActivityStateListener;
.source "GooglePlayGameService.java"

# interfaces
.implements Lcom/distriqt/extension/gameservices/services/IGameService;
.implements Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;


# static fields
.field public static final RC_SIGN_IN:I = 0x2329

.field public static TAG:Ljava/lang/String;


# instance fields
.field private _achievements:Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;

.field private _authUtil:Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;

.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field private _imageManager:Lcom/google/android/gms/common/images/ImageManager;

.field private _invitationCallback:Lcom/google/android/gms/games/multiplayer/InvitationCallback;

.field private _leaderboards:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

.field private _loadingPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/Player;",
            ">;"
        }
    .end annotation
.end field

.field private _player:Lcom/google/android/gms/games/Player;

.field private _players:Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;

.field private _quests:Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;

.field private _recording:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

.field private _savedGames:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

.field private _service:Lcom/distriqt/extension/gameservices/services/Service;

.field private _signInAttempted:Z

.field private _signInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field private _turnBasedMultiplayer:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 2
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    .line 93
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_signInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 95
    iput-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 97
    iput-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_imageManager:Lcom/google/android/gms/common/images/ImageManager;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_signInAttempted:Z

    .line 715
    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$7;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$7;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_invitationCallback:Lcom/google/android/gms/games/multiplayer/InvitationCallback;

    .line 122
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_loadingPlayers:Ljava/util/ArrayList;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;
    .param p1, "x1"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->handleSignInSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method static synthetic access$100(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object v0
.end method

.method static synthetic access$202(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;Lcom/google/android/gms/games/Player;)Lcom/google/android/gms/games/Player;
    .locals 0
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;
    .param p1, "x1"    # Lcom/google/android/gms/games/Player;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_player:Lcom/google/android/gms/games/Player;

    return-object p1
.end method

.method private getPlayerByIconUri(Ljava/lang/String;)Lcom/distriqt/extension/gameservices/objects/Player;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 501
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_loadingPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/distriqt/extension/gameservices/objects/Player;

    .line 503
    .local v0, "p":Lcom/distriqt/extension/gameservices/objects/Player;
    iget-object v2, v0, Lcom/distriqt/extension/gameservices/objects/Player;->iconUrl:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_loadingPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 509
    .end local v0    # "p":Lcom/distriqt/extension/gameservices/objects/Player;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleSignInSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3
    .param p1, "account"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getPlayersClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayersClient;->getCurrentPlayer()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$2;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$2;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)V

    .line 352
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 369
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getGamesClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/GamesClient;

    move-result-object v0

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 370
    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/GamesClient;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/tasks/Task;

    .line 372
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_recording:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_recording:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-virtual {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->handleSignIn()V

    .line 373
    :cond_0
    return-void
.end method


# virtual methods
.method public achievements()Lcom/distriqt/extension/gameservices/services/IAchievements;
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_achievements:Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;

    if-nez v0, :cond_0

    .line 625
    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_achievements:Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_achievements:Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;

    return-object v0
.end method

.method public authUtil()Lcom/distriqt/extension/gameservices/services/IAuthUtil;
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_authUtil:Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_authUtil:Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_authUtil:Lcom/distriqt/extension/gameservices/services/googleplay/auth/GooglePlayAuthUtil;

    return-object v0
.end method

.method public getPlayer()Lcom/distriqt/extension/gameservices/objects/Player;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 404
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v2, "getPlayer()"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_player:Lcom/google/android/gms/games/Player;

    if-nez v1, :cond_1

    .line 407
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v2, "getPlayer(): player is null so start async update"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 410
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getPlayersClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayersClient;->getCurrentPlayer()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$4;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$4;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)V

    .line 414
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 436
    :cond_0
    const/4 v1, 0x0

    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :goto_0
    return-object v1

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_player:Lcom/google/android/gms/games/Player;

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromPlayer(Lcom/google/android/gms/games/Player;)Lcom/distriqt/extension/gameservices/objects/Player;

    move-result-object v1

    goto :goto_0
.end method

.method public initialiseService(Lcom/distriqt/extension/gameservices/services/Service;)Z
    .locals 7
    .param p1, "service"    # Lcom/distriqt/extension/gameservices/services/Service;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 229
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v2, "initialiseService( %s )"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/distriqt/extension/gameservices/services/Service;->serviceId:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iput-boolean v5, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_signInAttempted:Z

    .line 232
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_service:Lcom/distriqt/extension/gameservices/services/Service;

    .line 234
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 237
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 240
    .local v0, "builder":Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;
    iget-object v1, p1, Lcom/distriqt/extension/gameservices/services/Service;->serverClientId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/distriqt/extension/gameservices/services/Service;->serverClientId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 242
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v2, "initialiseService(): requesting server auth"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v1, p1, Lcom/distriqt/extension/gameservices/services/Service;->serverClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 244
    iget-object v1, p1, Lcom/distriqt/extension/gameservices/services/Service;->serverClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 247
    :cond_0
    iget-boolean v1, p1, Lcom/distriqt/extension/gameservices/services/Service;->enableSavedGames:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    new-array v2, v5, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 250
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_signInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 252
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v2, Lcom/distriqt/extension/gameservices/events/GameServicesEvent;->INITIALISED:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return v6
.end method

.method public isInitialised()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_service:Lcom/distriqt/extension/gameservices/services/Service;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSignedIn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 272
    iget-boolean v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_signInAttempted:Z

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 274
    :cond_0
    return v0
.end method

.method public leaderboards()Lcom/distriqt/extension/gameservices/services/ILeaderboards;
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_leaderboards:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_leaderboards:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_leaderboards:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    return-object v0
.end method

.method public loadInvites()V
    .locals 4

    .prologue
    .line 543
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v2, "loadInvites()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 545
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 547
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getInvitationsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/InvitationsClient;

    move-result-object v1

    .line 548
    invoke-virtual {v1}, Lcom/google/android/gms/games/InvitationsClient;->loadInvitations()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$6;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$6;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)V

    .line 549
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 583
    :cond_0
    return-void
.end method

.method public loadPlayerIcon(Lcom/distriqt/extension/gameservices/objects/Player;)Z
    .locals 7
    .param p1, "player"    # Lcom/distriqt/extension/gameservices/objects/Player;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 443
    sget-object v3, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v4, "loadPlayerIcon( %s )"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/distriqt/extension/gameservices/objects/Player;->id:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    :try_start_0
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_imageManager:Lcom/google/android/gms/common/images/ImageManager;

    if-nez v3, :cond_0

    .line 448
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_imageManager:Lcom/google/android/gms/common/images/ImageManager;

    .line 451
    :cond_0
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_imageManager:Lcom/google/android/gms/common/images/ImageManager;

    iget-object v4, p1, Lcom/distriqt/extension/gameservices/objects/Player;->iconUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/google/android/gms/common/images/ImageManager;->loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    .line 453
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_loadingPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return v1

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v3, "player:icon:error"

    .line 461
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/distriqt/extension/gameservices/events/PlayerIconEvent;->formatForError(Lcom/distriqt/extension/gameservices/objects/Player;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 459
    invoke-interface {v1, v3, v4}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 463
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 149
    sget-object v3, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v4, "onActivityResult( %d,  %d, ... )"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    sparse-switch p1, :sswitch_data_0

    .line 207
    :goto_0
    iget-boolean v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_signInAttempted:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->isSignedIn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_player:Lcom/google/android/gms/games/Player;

    .line 210
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v4, Lcom/distriqt/extension/gameservices/events/GameServicesEvent;->SIGN_OUT_SUCCESS:Ljava/lang/String;

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    return-void

    .line 154
    :sswitch_0
    sget-object v3, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {v3, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object v2

    .line 155
    .local v2, "result":Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 158
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    invoke-direct {p0, v0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->handleSignInSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    goto :goto_0

    .line 162
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    :cond_2
    const-string v1, "There was an issue with sign in.  Please try again later."

    .line 168
    :cond_3
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v4, Lcom/distriqt/extension/gameservices/events/GameServicesEvent;->SIGN_IN_FAILED:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "result":Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    :sswitch_1
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_leaderboards:Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;

    invoke-virtual {v3, p1, p2, p3}, Lcom/distriqt/extension/gameservices/services/googleplay/leaderboards/GooglePlayLeaderboards;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 182
    :sswitch_2
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_achievements:Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;

    invoke-virtual {v3, p1, p2, p3}, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 188
    :sswitch_3
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_savedGames:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-virtual {v3, p1, p2, p3}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 194
    :sswitch_4
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_quests:Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;

    invoke-virtual {v3, p1, p2, p3}, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 200
    :sswitch_5
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_recording:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-virtual {v3, p1, p2, p3}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x2329 -> :sswitch_0
        0x33e98bc -> :sswitch_5
        0x5dfe801 -> :sswitch_1
        0x5dfe80b -> :sswitch_2
        0x5dfe815 -> :sswitch_4
        0x5dfe81f -> :sswitch_3
    .end sparse-switch
.end method

.method public onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "isRequestedDrawable"    # Z

    .prologue
    .line 474
    invoke-static {p2}, Lcom/distriqt/core/utils/FREImageUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 476
    .local v0, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->getPlayerByIconUri(Ljava/lang/String;)Lcom/distriqt/extension/gameservices/objects/Player;

    move-result-object v1

    .line 478
    .local v1, "player":Lcom/distriqt/extension/gameservices/objects/Player;
    if-nez v1, :cond_0

    .line 480
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v3, "player:icon:error"

    const-string v4, "player could not be found"

    .line 482
    invoke-static {v1, v4}, Lcom/distriqt/extension/gameservices/events/PlayerIconEvent;->formatForError(Lcom/distriqt/extension/gameservices/objects/Player;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-interface {v2, v3, v4}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :goto_0
    return-void

    .line 484
    :cond_0
    if-nez v0, :cond_1

    .line 486
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v3, "player:icon:error"

    const-string v4, "icon failed to load"

    .line 488
    invoke-static {v1, v4}, Lcom/distriqt/extension/gameservices/events/PlayerIconEvent;->formatForError(Lcom/distriqt/extension/gameservices/objects/Player;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 486
    invoke-interface {v2, v3, v4}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v3, "player:icon:loaded"

    .line 494
    invoke-static {v0}, Lcom/distriqt/core/utils/FREImageUtils;->drawBitmapToBitmapDataBase64String(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/distriqt/extension/gameservices/events/PlayerIconEvent;->formatForEvent(Lcom/distriqt/extension/gameservices/objects/Player;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 492
    invoke-interface {v2, v3, v4}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public players()Lcom/distriqt/extension/gameservices/services/IPlayers;
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_players:Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_players:Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_players:Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;

    return-object v0
.end method

.method public quests()Lcom/distriqt/extension/gameservices/services/IQuests;
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_quests:Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_quests:Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_quests:Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;

    return-object v0
.end method

.method public recording()Lcom/distriqt/extension/gameservices/services/IScreenRecording;
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_recording:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_recording:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_recording:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    return-object v0
.end method

.method public register()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 520
    sget-object v2, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v3, "register()"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v2}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 522
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 524
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getInvitationsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/InvitationsClient;

    move-result-object v1

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_invitationCallback:Lcom/google/android/gms/games/multiplayer/InvitationCallback;

    .line 525
    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/InvitationsClient;->registerInvitationCallback(Lcom/google/android/gms/games/multiplayer/InvitationCallback;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$5;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$5;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)V

    .line 526
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 534
    const/4 v1, 0x1

    .line 536
    :cond_0
    return v1
.end method

.method public savedGames()Lcom/distriqt/extension/gameservices/services/ISavedGames;
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_savedGames:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    if-nez v0, :cond_0

    .line 641
    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_savedGames:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_savedGames:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    return-object v0
.end method

.method public signIn(Z)Z
    .locals 9
    .param p1, "silently"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 281
    sget-object v6, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v7, "signIn( %s )"

    new-array v8, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v3, "true"

    :goto_0
    aput-object v3, v8, v5

    invoke-static {v6, v7, v8}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :try_start_0
    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->isSignedIn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 287
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 289
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->handleSignInSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 329
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_signInAttempted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 341
    :goto_2
    return v3

    .line 281
    :cond_0
    const-string v3, "false"

    goto :goto_0

    .line 291
    :cond_1
    if-eqz p1, :cond_2

    .line 294
    :try_start_1
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_signInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v3, v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v2

    .line 296
    .local v2, "signInClient":Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->silentSignIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v6, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$1;

    invoke-direct {v6, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$1;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 337
    .end local v2    # "signInClient":Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    move v3, v5

    .line 341
    goto :goto_2

    .line 324
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_signInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v3, v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v2

    .line 325
    .restart local v2    # "signInClient":Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v1

    .line 327
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v6, 0x2329

    invoke-virtual {v3, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 334
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "signInClient":Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    :cond_3
    sget-object v3, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v4, "Already signed in"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public signOut()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 379
    sget-object v2, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v3, "signOut"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_signInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    .line 383
    .local v0, "signInClient":Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 384
    invoke-interface {v2}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$3;

    invoke-direct {v3, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$3;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)V

    .line 383
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 395
    const/4 v1, 0x1

    .line 397
    .end local v0    # "signInClient":Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    :cond_0
    return v1
.end method

.method public turnBasedMultiplayer()Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_turnBasedMultiplayer:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_turnBasedMultiplayer:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->_turnBasedMultiplayer:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    return-object v0
.end method
