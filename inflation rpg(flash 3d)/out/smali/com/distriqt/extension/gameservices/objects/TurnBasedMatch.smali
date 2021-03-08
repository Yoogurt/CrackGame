.class public Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;
.super Ljava/lang/Object;
.source "TurnBasedMatch.java"


# instance fields
.field public canRematch:Z

.field public created:J

.field public creatorId:Ljava/lang/String;

.field public data:[B

.field public dataMaxSize:I

.field public matchDescription:Ljava/lang/String;

.field public matchId:Ljava/lang/String;

.field public participants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/Participant;",
            ">;"
        }
    .end annotation
.end field

.field public status:I

.field public turnStatus:I

.field public variant:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "matchId"

    iget-object v4, p0, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->matchId:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v2, "status"

    iget v4, p0, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->status:I

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string v2, "turnStatus"

    iget v4, p0, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->turnStatus:I

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    const-string v2, "variant"

    iget v4, p0, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->variant:I

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string v2, "creatorId"

    iget-object v4, p0, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->creatorId:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v2, "description"

    iget-object v4, p0, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->matchDescription:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v2, "created"

    iget-wide v4, p0, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->created:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    const-string v4, "canRematch"

    iget-boolean v2, p0, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->canRematch:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string v0, ""

    .line 64
    .local v0, "base64Data":Ljava/lang/String;
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->data:[B

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->data:[B

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v2, "dataMaxSize"

    iget v3, p0, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->dataMaxSize:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    const-string v2, "participants"

    iget-object v3, p0, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->participants:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/events/MultiplayerEvent;->formatParticipants(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    return-object v1

    .end local v0    # "base64Data":Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 59
    goto :goto_0
.end method
