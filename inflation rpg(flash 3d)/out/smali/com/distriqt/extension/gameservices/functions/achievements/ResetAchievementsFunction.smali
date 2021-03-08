.class public Lcom/distriqt/extension/gameservices/functions/achievements/ResetAchievementsFunction;
.super Ljava/lang/Object;
.source "ResetAchievementsFunction.java"

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
    .line 30
    const/4 v3, 0x0

    .line 33
    .local v3, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v1, v0

    .line 34
    .local v1, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    iget-boolean v4, v1, Lcom/distriqt/extension/gameservices/GameServicesContext;->v:Z

    if-eqz v4, :cond_0

    .line 36
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v4

    iget-object v4, v4, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v4}, Lcom/distriqt/extension/gameservices/services/IGameService;->achievements()Lcom/distriqt/extension/gameservices/services/IAchievements;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v4

    iget-object v4, v4, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v4}, Lcom/distriqt/extension/gameservices/services/IGameService;->achievements()Lcom/distriqt/extension/gameservices/services/IAchievements;

    move-result-object v4

    invoke-interface {v4}, Lcom/distriqt/extension/gameservices/services/IAchievements;->resetAchievements()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    :cond_0
    :goto_0
    return-object v3

    .line 42
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
