.class public Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;
.super Ljava/lang/Object;
.source "GooglePlayPlayers.java"

# interfaces
.implements Lcom/distriqt/extension/gameservices/services/IPlayers;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 57
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object v0
.end method


# virtual methods
.method public isSupported()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public loadPlayerFriends()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 75
    sget-object v2, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;->TAG:Ljava/lang/String;

    const-string v3, "loadPlayerFriends()"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v2}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 77
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getPlayersClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object v1

    const/16 v2, 0x19

    .line 80
    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/PlayersClient;->loadMoreRecentlyPlayedWithPlayers(I)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers$1;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers$1;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/players/GooglePlayPlayers;)V

    .line 81
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 115
    const/4 v1, 0x1

    .line 117
    :cond_0
    return v1
.end method
