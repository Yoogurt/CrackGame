.class public Lcom/distriqt/extension/gameservices/functions/leaderboards/SubmitScoreFunction;
.super Ljava/lang/Object;
.source "SubmitScoreFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/distriqt/extension/gameservices/functions/leaderboards/SubmitScoreFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/functions/leaderboards/SubmitScoreFunction;->TAG:Ljava/lang/String;

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
    const/4 v5, 0x0

    .line 37
    .local v5, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v2, v0

    .line 39
    .local v2, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v9, 0x0

    aget-object v9, p2, v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "leaderboardId":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v9

    int-to-long v6, v9

    .line 41
    .local v6, "score":J
    const/4 v9, 0x2

    aget-object v9, p2, v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, "tag":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v9

    iget-object v9, v9, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v9}, Lcom/distriqt/extension/gameservices/services/IGameService;->leaderboards()Lcom/distriqt/extension/gameservices/services/ILeaderboards;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 44
    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v9

    iget-object v9, v9, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v9}, Lcom/distriqt/extension/gameservices/services/IGameService;->leaderboards()Lcom/distriqt/extension/gameservices/services/ILeaderboards;

    move-result-object v9

    invoke-interface {v9, v4, v6, v7, v8}, Lcom/distriqt/extension/gameservices/services/ILeaderboards;->submitScore(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v2    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v4    # "leaderboardId":Ljava/lang/String;
    .end local v6    # "score":J
    .end local v8    # "tag":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 46
    :catch_0
    move-exception v3

    .line 48
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p1, v3}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
