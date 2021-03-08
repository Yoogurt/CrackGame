.class public Lcom/distriqt/extension/gameservices/objects/Participant;
.super Ljava/lang/Object;
.source "Participant.java"


# instance fields
.field public displayName:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public participantId:Ljava/lang/String;

.field public player:Lcom/distriqt/extension/gameservices/objects/Player;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/gameservices/objects/Participant;
    .locals 2
    .param p0, "obj"    # Lcom/adobe/fre/FREObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/distriqt/extension/gameservices/objects/Participant;

    invoke-direct {v0}, Lcom/distriqt/extension/gameservices/objects/Participant;-><init>()V

    .line 55
    .local v0, "p":Lcom/distriqt/extension/gameservices/objects/Participant;
    const-string v1, "participantId"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Participant;->participantId:Ljava/lang/String;

    .line 56
    const-string v1, "player"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/objects/Player;->fromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/gameservices/objects/Player;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Participant;->player:Lcom/distriqt/extension/gameservices/objects/Player;

    .line 57
    const-string v1, "status"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    iput v1, v0, Lcom/distriqt/extension/gameservices/objects/Participant;->status:I

    .line 58
    const-string v1, "displayName"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Participant;->displayName:Ljava/lang/String;

    .line 59
    const-string v1, "iconUrl"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Participant;->iconUrl:Ljava/lang/String;

    .line 60
    const-string v1, "imageUrl"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Participant;->imageUrl:Ljava/lang/String;

    .line 61
    return-object v0
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "participantId"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Participant;->participantId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v1, "player"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Participant;->player:Lcom/distriqt/extension/gameservices/objects/Player;

    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/objects/Player;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "status"

    iget v2, p0, Lcom/distriqt/extension/gameservices/objects/Participant;->status:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Participant;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v1, "iconUrl"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Participant;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v1, "imageUrl"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Participant;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    return-object v0
.end method
