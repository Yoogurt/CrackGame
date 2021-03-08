.class public Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadScoresFunction;
.super Ljava/lang/Object;
.source "LoadScoresFunction.java"

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
    .locals 11
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 28
    const/4 v10, 0x0

    .line 31
    .local v10, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v8, v0

    .line 33
    .local v8, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "leaderboardId":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    .line 35
    .local v3, "startIndex":I
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    .line 36
    .local v4, "maxResults":I
    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "span":Ljava/lang/String;
    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, "collection":Ljava/lang/String;
    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 40
    .local v7, "forceReload":Ljava/lang/Boolean;
    invoke-virtual {v8}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v8}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v1

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v1}, Lcom/distriqt/extension/gameservices/services/IGameService;->leaderboards()Lcom/distriqt/extension/gameservices/services/ILeaderboards;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v8}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v1

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v1}, Lcom/distriqt/extension/gameservices/services/IGameService;->leaderboards()Lcom/distriqt/extension/gameservices/services/ILeaderboards;

    move-result-object v1

    invoke-interface/range {v1 .. v7}, Lcom/distriqt/extension/gameservices/services/ILeaderboards;->loadScores(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v2    # "leaderboardId":Ljava/lang/String;
    .end local v3    # "startIndex":I
    .end local v4    # "maxResults":I
    .end local v5    # "span":Ljava/lang/String;
    .end local v6    # "collection":Ljava/lang/String;
    .end local v7    # "forceReload":Ljava/lang/Boolean;
    .end local v8    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    :cond_0
    :goto_0
    return-object v10

    .line 43
    :catch_0
    move-exception v9

    .line 45
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {p1, v9}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
