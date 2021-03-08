.class public Lcom/distriqt/extension/adverts/functions/consent/AskForConsentFunction;
.super Ljava/lang/Object;
.source "AskForConsentFunction.java"

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
    const/4 v4, 0x0

    .line 34
    .local v4, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/adverts/AdvertsContext;

    move-object v1, v0

    .line 35
    .local v1, "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    const/4 v5, 0x0

    .line 36
    .local v5, "success":Z
    iget-boolean v6, v1, Lcom/distriqt/extension/adverts/AdvertsContext;->v:Z

    if-eqz v6, :cond_0

    .line 38
    new-instance v3, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;

    invoke-direct {v3}, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;-><init>()V

    .line 40
    .local v3, "options":Lcom/distriqt/extension/adverts/platforms/ConsentOptions;
    const/4 v6, 0x0

    aget-object v6, p2, v6

    const-string v7, "privacyUrl"

    invoke-virtual {v6, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;->privacyUrl:Ljava/lang/String;

    .line 42
    const/4 v6, 0x0

    aget-object v6, p2, v6

    const-string v7, "showNonPersonalisedAdsOption"

    invoke-virtual {v6, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v6

    iput-boolean v6, v3, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;->showNonPersonalisedAdsOption:Z

    .line 43
    const/4 v6, 0x0

    aget-object v6, p2, v6

    const-string v7, "showPersonalisedAdsOption"

    invoke-virtual {v6, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v6

    iput-boolean v6, v3, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;->showPersonalisedAdsOption:Z

    .line 44
    const/4 v6, 0x0

    aget-object v6, p2, v6

    const-string v7, "showAdFreeOption"

    invoke-virtual {v6, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v6

    iput-boolean v6, v3, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;->showAdFreeOption:Z

    .line 46
    invoke-virtual {v1}, Lcom/distriqt/extension/adverts/AdvertsContext;->controller()Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->platform()Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->askForConsent(Lcom/distriqt/extension/adverts/platforms/ConsentOptions;)Z

    move-result v5

    .line 48
    .end local v3    # "options":Lcom/distriqt/extension/adverts/platforms/ConsentOptions;
    :cond_0
    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 54
    .end local v1    # "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    .end local v5    # "success":Z
    :goto_0
    return-object v4

    .line 50
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
