.class public Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerLoadMatchesFunction;
.super Ljava/lang/Object;
.source "TurnBasedMultiplayerLoadMatchesFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerLoadMatchesFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerLoadMatchesFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 35
    const/4 v3, 0x0

    .line 38
    .local v3, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v1, v0

    .line 40
    .local v1, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    check-cast v5, Lcom/adobe/fre/FREArray;

    invoke-static {v5}, Lcom/distriqt/core/utils/FREUtils;->GetObjectAsArrayOfNumbers(Lcom/adobe/fre/FREArray;)[I

    move-result-object v4

    .line 42
    .local v4, "turnStatuses":[I
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v5

    iget-object v5, v5, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v5}, Lcom/distriqt/extension/gameservices/services/IGameService;->turnBasedMultiplayer()Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 43
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v5

    iget-object v5, v5, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v5}, Lcom/distriqt/extension/gameservices/services/IGameService;->turnBasedMultiplayer()Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;->loadMatches([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v4    # "turnStatuses":[I
    :cond_0
    :goto_0
    return-object v3

    .line 45
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
