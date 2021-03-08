.class public Lcom/distriqt/extension/adverts/functions/adview/SetViewParamsFunction;
.super Ljava/lang/Object;
.source "SetViewParamsFunction.java"

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

.method public static fromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;
    .locals 3
    .param p0, "positionObject"    # Lcom/adobe/fre/FREObject;

    .prologue
    .line 59
    new-instance v1, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;

    invoke-direct {v1}, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;-><init>()V

    .line 62
    .local v1, "position":Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;
    if-eqz p0, :cond_0

    .line 64
    :try_start_0
    const-string v2, "x"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    iput v2, v1, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->x:I

    .line 65
    const-string v2, "y"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    iput v2, v1, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->y:I

    .line 66
    const-string v2, "width"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    iput v2, v1, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->width:I

    .line 67
    const-string v2, "height"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    iput v2, v1, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->height:I

    .line 68
    const-string v2, "horizontalAlign"

    .line 69
    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->alignmentFromString(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->horizontalAlign:I

    .line 71
    const-string v2, "verticalAlign"

    .line 72
    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->alignmentFromString(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->verticalAlign:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 32
    const/4 v6, 0x0

    .line 35
    .local v6, "result":Lcom/adobe/fre/FREObject;
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
    const/4 v7, 0x1

    aget-object v7, p2, v7

    invoke-static {v7}, Lcom/distriqt/extension/adverts/functions/adview/SetViewParamsFunction;->fromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;

    move-result-object v5

    .line 42
    .local v5, "params":Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;
    invoke-virtual {v2}, Lcom/distriqt/extension/adverts/AdvertsContext;->controller()Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->platform()Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->getAdView(Ljava/lang/String;)Lcom/distriqt/extension/adverts/platforms/AdvertView;

    move-result-object v1

    .line 43
    .local v1, "adView":Lcom/distriqt/extension/adverts/platforms/AdvertView;
    if-eqz v1, :cond_0

    .line 45
    invoke-interface {v1, v5}, Lcom/distriqt/extension/adverts/platforms/AdvertView;->setViewParams(Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "adView":Lcom/distriqt/extension/adverts/platforms/AdvertView;
    .end local v2    # "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    .end local v4    # "identifier":Ljava/lang/String;
    .end local v5    # "params":Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;
    :cond_0
    :goto_0
    return-object v6

    .line 49
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p1, v3}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
