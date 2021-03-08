.class public Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;
.super Lcom/distriqt/core/ActivityStateListener;
.source "GooglePlayTurnBasedMultiplayer.java"

# interfaces
.implements Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;


# static fields
.field public static final RC_DISPLAY_PLAYERSELECTION_UI:I = 0x5dfe829

.field public static final TAG:Ljava/lang/String;

.field public static maxMatchDataSize:I


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field private _updateCallback:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchUpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    .line 67
    const/4 v0, -0x1

    sput v0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->maxMatchDataSize:I

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 88
    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$1;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$1;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_updateCallback:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchUpdateCallback;

    .line 79
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object v0
.end method

.method private registerUpdateCallback()V
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 115
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v1

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_updateCallback:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchUpdateCallback;

    .line 118
    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->registerTurnBasedMatchUpdateCallback(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchUpdateCallback;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$2;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$2;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)V

    .line 119
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptInvitation(Ljava/lang/String;)V
    .locals 5
    .param p1, "invitationId"    # Ljava/lang/String;

    .prologue
    .line 671
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v2, "acceptInvitation( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 673
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 675
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v1

    .line 676
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->acceptInvitation(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$16;

    invoke-direct {v2, p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$16;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;Ljava/lang/String;)V

    .line 677
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 699
    :cond_0
    return-void
.end method

.method public cancelMatch(Ljava/lang/String;)V
    .locals 5
    .param p1, "matchId"    # Ljava/lang/String;

    .prologue
    .line 576
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v2, "cancelMatch( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 578
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 580
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v1

    .line 581
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->cancelMatch(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$13;

    invoke-direct {v2, p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$13;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;Ljava/lang/String;)V

    .line 582
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 604
    :cond_0
    return-void
.end method

.method public createMatch(IIILjava/util/ArrayList;)V
    .locals 8
    .param p1, "minAutoMatchPlayers"    # I
    .param p2, "maxAutoMatchPlayers"    # I
    .param p3, "variant"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p4, "invitedPlayers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v4, "createMatch( %d, %d, %d, %s )"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, ","

    invoke-static {v7, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 215
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_1

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, "autoMatchCriteria":Landroid/os/Bundle;
    if-lez p1, :cond_0

    .line 220
    const-wide/16 v4, 0x0

    invoke-static {p1, p2, v4, v5}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->createAutoMatchCriteria(IIJ)Landroid/os/Bundle;

    move-result-object v1

    .line 223
    :cond_0
    invoke-static {}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->builder()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;

    move-result-object v3

    .line 224
    invoke-virtual {v3, p4}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->addInvitedPlayers(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;

    move-result-object v3

    .line 225
    invoke-virtual {v3, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->setAutoMatchCriteria(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;

    move-result-object v3

    .line 226
    invoke-virtual {v3, p3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->setVariant(I)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;

    move-result-object v3

    .line 227
    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->build()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;

    move-result-object v2

    .line 229
    .local v2, "tbmc":Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v3

    .line 230
    invoke-virtual {v3, v2}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->createMatch(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$4;

    invoke-direct {v4, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$4;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)V

    .line 231
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 256
    invoke-direct {p0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->registerUpdateCallback()V

    .line 258
    .end local v1    # "autoMatchCriteria":Landroid/os/Bundle;
    .end local v2    # "tbmc":Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;
    :cond_1
    return-void
.end method

.method public declineInvitation(Ljava/lang/String;)V
    .locals 5
    .param p1, "invitationId"    # Ljava/lang/String;

    .prologue
    .line 705
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v2, "declineInvitation( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 706
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 707
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 709
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v1

    .line 710
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->declineInvitation(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$17;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$17;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)V

    .line 711
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 720
    :cond_0
    return-void
.end method

.method public dismissInvitation(Ljava/lang/String;)V
    .locals 5
    .param p1, "invitationId"    # Ljava/lang/String;

    .prologue
    .line 726
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v2, "dismissInvitation( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 728
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 730
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v1

    .line 731
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->dismissInvitation(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$18;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$18;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)V

    .line 732
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 741
    :cond_0
    return-void
.end method

.method public dismissMatch(Ljava/lang/String;)V
    .locals 5
    .param p1, "matchId"    # Ljava/lang/String;

    .prologue
    .line 610
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v2, "dismissMatch( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 612
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 614
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v1

    .line 615
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->dismissMatch(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$14;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$14;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)V

    .line 616
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 625
    :cond_0
    return-void
.end method

.method public displayCreateMatchUI(IIZ)V
    .locals 7
    .param p1, "minPlayers"    # I
    .param p2, "maxPlayers"    # I
    .param p3, "allowAutomatch"    # Z

    .prologue
    .line 146
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v3, "displayCreateMatchUI( %d, %d, %s )"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    if-eqz p3, :cond_1

    const-string v0, "true"

    :goto_0
    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    .line 148
    .local v2, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->getMaxMatchDataSize()Lcom/google/android/gms/tasks/Task;

    move-result-object v6

    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;IIZ)V

    .line 152
    invoke-virtual {v6, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 175
    :cond_0
    return-void

    .line 146
    .end local v2    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method

.method public finishMatch(Ljava/lang/String;)V
    .locals 5
    .param p1, "matchId"    # Ljava/lang/String;

    .prologue
    .line 395
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v2, "finishMatch( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 397
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v1

    .line 400
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->finishMatch(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$8;

    invoke-direct {v2, p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$8;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 425
    :cond_0
    return-void
.end method

.method public finishMatch(Ljava/lang/String;II[BLjava/util/List;)V
    .locals 9
    .param p1, "matchId"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "turnStatus"    # I
    .param p4, "matchData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II[B",
            "Ljava/util/List",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/ParticipantResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "results":Ljava/util/List;, "Ljava/util/List<Lcom/distriqt/extension/gameservices/objects/ParticipantResult;>;"
    const/4 v8, 0x2

    .line 431
    sget-object v3, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v4, "finishMatch( %s, %d, %d, ..., ... )"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 433
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 435
    if-ne p2, v8, :cond_1

    .line 437
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v3

    .line 438
    invoke-virtual {v3, p1}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->finishMatch(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$9;

    invoke-direct {v4, p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$9;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v1, "r":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/games/multiplayer/ParticipantResult;>;"
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/distriqt/extension/gameservices/objects/ParticipantResult;

    .line 468
    .local v2, "result":Lcom/distriqt/extension/gameservices/objects/ParticipantResult;
    new-instance v4, Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    iget-object v5, v2, Lcom/distriqt/extension/gameservices/objects/ParticipantResult;->participant:Lcom/distriqt/extension/gameservices/objects/Participant;

    iget-object v5, v5, Lcom/distriqt/extension/gameservices/objects/Participant;->participantId:Ljava/lang/String;

    iget v6, v2, Lcom/distriqt/extension/gameservices/objects/ParticipantResult;->result:I

    iget v7, v2, Lcom/distriqt/extension/gameservices/objects/ParticipantResult;->placing:I

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/games/multiplayer/ParticipantResult;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 474
    .end local v2    # "result":Lcom/distriqt/extension/gameservices/objects/ParticipantResult;
    :cond_2
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v3

    .line 475
    invoke-virtual {v3, p1, p4, v1}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->finishMatch(Ljava/lang/String;[BLjava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$10;

    invoke-direct {v4, p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$10;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public leaveMatch(Ljava/lang/String;)V
    .locals 5
    .param p1, "matchId"    # Ljava/lang/String;

    .prologue
    .line 508
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v2, "leaveMatch( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 510
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 512
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v1

    .line 513
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->leaveMatch(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$11;

    invoke-direct {v2, p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$11;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 536
    :cond_0
    return-void
.end method

.method public leaveMatchDuringTurn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "matchId"    # Ljava/lang/String;
    .param p2, "pendingParticipantId"    # Ljava/lang/String;

    .prologue
    .line 542
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v2, "leaveMatchDuringTurn( %s, %s )"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 544
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 546
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v1

    .line 547
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->leaveMatchDuringTurn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$12;

    invoke-direct {v2, p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$12;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 570
    :cond_0
    return-void
.end method

.method public loadMatch(Ljava/lang/String;)V
    .locals 5
    .param p1, "matchId"    # Ljava/lang/String;

    .prologue
    .line 318
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v2, "loadMatch( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 320
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v1

    .line 323
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->loadMatch(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$6;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$6;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)V

    .line 324
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 346
    invoke-direct {p0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->registerUpdateCallback()V

    .line 348
    :cond_0
    return-void
.end method

.method public loadMatches([I)V
    .locals 4
    .param p1, "turnStatuses"    # [I

    .prologue
    .line 264
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v2, "loadMatches()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 266
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v1

    .line 269
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->loadMatchesByStatus([I)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$5;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$5;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)V

    .line 270
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 310
    invoke-direct {p0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->registerUpdateCallback()V

    .line 312
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 185
    packed-switch p1, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 189
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 191
    const-string v3, "players"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    .local v0, "invitees":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "min_automatch_players"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 194
    .local v2, "minAutoMatchPlayers":I
    const-string v3, "max_automatch_players"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 196
    .local v1, "maxAutoMatchPlayers":I
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v4, "turnbasedmultiplayer:creatematchui:success"

    .line 198
    invoke-static {v0, v2, v1}, Lcom/distriqt/extension/gameservices/events/TurnBasedMultiplayerEvent;->formatPlayerSelectionForEvent(Ljava/util/List;II)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .end local v0    # "invitees":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "maxAutoMatchPlayers":I
    .end local v2    # "minAutoMatchPlayers":I
    :cond_1
    if-nez p2, :cond_0

    .line 202
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v4, "turnbasedmultiplayer:creatematchui:cancel"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x5dfe829
        :pswitch_0
    .end packed-switch
.end method

.method public rematch(Ljava/lang/String;)V
    .locals 5
    .param p1, "matchId"    # Ljava/lang/String;

    .prologue
    .line 631
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v2, "rematch( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 633
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 635
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v1

    .line 636
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->rematch(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$15;

    invoke-direct {v2, p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$15;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;Ljava/lang/String;)V

    .line 637
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 661
    :cond_0
    return-void
.end method

.method public takeTurn(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5
    .param p1, "matchId"    # Ljava/lang/String;
    .param p2, "matchData"    # [B
    .param p3, "pendingParticipantId"    # Ljava/lang/String;

    .prologue
    .line 359
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v2, "takeTurn( %s, ..., %s )"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 361
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 363
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v1

    .line 364
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->takeTurn(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$7;

    invoke-direct {v2, p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$7;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 389
    :cond_0
    return-void
.end method
