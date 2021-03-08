.class public Lcom/distriqt/extension/gameservices/objects/Player;
.super Ljava/lang/Object;
.source "Player.java"


# instance fields
.field public alias:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public lastPlayedWithTimestamp:J

.field public modifiedTimestamp:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/objects/Player;->id:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/objects/Player;->displayName:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/objects/Player;->alias:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/objects/Player;->title:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/distriqt/extension/gameservices/objects/Player;->iconUrl:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/distriqt/extension/gameservices/objects/Player;->imageUrl:Ljava/lang/String;

    .line 34
    iput-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->lastPlayedWithTimestamp:J

    .line 35
    iput-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->modifiedTimestamp:J

    return-void
.end method

.method public static fromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/gameservices/objects/Player;
    .locals 4
    .param p0, "obj"    # Lcom/adobe/fre/FREObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/distriqt/extension/gameservices/objects/Player;

    invoke-direct {v0}, Lcom/distriqt/extension/gameservices/objects/Player;-><init>()V

    .line 69
    .local v0, "player":Lcom/distriqt/extension/gameservices/objects/Player;
    if-eqz p0, :cond_2

    .line 71
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Player;->id:Ljava/lang/String;

    .line 72
    const-string v1, "displayName"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Player;->displayName:Ljava/lang/String;

    .line 73
    const-string v1, "alias"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Player;->alias:Ljava/lang/String;

    .line 74
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Player;->title:Ljava/lang/String;

    .line 76
    const-string v1, "iconUrl"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "iconUrl"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Player;->iconUrl:Ljava/lang/String;

    .line 79
    :cond_0
    const-string v1, "imageUrl"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 80
    const-string v1, "imageUrl"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Player;->imageUrl:Ljava/lang/String;

    .line 82
    :cond_1
    const-string v1, "lastPlayedWithTimestamp"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v2

    double-to-long v2, v2

    iput-wide v2, v0, Lcom/distriqt/extension/gameservices/objects/Player;->lastPlayedWithTimestamp:J

    .line 83
    const-string v1, "modifiedTimestamp"

    invoke-virtual {p0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v2

    double-to-long v2, v2

    iput-wide v2, v0, Lcom/distriqt/extension/gameservices/objects/Player;->modifiedTimestamp:J

    .line 85
    :cond_2
    return-object v0
.end method

.method public static toFREObject(Lcom/distriqt/extension/gameservices/objects/Player;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p0, "player"    # Lcom/distriqt/extension/gameservices/objects/Player;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    const-string v1, "Object"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    .line 93
    .local v0, "f":Lcom/adobe/fre/FREObject;
    const-string v1, "id"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->id:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 94
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->displayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 95
    const-string v1, "alias"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->alias:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 96
    const-string v1, "title"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 98
    const-string v1, "iconUrl"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 99
    const-string v1, "imageUrl"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 101
    const-string v1, "lastPlayedWithTimestamp"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->lastPlayedWithTimestamp:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 102
    const-string v1, "modifiedTimestamp"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->modifiedTimestamp:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    .line 104
    return-object v0
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "id"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v1, "alias"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v1, "title"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/objects/Player;->iconUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "iconUrl"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/objects/Player;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 52
    const-string v1, "imageUrl"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_1
    const-string v1, "lastPlayedWithTimestamp"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->lastPlayedWithTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 56
    const-string v1, "modifiedTimestamp"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/Player;->modifiedTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 58
    return-object v0
.end method
