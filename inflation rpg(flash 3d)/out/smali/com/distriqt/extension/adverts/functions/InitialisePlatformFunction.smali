.class public Lcom/distriqt/extension/adverts/functions/InitialisePlatformFunction;
.super Ljava/lang/Object;
.source "InitialisePlatformFunction.java"

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
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 29
    const/4 v5, 0x0

    .line 32
    .local v5, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/adverts/AdvertsContext;

    move-object v2, v0

    .line 33
    .local v2, "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    iget-boolean v6, v2, Lcom/distriqt/extension/adverts/AdvertsContext;->v:Z

    if-eqz v6, :cond_0

    .line 35
    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "platform":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "accountId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/distriqt/extension/adverts/AdvertsContext;->controller()Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    move-result-object v6

    invoke-virtual {v6, v4, v1}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->initialise(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "accountId":Ljava/lang/String;
    .end local v2    # "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    .end local v4    # "platform":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 41
    :catch_0
    move-exception v3

    .line 43
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p1, v3}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
