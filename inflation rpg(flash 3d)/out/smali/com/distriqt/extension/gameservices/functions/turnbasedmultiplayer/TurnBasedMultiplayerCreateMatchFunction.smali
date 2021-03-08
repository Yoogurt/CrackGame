.class public Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerCreateMatchFunction;
.super Ljava/lang/Object;
.source "TurnBasedMultiplayerCreateMatchFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 37
    const/4 v6, 0x0

    .line 40
    .local v6, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v1, v0

    .line 42
    .local v1, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v8, 0x0

    aget-object v8, p2, v8

    const-string v9, "minAutoMatchPlayers"

    invoke-virtual {v8, v9}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v5

    .line 43
    .local v5, "minAutoMatchPlayers":I
    const/4 v8, 0x0

    aget-object v8, p2, v8

    const-string v9, "maxAutoMatchPlayers"

    invoke-virtual {v8, v9}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    .line 44
    .local v4, "maxAutoMatchPlayers":I
    const/4 v8, 0x0

    aget-object v8, p2, v8

    const-string v9, "variant"

    invoke-virtual {v8, v9}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    .line 46
    .local v7, "variant":I
    new-instance v3, Ljava/util/ArrayList;

    const/4 v8, 0x0

    aget-object v8, p2, v8

    const-string v9, "invitedPlayers"

    .line 47
    invoke-virtual {v8, v9}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v8

    check-cast v8, Lcom/adobe/fre/FREArray;

    invoke-static {v8}, Lcom/distriqt/core/utils/FREUtils;->GetObjectAsArrayOfStrings(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;

    move-result-object v8

    .line 46
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    .local v3, "invitedPlayers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v8

    iget-object v8, v8, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v8}, Lcom/distriqt/extension/gameservices/services/IGameService;->turnBasedMultiplayer()Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 51
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v8

    iget-object v8, v8, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v8}, Lcom/distriqt/extension/gameservices/services/IGameService;->turnBasedMultiplayer()Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;

    move-result-object v8

    invoke-interface {v8, v5, v4, v7, v3}, Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;->createMatch(IIILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v3    # "invitedPlayers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "maxAutoMatchPlayers":I
    .end local v5    # "minAutoMatchPlayers":I
    .end local v7    # "variant":I
    :cond_0
    :goto_0
    return-object v6

    .line 53
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
