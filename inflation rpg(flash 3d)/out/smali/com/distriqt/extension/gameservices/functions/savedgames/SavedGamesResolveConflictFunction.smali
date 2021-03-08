.class public Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesResolveConflictFunction;
.super Ljava/lang/Object;
.source "SavedGamesResolveConflictFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesSaveGameFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesResolveConflictFunction;->TAG:Ljava/lang/String;

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
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 36
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "confictId":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-static {v5}, Lcom/distriqt/extension/gameservices/objects/SavedGame;->fromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/gameservices/objects/SavedGame;

    move-result-object v4

    .line 39
    .local v4, "s":Lcom/distriqt/extension/gameservices/objects/SavedGame;
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v2, v0

    .line 40
    .local v2, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
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

    invoke-interface {v5}, Lcom/distriqt/extension/gameservices/services/IGameService;->savedGames()Lcom/distriqt/extension/gameservices/services/ISavedGames;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 41
    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v5

    iget-object v5, v5, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v5}, Lcom/distriqt/extension/gameservices/services/IGameService;->savedGames()Lcom/distriqt/extension/gameservices/services/ISavedGames;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Lcom/distriqt/extension/gameservices/services/ISavedGames;->resolveConflict(Ljava/lang/String;Lcom/distriqt/extension/gameservices/objects/SavedGame;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "confictId":Ljava/lang/String;
    .end local v2    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v4    # "s":Lcom/distriqt/extension/gameservices/objects/SavedGame;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 43
    :catch_0
    move-exception v3

    .line 45
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p1, v3}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
