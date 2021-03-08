.class public Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchTakeTurnFunction;
.super Ljava/lang/Object;
.source "TurnBasedMultiplayerMatchTakeTurnFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetObjectAsByteArray(Lcom/adobe/fre/FREByteArray;)[B
    .locals 4
    .param p0, "byteArray"    # Lcom/adobe/fre/FREByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/adobe/fre/FREByteArray;->acquire()V

    .line 57
    invoke-virtual {p0}, Lcom/adobe/fre/FREByteArray;->getLength()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v0, v1, [B

    .line 58
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {p0}, Lcom/adobe/fre/FREByteArray;->release()V

    .line 60
    return-object v0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 33
    const/4 v6, 0x0

    .line 36
    .local v6, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v1, v0

    .line 38
    .local v1, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v7, 0x0

    aget-object v7, p2, v7

    const-string v8, "matchId"

    invoke-virtual {v7, v8}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "matchId":Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, p2, v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    check-cast v7, Lcom/adobe/fre/FREByteArray;

    invoke-static {v7}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchTakeTurnFunction;->GetObjectAsByteArray(Lcom/adobe/fre/FREByteArray;)[B

    move-result-object v3

    .line 41
    .local v3, "matchData":[B
    const/4 v7, 0x1

    aget-object v7, p2, v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    aget-object v7, p2, v7

    const-string v8, "participantId"

    invoke-virtual {v7, v8}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "participantId":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v7

    iget-object v7, v7, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v7}, Lcom/distriqt/extension/gameservices/services/IGameService;->turnBasedMultiplayer()Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 44
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v7

    iget-object v7, v7, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v7}, Lcom/distriqt/extension/gameservices/services/IGameService;->turnBasedMultiplayer()Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;

    move-result-object v7

    invoke-interface {v7, v4, v3, v5}, Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;->takeTurn(Ljava/lang/String;[BLjava/lang/String;)V

    .line 50
    .end local v1    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v3    # "matchData":[B
    .end local v4    # "matchId":Ljava/lang/String;
    .end local v5    # "participantId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v6

    .line 41
    .restart local v1    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .restart local v3    # "matchData":[B
    .restart local v4    # "matchId":Ljava/lang/String;
    :cond_1
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    .end local v1    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v3    # "matchData":[B
    .end local v4    # "matchId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
