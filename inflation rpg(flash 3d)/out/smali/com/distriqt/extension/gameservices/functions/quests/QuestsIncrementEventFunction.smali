.class public Lcom/distriqt/extension/gameservices/functions/quests/QuestsIncrementEventFunction;
.super Ljava/lang/Object;
.source "QuestsIncrementEventFunction.java"

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
    const/4 v5, 0x0

    .line 34
    .local v5, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v2, v0

    .line 35
    .local v2, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v6, 0x0

    .line 36
    .local v6, "success":Z
    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v7

    iget-object v7, v7, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v7}, Lcom/distriqt/extension/gameservices/services/IGameService;->quests()Lcom/distriqt/extension/gameservices/services/IQuests;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 38
    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "eventId":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    .line 41
    .local v1, "amount":I
    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v7

    iget-object v7, v7, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v7}, Lcom/distriqt/extension/gameservices/services/IGameService;->quests()Lcom/distriqt/extension/gameservices/services/IQuests;

    move-result-object v7

    invoke-interface {v7, v4, v1}, Lcom/distriqt/extension/gameservices/services/IQuests;->incrementEvent(Ljava/lang/String;I)Z

    move-result v6

    .line 43
    .end local v1    # "amount":I
    .end local v4    # "eventId":Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 49
    .end local v2    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v6    # "success":Z
    :goto_0
    return-object v5

    .line 45
    :catch_0
    move-exception v3

    .line 47
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p1, v3}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
