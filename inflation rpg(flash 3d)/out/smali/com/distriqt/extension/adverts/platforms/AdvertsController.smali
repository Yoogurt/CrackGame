.class public Lcom/distriqt/extension/adverts/platforms/AdvertsController;
.super Lcom/distriqt/core/ActivityStateListener;
.source "AdvertsController.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field private _platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    .line 50
    iput-object p1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 51
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    invoke-interface {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->dispose()V

    .line 60
    :cond_0
    return-void
.end method

.method public initialise(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "platformType"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 84
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->TAG:Ljava/lang/String;

    const-string v1, "initialise( %s, %s )"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/AdvertPlatforms;->ADVERT_PLATFORM_ADMOB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    .line 90
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    invoke-interface {v0, p2}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->initialise(Ljava/lang/String;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->TAG:Ljava/lang/String;

    const-string v1, "UNSUPPORTED PLATFORM"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isPlatformSupported(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "platformType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 65
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->TAG:Ljava/lang/String;

    const-string v1, "isPlatformSupported( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/AdvertPlatforms;->ADVERT_PLATFORM_ADMOB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->isSupported(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 70
    :cond_0
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/AdvertPlatforms;->ADVERT_PLATFORM_DOUBLECLICK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/AdvertPlatforms;->ADVERT_PLATFORM_IAD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    invoke-interface {v0, p1, p2, p3}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->onActivityResult(IILandroid/content/Intent;)V

    .line 155
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    invoke-interface {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->onDestroy()V

    .line 143
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    invoke-interface {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->onPause()V

    .line 131
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    invoke-interface {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->onRestart()V

    .line 149
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    invoke-interface {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->onResume()V

    .line 137
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    invoke-interface {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->onStart()V

    .line 119
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    invoke-interface {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->onStop()V

    .line 125
    :cond_0
    return-void
.end method

.method public platform()Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->_platform:Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
