.class public Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesDeleteGameFunction;
.super Ljava/lang/Object;
.source "SavedGamesDeleteGameFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesDeleteGameFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesDeleteGameFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 36
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    invoke-static {v4}, Lcom/distriqt/extension/gameservices/objects/SavedGame;->fromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/gameservices/objects/SavedGame;

    move-result-object v3

    .line 38
    .local v3, "s":Lcom/distriqt/extension/gameservices/objects/SavedGame;
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v1, v0

    .line 39
    .local v1, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
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

    invoke-interface {v4}, Lcom/distriqt/extension/gameservices/services/IGameService;->savedGames()Lcom/distriqt/extension/gameservices/services/ISavedGames;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 40
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v4

    iget-object v4, v4, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v4}, Lcom/distriqt/extension/gameservices/services/IGameService;->savedGames()Lcom/distriqt/extension/gameservices/services/ISavedGames;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/distriqt/extension/gameservices/services/ISavedGames;->deleteGame(Lcom/distriqt/extension/gameservices/objects/SavedGame;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v3    # "s":Lcom/distriqt/extension/gameservices/objects/SavedGame;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 42
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
