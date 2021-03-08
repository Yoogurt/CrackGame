.class public Lcom/distriqt/extension/adverts/functions/consent/SetDebugGeographyFunction;
.super Ljava/lang/Object;
.source "SetDebugGeographyFunction.java"

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
    .locals 5
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 32
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/adverts/AdvertsContext;

    move-object v1, v0

    .line 33
    .local v1, "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    iget-boolean v4, v1, Lcom/distriqt/extension/adverts/AdvertsContext;->v:Z

    if-eqz v4, :cond_0

    .line 35
    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    .line 37
    .local v3, "geography":I
    invoke-virtual {v1}, Lcom/distriqt/extension/adverts/AdvertsContext;->controller()Lcom/distriqt/extension/adverts/platforms/AdvertsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/distriqt/extension/adverts/platforms/AdvertsController;->platform()Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;->setDebugGeography(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v1    # "ctx":Lcom/distriqt/extension/adverts/AdvertsContext;
    .end local v3    # "geography":I
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 40
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {p1, v2}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
