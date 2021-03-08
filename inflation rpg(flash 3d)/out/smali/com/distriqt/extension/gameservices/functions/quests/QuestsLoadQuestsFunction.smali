.class public Lcom/distriqt/extension/gameservices/functions/quests/QuestsLoadQuestsFunction;
.super Ljava/lang/Object;
.source "QuestsLoadQuestsFunction.java"

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
    .line 31
    const/4 v4, 0x0

    .line 34
    .local v4, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v1, v0

    .line 35
    .local v1, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v5, 0x0

    .line 36
    .local v5, "success":Z
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v6

    iget-object v6, v6, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v6}, Lcom/distriqt/extension/gameservices/services/IGameService;->quests()Lcom/distriqt/extension/gameservices/services/IQuests;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 38
    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v3

    .line 40
    .local v3, "forceReload":Z
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v6

    iget-object v6, v6, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v6}, Lcom/distriqt/extension/gameservices/services/IGameService;->quests()Lcom/distriqt/extension/gameservices/services/IQuests;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/distriqt/extension/gameservices/services/IQuests;->loadQuests(Z)Z

    move-result v5

    .line 42
    .end local v3    # "forceReload":Z
    :cond_0
    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 48
    .end local v1    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v5    # "success":Z
    :goto_0
    return-object v4

    .line 44
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
