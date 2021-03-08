.class public Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;
.super Lcom/google/android/gms/ads/AdListener;
.source "GoogleAdMobInterstitialAd.java"

# interfaces
.implements Lcom/distriqt/extension/adverts/platforms/InterstitialAd;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field private _handler:Landroid/os/Handler;

.field private _identifier:Ljava/lang/String;

.field private _interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 57
    iput-object p1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 58
    iput-object p2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_handler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 62
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 74
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->TAG:Ljava/lang/String;

    const-string v1, "[%s]: destroy()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 79
    iput-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 84
    iput-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_handler:Landroid/os/Handler;

    .line 87
    :cond_1
    iput-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 88
    return-void
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 112
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->TAG:Ljava/lang/String;

    const-string v1, "[%s]: getAdUnitId()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hide()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 212
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->TAG:Ljava/lang/String;

    const-string v1, "[%s]: show()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    return v4
.end method

.method public isLoaded()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 168
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "[%s]: isLoaded()"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    .line 173
    :cond_0
    return v0
.end method

.method public isLoading()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 124
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "[%s]: isLoading()"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoading()Z

    move-result v0

    .line 129
    :cond_0
    return v0
.end method

.method public load(Lcom/distriqt/extension/adverts/platforms/AdvertRequest;)V
    .locals 7
    .param p1, "request"    # Lcom/distriqt/extension/adverts/platforms/AdvertRequest;

    .prologue
    .line 136
    sget-object v2, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->TAG:Ljava/lang/String;

    const-string v3, "[%s]: load()"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v2, :cond_0

    .line 141
    invoke-static {p1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobUtils;->toAdRequest(Lcom/distriqt/extension/adverts/platforms/AdvertRequest;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 142
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_handler:Landroid/os/Handler;

    new-instance v3, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd$1;

    invoke-direct {v3, p0, v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd$1;-><init>(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;Lcom/google/android/gms/ads/AdRequest;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onAdClosed()V
    .locals 3

    .prologue
    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "interstitial:closed"

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    .line 302
    invoke-static {v2}, Lcom/distriqt/extension/adverts/events/InterstitialEvent;->formatForEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAdFailedToLoad(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "interstitial:error"

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    .line 248
    invoke-static {v2, p1}, Lcom/distriqt/extension/adverts/events/InterstitialEvent;->formatForErrorEvent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAdLeftApplication()V
    .locals 3

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "interstitial:leftapplication"

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    .line 284
    invoke-static {v2}, Lcom/distriqt/extension/adverts/events/InterstitialEvent;->formatForEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "interstitial:loaded"

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    .line 230
    invoke-static {v2}, Lcom/distriqt/extension/adverts/events/InterstitialEvent;->formatForEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAdOpened()V
    .locals 3

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "interstitial:opened"

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    .line 266
    invoke-static {v2}, Lcom/distriqt/extension/adverts/events/InterstitialEvent;->formatForEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 6
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "[%s]: setAdUnitId( %s )"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v1, :cond_0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public show()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    sget-object v5, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->TAG:Ljava/lang/String;

    const-string v6, "[%s]: show()"

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_identifier:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-static {v5, v6, v7}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v5, :cond_2

    .line 183
    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    const/4 v2, 0x0

    .line 188
    .local v2, "useImmersiveMode":Z
    :try_start_0
    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v5}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/distriqt/core/utils/FREUtils;->getAIRWindowSurfaceView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 189
    .local v1, "systemUiVisibility":I
    sget-object v5, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->TAG:Ljava/lang/String;

    const-string v6, "systemUiVisibility = %x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    and-int/lit16 v5, v1, 0x800

    if-gtz v5, :cond_0

    and-int/lit16 v5, v1, 0x1000

    if-gtz v5, :cond_0

    and-int/lit8 v5, v1, 0x4

    if-lez v5, :cond_1

    :cond_0
    move v2, v4

    .line 199
    .end local v1    # "systemUiVisibility":I
    :goto_0
    iget-object v3, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setImmersiveMode(Z)V

    .line 201
    iget-object v3, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;->_interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 205
    .end local v2    # "useImmersiveMode":Z
    :goto_1
    return v4

    .restart local v1    # "systemUiVisibility":I
    .restart local v2    # "useImmersiveMode":Z
    :cond_1
    move v2, v3

    .line 190
    goto :goto_0

    .line 194
    .end local v1    # "systemUiVisibility":I
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "useImmersiveMode":Z
    :cond_2
    move v4, v3

    .line 205
    goto :goto_1
.end method
