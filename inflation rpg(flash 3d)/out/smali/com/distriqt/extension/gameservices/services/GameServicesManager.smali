.class public Lcom/distriqt/extension/gameservices/services/GameServicesManager;
.super Lcom/distriqt/core/ActivityStateListener;
.source "GameServicesManager.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field public service:Lcom/distriqt/extension/gameservices/services/IGameService;

.field public serviceConfig:Lcom/distriqt/extension/gameservices/services/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    .line 43
    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->serviceConfig:Lcom/distriqt/extension/gameservices/services/Service;

    .line 45
    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 56
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 57
    return-void
.end method


# virtual methods
.method public getPlayer()Lcom/distriqt/extension/gameservices/objects/Player;
    .locals 3

    .prologue
    .line 149
    sget-object v0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->TAG:Ljava/lang/String;

    const-string v1, "getPlayer()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v0}, Lcom/distriqt/extension/gameservices/services/IGameService;->getPlayer()Lcom/distriqt/extension/gameservices/objects/Player;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialiseService(Lcom/distriqt/extension/gameservices/services/Service;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "serviceConfig"    # Lcom/distriqt/extension/gameservices/services/Service;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    sget-object v2, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->TAG:Ljava/lang/String;

    const-string v3, "initialiseService( %s )"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/distriqt/extension/gameservices/services/Service;->service:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v2, p1, Lcom/distriqt/extension/gameservices/services/Service;->service:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isServiceSupported(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 85
    :cond_1
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->serviceConfig:Lcom/distriqt/extension/gameservices/services/Service;

    .line 89
    sget-object v2, Lcom/distriqt/extension/gameservices/services/Service;->GOOGLE_PLAY_GAME_SERVICES:Ljava/lang/String;

    iget-object v3, p1, Lcom/distriqt/extension/gameservices/services/Service;->service:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v2, v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v2, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    .line 100
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v2, p1}, Lcom/distriqt/extension/gameservices/services/IGameService;->initialiseService(Lcom/distriqt/extension/gameservices/services/Service;)Z

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v2, :cond_5

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_4
    sget-object v2, Lcom/distriqt/extension/gameservices/services/Service;->AMAZON_GAME_CIRCLE:Ljava/lang/String;

    iget-object v3, p1, Lcom/distriqt/extension/gameservices/services/Service;->service:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 105
    goto :goto_2
.end method

.method public isInitialised()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceSupported(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 62
    sget-object v0, Lcom/distriqt/extension/gameservices/services/Service;->GOOGLE_PLAY_GAME_SERVICES:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v0}, Lcom/distriqt/extension/gameservices/services/IGameService;->isSignedIn()Z

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadPlayerIcon(Lcom/distriqt/extension/gameservices/objects/Player;)Z
    .locals 1
    .param p1, "player"    # Lcom/distriqt/extension/gameservices/objects/Player;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v0, p1}, Lcom/distriqt/extension/gameservices/services/IGameService;->loadPlayerIcon(Lcom/distriqt/extension/gameservices/objects/Player;)Z

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v0, p1, p2, p3}, Lcom/distriqt/extension/gameservices/services/IGameService;->onActivityResult(IILandroid/content/Intent;)V

    .line 216
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v0}, Lcom/distriqt/extension/gameservices/services/IGameService;->onDestroy()V

    .line 206
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v0}, Lcom/distriqt/extension/gameservices/services/IGameService;->onPause()V

    .line 196
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v0}, Lcom/distriqt/extension/gameservices/services/IGameService;->onRestart()V

    .line 211
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v0}, Lcom/distriqt/extension/gameservices/services/IGameService;->onResume()V

    .line 201
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v0}, Lcom/distriqt/extension/gameservices/services/IGameService;->onStart()V

    .line 186
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v0}, Lcom/distriqt/extension/gameservices/services/IGameService;->onStop()V

    .line 191
    :cond_0
    return-void
.end method

.method public register()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public signIn(Z)Z
    .locals 4
    .param p1, "silently"    # Z

    .prologue
    const/4 v0, 0x0

    .line 125
    sget-object v1, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->TAG:Ljava/lang/String;

    const-string v2, "signIn()"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v0, p1}, Lcom/distriqt/extension/gameservices/services/IGameService;->signIn(Z)Z

    move-result v0

    .line 132
    :goto_0
    return v0

    .line 131
    :cond_0
    sget-object v1, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->TAG:Ljava/lang/String;

    const-string v2, "signIn(): Not yet initialised"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public signOut()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 138
    sget-object v1, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->TAG:Ljava/lang/String;

    const-string v2, "signOut()"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    if-eqz v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v0}, Lcom/distriqt/extension/gameservices/services/IGameService;->signOut()Z

    move-result v0

    .line 143
    :cond_0
    return v0
.end method
