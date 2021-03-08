.class public Lcom/distriqt/extension/adverts/functions/interstitials/HideFunction;
.super Ljava/lang/Object;
.source "HideFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 32
    const/4 v5, 0x0

    .line 35
    .local v5, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/adverts/AdvertsContext;

    move-object v1, v0

    .line 36
    .local v1, "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    const/4 v6, 0x0

    .line 37
    .local v6, "success":Z
    iget-boolean v7, v1, Lcom/distriqt/extension/adverts/AdvertsContext;->v:Z

    if-eqz v7, :cond_0

    .line 39
    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "identifier":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/distriqt/extension/adverts/AdvertsContext;->controller()Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->platform()Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->getInterstitialAd(Ljava/lang/String;)Lcom/distriqt/extension/adverts/platforms/InterstitialAd;

    move-result-object v4

    .line 42
    .local v4, "interstitialAd":Lcom/distriqt/extension/adverts/platforms/InterstitialAd;
    if-eqz v4, :cond_0

    .line 44
    invoke-interface {v4}, Lcom/distriqt/extension/adverts/platforms/InterstitialAd;->hide()Z

    move-result v6

    .line 47
    .end local v3    # "identifier":Ljava/lang/String;
    .end local v4    # "interstitialAd":Lcom/distriqt/extension/adverts/platforms/InterstitialAd;
    :cond_0
    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 53
    .end local v1    # "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    .end local v6    # "success":Z
    :goto_0
    return-object v5

    .line 49
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
