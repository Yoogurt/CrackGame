.class public Lcom/distriqt/extension/adverts/functions/rewarded/LoadFunction;
.super Ljava/lang/Object;
.source "LoadFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 33
    const/4 v5, 0x0

    .line 36
    .local v5, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/adverts/AdvertsContext;

    move-object v2, v0

    .line 37
    .local v2, "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    iget-boolean v6, v2, Lcom/distriqt/extension/adverts/AdvertsContext;->v:Z

    if-eqz v6, :cond_0

    .line 39
    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "adUnitId":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-static {v6}, Lcom/distriqt/extension/adverts/utils/AdvertsFREObjectUtils;->requestFromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/adverts/platforms/AdvertRequest;

    move-result-object v4

    .line 42
    .local v4, "request":Lcom/distriqt/extension/adverts/platforms/AdvertRequest;
    invoke-virtual {v2}, Lcom/distriqt/extension/adverts/AdvertsContext;->controller()Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->platform()Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    move-result-object v6

    invoke-interface {v6}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->getRewardedVideoAd()Lcom/distriqt/extension/adverts/platforms/RewardedVideoAd;

    move-result-object v6

    invoke-interface {v6, v1, v4}, Lcom/distriqt/extension/adverts/platforms/RewardedVideoAd;->load(Ljava/lang/String;Lcom/distriqt/extension/adverts/platforms/AdvertRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "adUnitId":Ljava/lang/String;
    .end local v2    # "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    .end local v4    # "request":Lcom/distriqt/extension/adverts/platforms/AdvertRequest;
    :cond_0
    :goto_0
    return-object v5

    .line 45
    :catch_0
    move-exception v3

    .line 47
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p1, v3}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
