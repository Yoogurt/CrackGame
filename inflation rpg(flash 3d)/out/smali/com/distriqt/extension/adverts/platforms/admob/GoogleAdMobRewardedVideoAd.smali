.class public Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;
.super Lcom/distriqt/core/ActivityStateListener;
.source "GoogleAdMobRewardedVideoAd.java"

# interfaces
.implements Lcom/distriqt/extension/adverts/platforms/RewardedVideoAd;
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field private _handler:Landroid/os/Handler;

.field private _rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 65
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 66
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_handler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "destroy()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0, v3}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    .line 85
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->destroy(Landroid/content/Context;)V

    .line 86
    iput-object v3, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 91
    iput-object v3, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_handler:Landroid/os/Handler;

    .line 93
    :cond_1
    iput-object v3, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 94
    return-void
.end method

.method public destroyed()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v2, "getUserId()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->getUserId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .line 109
    const-string v1, ""

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 160
    sget-object v2, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v3, "isLoaded()"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v2}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 169
    :goto_0
    return v1

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Lcom/distriqt/extension/adverts/platforms/AdvertRequest;)V
    .locals 6
    .param p1, "adUnitId"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/distriqt/extension/adverts/platforms/AdvertRequest;

    .prologue
    .line 131
    sget-object v2, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v3, "load( %s, ... )"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :try_start_0
    invoke-static {p2}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobUtils;->toAdRequest(Lcom/distriqt/extension/adverts/platforms/AdvertRequest;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 135
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_handler:Landroid/os/Handler;

    new-instance v3, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd$1;-><init>(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 394
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    invoke-super {p0}, Lcom/distriqt/core/ActivityStateListener;->onDestroy()V

    .line 396
    invoke-virtual {p0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->destroy()V

    .line 397
    return-void
.end method

.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 4
    .param p1, "rewardItem"    # Lcom/google/android/gms/ads/reward/RewardItem;

    .prologue
    .line 293
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "onRewarded()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "rewardedvideoad:reward"

    .line 300
    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getAmount()I

    move-result v2

    invoke-interface {p1}, Lcom/google/android/gms/ads/reward/RewardItem;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/distriqt/extension/adverts/events/RewardedVideoAdEvent;->formatForRewardEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRewardedVideoAdClosed()V
    .locals 3

    .prologue
    .line 274
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "onRewardedVideoAdClosed()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "rewardedvideoad:closed"

    .line 281
    invoke-static {}, Lcom/distriqt/extension/adverts/events/RewardedVideoAdEvent;->formatForEvent()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 331
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "onRewardedVideoAdFailedToLoad()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "rewardedvideoad:error"

    .line 338
    invoke-static {p1}, Lcom/distriqt/extension/adverts/events/RewardedVideoAdEvent;->formatForErrorEvent(I)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 3

    .prologue
    .line 312
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "onRewardedVideoAdLeftApplication()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "rewardedvideoad:leftapplication"

    .line 319
    invoke-static {}, Lcom/distriqt/extension/adverts/events/RewardedVideoAdEvent;->formatForEvent()Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 3

    .prologue
    .line 217
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "onRewardedVideoAdLoaded()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "rewardedvideoad:loaded"

    .line 224
    invoke-static {}, Lcom/distriqt/extension/adverts/events/RewardedVideoAdEvent;->formatForEvent()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRewardedVideoAdOpened()V
    .locals 3

    .prologue
    .line 236
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "onRewardedVideoAdOpened()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "rewardedvideoad:opened"

    .line 243
    invoke-static {}, Lcom/distriqt/extension/adverts/events/RewardedVideoAdEvent;->formatForEvent()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRewardedVideoCompleted()V
    .locals 3

    .prologue
    .line 351
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "onRewardedVideoCompleted()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "rewardedvideoad:video:complete"

    .line 358
    invoke-static {}, Lcom/distriqt/extension/adverts/events/RewardedVideoAdEvent;->formatForEvent()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRewardedVideoStarted()V
    .locals 3

    .prologue
    .line 255
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "onRewardedVideoStarted()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "rewardedvideoad:video:started"

    .line 262
    invoke-static {}, Lcom/distriqt/extension/adverts/events/RewardedVideoAdEvent;->formatForEvent()Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v2, "setUserId( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public show()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    sget-object v5, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v6, "show()"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :try_start_0
    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v5}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_2

    .line 181
    const/4 v2, 0x0

    .line 184
    .local v2, "useImmersiveMode":Z
    :try_start_1
    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v5}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/distriqt/core/utils/FREUtils;->getAIRWindowSurfaceView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 185
    .local v1, "systemUiVisibility":I
    sget-object v5, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->TAG:Ljava/lang/String;

    const-string v6, "systemUiVisibility = %x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    and-int/lit16 v5, v1, 0x800

    if-gtz v5, :cond_0

    and-int/lit16 v5, v1, 0x1000

    if-gtz v5, :cond_0

    and-int/lit8 v5, v1, 0x4

    if-lez v5, :cond_1

    :cond_0
    move v2, v4

    .line 195
    .end local v1    # "systemUiVisibility":I
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v5, v2}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->setImmersiveMode(Z)V

    .line 197
    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->_rewardedVideoAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v5}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    .line 205
    .end local v2    # "useImmersiveMode":Z
    :goto_1
    return v4

    .restart local v1    # "systemUiVisibility":I
    .restart local v2    # "useImmersiveMode":Z
    :cond_1
    move v2, v3

    .line 186
    goto :goto_0

    .line 190
    .end local v1    # "systemUiVisibility":I
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "useImmersiveMode":Z
    :catch_1
    move-exception v0

    .line 203
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v4, v3

    .line 205
    goto :goto_1
.end method
