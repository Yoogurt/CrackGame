.class public Lcom/distriqt/extension/gameservices/functions/IsServiceSupportedFunction;
.super Ljava/lang/Object;
.source "IsServiceSupportedFunction.java"

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
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 32
    const/4 v3, 0x0

    .line 35
    .local v3, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v1, v0

    .line 36
    .local v1, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "service":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isServiceSupported(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 38
    .local v5, "supported":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 44
    .end local v1    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v4    # "service":Ljava/lang/String;
    .end local v5    # "supported":Ljava/lang/Boolean;
    :goto_0
    return-object v3

    .line 40
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
