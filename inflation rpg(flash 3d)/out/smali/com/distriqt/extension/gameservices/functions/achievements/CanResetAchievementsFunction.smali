.class public Lcom/distriqt/extension/gameservices/functions/achievements/CanResetAchievementsFunction;
.super Ljava/lang/Object;
.source "CanResetAchievementsFunction.java"

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
    const/4 v1, 0x0

    .line 34
    .local v1, "canResetAchievements":Z
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v2, v0

    .line 35
    .local v2, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    iget-boolean v5, v2, Lcom/distriqt/extension/gameservices/GameServicesContext;->v:Z

    if-eqz v5, :cond_0

    .line 37
    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v5

    iget-object v5, v5, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v5}, Lcom/distriqt/extension/gameservices/services/IGameService;->achievements()Lcom/distriqt/extension/gameservices/services/IAchievements;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 39
    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v5

    iget-object v5, v5, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v5}, Lcom/distriqt/extension/gameservices/services/IGameService;->achievements()Lcom/distriqt/extension/gameservices/services/IAchievements;

    move-result-object v5

    invoke-interface {v5}, Lcom/distriqt/extension/gameservices/services/IAchievements;->canResetAchievements()Z

    move-result v1

    .line 42
    :cond_0
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 48
    .end local v2    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    :goto_0
    return-object v4

    .line 44
    :catch_0
    move-exception v3

    .line 46
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
