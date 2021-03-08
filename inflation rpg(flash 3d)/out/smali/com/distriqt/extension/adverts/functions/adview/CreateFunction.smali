.class public Lcom/distriqt/extension/adverts/functions/adview/CreateFunction;
.super Ljava/lang/Object;
.source "CreateFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 30
    const/4 v4, 0x0

    .line 33
    .local v4, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/adverts/AdvertsContext;

    move-object v1, v0

    .line 34
    .local v1, "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    const-string v3, ""

    .line 35
    .local v3, "identifier":Ljava/lang/String;
    iget-boolean v5, v1, Lcom/distriqt/extension/adverts/AdvertsContext;->v:Z

    if-eqz v5, :cond_0

    .line 37
    invoke-virtual {v1}, Lcom/distriqt/extension/adverts/AdvertsContext;->controller()Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->platform()Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    move-result-object v5

    invoke-interface {v5}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->createAdView()Ljava/lang/String;

    move-result-object v3

    .line 39
    :cond_0
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 45
    .end local v1    # "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    .end local v3    # "identifier":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 41
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
