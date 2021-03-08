.class public interface abstract Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;
.super Ljava/lang/Object;
.source "AdvertPlatform.java"


# virtual methods
.method public abstract addTestDevice(Ljava/lang/String;)V
.end method

.method public abstract askForConsent(Lcom/distriqt/extension/adverts/platforms/ConsentOptions;)Z
.end method

.method public abstract createAdView()Ljava/lang/String;
.end method

.method public abstract createInterstitialAd()Ljava/lang/String;
.end method

.method public abstract destroyAdView(Ljava/lang/String;)V
.end method

.method public abstract destroyInterstitialAd(Ljava/lang/String;)V
.end method

.method public abstract dispose()V
.end method

.method public abstract getAdView(Ljava/lang/String;)Lcom/distriqt/extension/adverts/platforms/AdvertView;
.end method

.method public abstract getAdvertisingId()Ljava/lang/String;
.end method

.method public abstract getConsentStatus(Ljava/lang/String;)V
.end method

.method public abstract getInterstitialAd(Ljava/lang/String;)Lcom/distriqt/extension/adverts/platforms/InterstitialAd;
.end method

.method public abstract getRewardedVideoAd()Lcom/distriqt/extension/adverts/platforms/RewardedVideoAd;
.end method

.method public abstract initialise(Ljava/lang/String;)V
.end method

.method public abstract isInterstitialsSupported()Z
.end method

.method public abstract isRewardedVideoAdsSupported()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onRestart()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract setDebugGeography(I)V
.end method
