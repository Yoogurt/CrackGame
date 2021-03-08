.class public Lcom/distriqt/extension/adverts/functions/adview/GetAdSizeFunction;
.super Ljava/lang/Object;
.source "GetAdSizeFunction.java"

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

    move-object v2, v0

    .line 36
    .local v2, "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    iget-boolean v7, v2, Lcom/distriqt/extension/adverts/AdvertsContext;->v:Z

    if-eqz v7, :cond_0

    .line 38
    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "identifier":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/distriqt/extension/adverts/AdvertsContext;->controller()Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->platform()Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->getAdView(Ljava/lang/String;)Lcom/distriqt/extension/adverts/platforms/AdvertView;

    move-result-object v1

    .line 41
    .local v1, "adView":Lcom/distriqt/extension/adverts/platforms/AdvertView;
    if-eqz v1, :cond_0

    .line 43
    invoke-interface {v1}, Lcom/distriqt/extension/adverts/platforms/AdvertView;->getAdSize()Lcom/distriqt/extension/adverts/platforms/AdvertSize;

    move-result-object v6

    .line 46
    .local v6, "size":Lcom/distriqt/extension/adverts/platforms/AdvertSize;
    invoke-virtual {v6}, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->toJSON()Lorg/json/JSONObject;

    move-result-object v7

    .line 47
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 45
    invoke-static {v7}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 56
    .end local v1    # "adView":Lcom/distriqt/extension/adverts/platforms/AdvertView;
    .end local v2    # "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    .end local v4    # "identifier":Ljava/lang/String;
    .end local v6    # "size":Lcom/distriqt/extension/adverts/platforms/AdvertSize;
    :cond_0
    :goto_0
    return-object v5

    .line 52
    :catch_0
    move-exception v3

    .line 54
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p1, v3}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
