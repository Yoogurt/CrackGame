.class public Lcom/distriqt/extension/gameservices/objects/Achievement;
.super Ljava/lang/Object;
.source "Achievement.java"


# instance fields
.field public currentSteps:I

.field public description:Ljava/lang/String;

.field public iconLockedUrl:Ljava/lang/String;

.field public iconUnlockedUrl:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public points:I

.field public state:I

.field public totalSteps:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "id"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Achievement;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "name"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Achievement;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v1, "description"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Achievement;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v1, "type"

    iget v2, p0, Lcom/distriqt/extension/gameservices/objects/Achievement;->type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    const-string v1, "state"

    iget v2, p0, Lcom/distriqt/extension/gameservices/objects/Achievement;->state:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string v1, "iconLockedUrl"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Achievement;->iconLockedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "iconUnlockedUrl"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Achievement;->iconUnlockedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "currentSteps"

    iget v2, p0, Lcom/distriqt/extension/gameservices/objects/Achievement;->currentSteps:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string v1, "totalSteps"

    iget v2, p0, Lcom/distriqt/extension/gameservices/objects/Achievement;->totalSteps:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string v1, "points"

    iget v2, p0, Lcom/distriqt/extension/gameservices/objects/Achievement;->points:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    return-object v0
.end method
