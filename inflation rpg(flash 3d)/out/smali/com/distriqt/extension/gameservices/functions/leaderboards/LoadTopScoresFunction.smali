.class public Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadTopScoresFunction;
.super Ljava/lang/Object;
.source "LoadTopScoresFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadTopScoresFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadTopScoresFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 33
    const/4 v9, 0x0

    .line 37
    .local v9, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v7, v0

    .line 39
    .local v7, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "leaderboardId":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    .line 41
    .local v3, "maxResults":I
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "span":Ljava/lang/String;
    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "collection":Ljava/lang/String;
    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 45
    .local v6, "forceReload":Ljava/lang/Boolean;
    invoke-virtual {v7}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v1

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v1}, Lcom/distriqt/extension/gameservices/services/IGameService;->leaderboards()Lcom/distriqt/extension/gameservices/services/ILeaderboards;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v7}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v1

    iget-object v1, v1, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v1}, Lcom/distriqt/extension/gameservices/services/IGameService;->leaderboards()Lcom/distriqt/extension/gameservices/services/ILeaderboards;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lcom/distriqt/extension/gameservices/services/ILeaderboards;->loadTopScores(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v2    # "leaderboardId":Ljava/lang/String;
    .end local v3    # "maxResults":I
    .end local v4    # "span":Ljava/lang/String;
    .end local v5    # "collection":Ljava/lang/String;
    .end local v6    # "forceReload":Ljava/lang/Boolean;
    .end local v7    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    :cond_0
    :goto_0
    return-object v9

    .line 48
    :catch_0
    move-exception v8

    .line 50
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {p1, v8}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
