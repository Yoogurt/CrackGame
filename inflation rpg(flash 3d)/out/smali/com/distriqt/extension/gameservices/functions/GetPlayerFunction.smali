.class public Lcom/distriqt/extension/gameservices/functions/GetPlayerFunction;
.super Ljava/lang/Object;
.source "GetPlayerFunction.java"

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
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 33
    const/4 v4, 0x0

    .line 36
    .local v4, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v1, v0

    .line 37
    .local v1, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->getPlayer()Lcom/distriqt/extension/gameservices/objects/Player;

    move-result-object v3

    .line 38
    .local v3, "player":Lcom/distriqt/extension/gameservices/objects/Player;
    if-eqz v3, :cond_0

    .line 40
    invoke-static {v3}, Lcom/distriqt/extension/gameservices/objects/Player;->toFREObject(Lcom/distriqt/extension/gameservices/objects/Player;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 47
    .end local v1    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v3    # "player":Lcom/distriqt/extension/gameservices/objects/Player;
    :cond_0
    :goto_0
    return-object v4

    .line 43
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
