.class public Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchFinishMatchFunction;
.super Ljava/lang/Object;
.source "TurnBasedMultiplayerMatchFinishMatchFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
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
    .line 68
    invoke-virtual {p0}, Lcom/adobe/fre/FREByteArray;->acquire()V

    .line 69
    invoke-virtual {p0}, Lcom/adobe/fre/FREByteArray;->getLength()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v0, v1, [B

    .line 70
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {p0}, Lcom/adobe/fre/FREByteArray;->release()V

    .line 72
    return-object v0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 18
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 38
    const/4 v12, 0x0

    .line 41
    .local v12, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v8, v0

    .line 43
    .local v8, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v2, 0x0

    aget-object v2, p2, v2

    const-string v13, "matchId"

    invoke-virtual {v2, v13}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "matchId":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p2, v2

    const-string v13, "status"

    invoke-virtual {v2, v13}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    .line 45
    .local v4, "status":I
    const/4 v2, 0x0

    aget-object v2, p2, v2

    const-string v13, "turnStatus"

    invoke-virtual {v2, v13}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v5

    .line 46
    .local v5, "turnStatus":I
    const/4 v2, 0x0

    aget-object v2, p2, v2

    const-string v13, "data"

    invoke-virtual {v2, v13}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    check-cast v2, Lcom/adobe/fre/FREByteArray;

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchFinishMatchFunction;->GetObjectAsByteArray(Lcom/adobe/fre/FREByteArray;)[B

    move-result-object v6

    .line 48
    .local v6, "matchData":[B
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Lcom/distriqt/extension/gameservices/objects/ParticipantResult;>;"
    const/4 v2, 0x1

    aget-object v10, p2, v2

    check-cast v10, Lcom/adobe/fre/FREArray;

    .line 50
    .local v10, "freResults":Lcom/adobe/fre/FREArray;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    int-to-long v14, v11

    invoke-virtual {v10}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v16

    cmp-long v2, v14, v16

    if-gez v2, :cond_0

    .line 52
    int-to-long v14, v11

    invoke-virtual {v10, v14, v15}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/objects/ParticipantResult;->fromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/gameservices/objects/ParticipantResult;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v8}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v8}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v2

    iget-object v2, v2, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v2}, Lcom/distriqt/extension/gameservices/services/IGameService;->turnBasedMultiplayer()Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v8}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v2

    iget-object v2, v2, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v2}, Lcom/distriqt/extension/gameservices/services/IGameService;->turnBasedMultiplayer()Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;

    move-result-object v2

    invoke-interface/range {v2 .. v7}, Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;->finishMatch(Ljava/lang/String;II[BLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v3    # "matchId":Ljava/lang/String;
    .end local v4    # "status":I
    .end local v5    # "turnStatus":I
    .end local v6    # "matchData":[B
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/distriqt/extension/gameservices/objects/ParticipantResult;>;"
    .end local v8    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v10    # "freResults":Lcom/adobe/fre/FREArray;
    .end local v11    # "i":I
    :cond_1
    :goto_1
    return-object v12

    .line 58
    :catch_0
    move-exception v9

    .line 60
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
