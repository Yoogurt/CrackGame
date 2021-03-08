.class public Lcom/distriqt/extension/adverts/functions/adview/SetAdUnitIdFunction;
.super Ljava/lang/Object;
.source "SetAdUnitIdFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 31
    const/4 v6, 0x0

    .line 34
    .local v6, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/adverts/AdvertsContext;

    move-object v3, v0

    .line 35
    .local v3, "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    iget-boolean v7, v3, Lcom/distriqt/extension/adverts/AdvertsContext;->v:Z

    if-eqz v7, :cond_0

    .line 37
    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "identifier":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "adUnitId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/distriqt/extension/adverts/AdvertsContext;->controller()Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->platform()Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->getAdView(Ljava/lang/String;)Lcom/distriqt/extension/adverts/platforms/AdvertView;

    move-result-object v2

    .line 41
    .local v2, "adView":Lcom/distriqt/extension/adverts/platforms/AdvertView;
    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v2, v1}, Lcom/distriqt/extension/adverts/platforms/AdvertView;->setAdUnitId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "adUnitId":Ljava/lang/String;
    .end local v2    # "adView":Lcom/distriqt/extension/adverts/platforms/AdvertView;
    .end local v3    # "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    .end local v5    # "identifier":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v6

    .line 47
    :catch_0
    move-exception v4

    .line 49
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {p1, v4}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
