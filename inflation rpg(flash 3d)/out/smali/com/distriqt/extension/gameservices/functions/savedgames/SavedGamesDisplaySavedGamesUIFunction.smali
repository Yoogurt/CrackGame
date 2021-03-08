.class public Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesDisplaySavedGamesUIFunction;
.super Ljava/lang/Object;
.source "SavedGamesDisplaySavedGamesUIFunction.java"

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
    .locals 10
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 32
    const/4 v6, 0x0

    .line 35
    .local v6, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v3, v0

    .line 36
    .local v3, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v7, 0x0

    .line 37
    .local v7, "success":Z
    iget-boolean v9, v3, Lcom/distriqt/extension/gameservices/GameServicesContext;->v:Z

    if-eqz v9, :cond_0

    .line 39
    const/4 v9, 0x0

    aget-object v9, p2, v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 40
    .local v8, "title":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v1

    .line 41
    .local v1, "allowAdd":Z
    const/4 v9, 0x2

    aget-object v9, p2, v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v2

    .line 42
    .local v2, "allowDelete":Z
    const/4 v9, 0x3

    aget-object v9, p2, v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v5

    .line 44
    .local v5, "maxSavedGames":I
    invoke-virtual {v3}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v9

    iget-object v9, v9, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v9}, Lcom/distriqt/extension/gameservices/services/IGameService;->savedGames()Lcom/distriqt/extension/gameservices/services/ISavedGames;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 45
    invoke-virtual {v3}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v9

    iget-object v9, v9, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v9}, Lcom/distriqt/extension/gameservices/services/IGameService;->savedGames()Lcom/distriqt/extension/gameservices/services/ISavedGames;

    move-result-object v9

    invoke-interface {v9, v8, v1, v2, v5}, Lcom/distriqt/extension/gameservices/services/ISavedGames;->displaySavedGamesUI(Ljava/lang/String;ZZI)Z

    move-result v7

    .line 47
    .end local v1    # "allowAdd":Z
    .end local v2    # "allowDelete":Z
    .end local v5    # "maxSavedGames":I
    .end local v8    # "title":Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 53
    .end local v3    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v7    # "success":Z
    :goto_0
    return-object v6

    .line 49
    :catch_0
    move-exception v4

    .line 51
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {p1, v4}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
