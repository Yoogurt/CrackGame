.class public Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadPlayerScoreFunction;
.super Ljava/lang/Object;
.source "LoadPlayerScoreFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 28
    const/4 v5, 0x0

    .line 31
    .local v5, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v2, v0

    .line 33
    .local v2, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "leaderboardId":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, "span":Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "collection":Ljava/lang/String;
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

    invoke-interface {v7}, Lcom/distriqt/extension/gameservices/services/IGameService;->leaderboards()Lcom/distriqt/extension/gameservices/services/ILeaderboards;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 38
    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v7

    iget-object v7, v7, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v7}, Lcom/distriqt/extension/gameservices/services/IGameService;->leaderboards()Lcom/distriqt/extension/gameservices/services/ILeaderboards;

    move-result-object v7

    invoke-interface {v7, v4, v6, v1}, Lcom/distriqt/extension/gameservices/services/ILeaderboards;->loadPlayerScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v1    # "collection":Ljava/lang/String;
    .end local v2    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v4    # "leaderboardId":Ljava/lang/String;
    .end local v6    # "span":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 40
    :catch_0
    move-exception v3

    .line 42
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p1, v3}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
