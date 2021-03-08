.class Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd$1;
.super Ljava/lang/Object;
.source "GoogleAdMobRewardedVideoAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->load(Ljava/lang/String;Lcom/distriqt/extension/adverts/platforms/AdvertRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

.field final synthetic val$adRequest:Lcom/google/android/gms/ads/AdRequest;

.field final synthetic val$adUnitId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd$1;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    iput-object p2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd$1;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd$1;->val$adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd$1;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    invoke-static {v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->access$000(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd$1;->val$adUnitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd$1;->val$adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method
