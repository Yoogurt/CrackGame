.class Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView$1;
.super Ljava/lang/Object;
.source "GoogleAdMobAdvertView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->load(Lcom/distriqt/extension/adverts/platforms/AdvertRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;

.field final synthetic val$adRequest:Lcom/google/android/gms/ads/AdRequest;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView$1;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;

    iput-object p2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView$1;->val$adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView$1;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;

    invoke-static {v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->access$000(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView$1;->val$adRequest:Lcom/google/android/gms/ads/AdRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method
