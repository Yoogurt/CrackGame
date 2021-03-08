.class public Lcom/distriqt/extension/gameservices/objects/SavedGame;
.super Ljava/lang/Object;
.source "SavedGame.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public coverImageAspectRatio:F

.field public coverImageUrl:Ljava/lang/String;

.field public data:[B

.field public description:Ljava/lang/String;

.field public lastModifiedTimestamp:J

.field public owner:Lcom/distriqt/extension/gameservices/objects/Player;

.field public playedTime:J

.field public uniqueName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/distriqt/extension/gameservices/objects/SavedGame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/objects/SavedGame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/objects/SavedGame;->data:[B

    return-void
.end method

.method public static fromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/gameservices/objects/SavedGame;
    .locals 6
    .param p0, "obj"    # Lcom/adobe/fre/FREObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 74
    new-instance v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;

    invoke-direct {v1}, Lcom/distriqt/extension/gameservices/objects/SavedGame;-><init>()V

    .line 76
    .local v1, "s":Lcom/distriqt/extension/gameservices/objects/SavedGame;
    const-string v2, "uniqueName"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "uniqueName"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->uniqueName:Ljava/lang/String;

    .line 77
    const-string v2, "description"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "description"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->description:Ljava/lang/String;

    .line 78
    const-string v2, "modified"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "modified"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    int-to-long v2, v2

    :goto_2
    iput-wide v2, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->lastModifiedTimestamp:J

    .line 79
    const-string v2, "playedTime"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "playedTime"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    int-to-long v4, v2

    :cond_0
    iput-wide v4, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->playedTime:J

    .line 86
    :try_start_0
    const-string v2, "owner"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/objects/Player;->fromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/gameservices/objects/Player;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->owner:Lcom/distriqt/extension/gameservices/objects/Player;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_3
    const-string v2, "data"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 96
    const-string v2, "data"

    invoke-virtual {p0, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    check-cast v0, Lcom/adobe/fre/FREByteArray;

    .line 97
    .local v0, "byteArray":Lcom/adobe/fre/FREByteArray;
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->acquire()V

    .line 98
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->getLength()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->data:[B

    .line 99
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->data:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->release()V

    .line 103
    .end local v0    # "byteArray":Lcom/adobe/fre/FREByteArray;
    :cond_1
    return-object v1

    .line 76
    :cond_2
    const-string v2, ""

    goto :goto_0

    .line 77
    :cond_3
    const-string v2, ""

    goto :goto_1

    :cond_4
    move-wide v2, v4

    .line 78
    goto :goto_2

    .line 88
    :catch_0
    move-exception v2

    goto :goto_3
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
    .line 47
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "player"

    iget-object v3, p0, Lcom/distriqt/extension/gameservices/objects/SavedGame;->owner:Lcom/distriqt/extension/gameservices/objects/Player;

    invoke-virtual {v3}, Lcom/distriqt/extension/gameservices/objects/Player;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v2, "uniqueName"

    iget-object v3, p0, Lcom/distriqt/extension/gameservices/objects/SavedGame;->uniqueName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v2, "description"

    iget-object v3, p0, Lcom/distriqt/extension/gameservices/objects/SavedGame;->description:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v2, "lastModifiedTimestamp"

    iget-wide v4, p0, Lcom/distriqt/extension/gameservices/objects/SavedGame;->lastModifiedTimestamp:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 53
    const-string v2, "playedTime"

    iget-wide v4, p0, Lcom/distriqt/extension/gameservices/objects/SavedGame;->playedTime:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 54
    const-string v2, "coverImageAspectRatio"

    iget v3, p0, Lcom/distriqt/extension/gameservices/objects/SavedGame;->coverImageAspectRatio:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 55
    const-string v2, "coverImageUrl"

    iget-object v3, p0, Lcom/distriqt/extension/gameservices/objects/SavedGame;->coverImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v0, ""

    .line 58
    .local v0, "base64Data":Ljava/lang/String;
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/SavedGame;->data:[B

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/SavedGame;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    return-object v1
.end method
