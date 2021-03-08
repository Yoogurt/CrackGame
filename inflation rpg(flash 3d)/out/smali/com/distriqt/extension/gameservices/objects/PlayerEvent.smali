.class public Lcom/distriqt/extension/gameservices/objects/PlayerEvent;
.super Ljava/lang/Object;
.source "PlayerEvent.java"


# instance fields
.field public description:Ljava/lang/String;

.field public eventId:Ljava/lang/String;

.field public formattedValue:Ljava/lang/String;

.field public iconImageUrl:Ljava/lang/String;

.field public isVisible:Z

.field public name:Ljava/lang/String;

.field public value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v0, "o":Lorg/json/JSONObject;
    const-string v1, "eventId"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->eventId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "name"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "description"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v1, "iconImageUrl"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->iconImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v1, "value"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->value:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    const-string v1, "formattedValue"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->formattedValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "isVisible"

    iget-boolean v2, p0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->isVisible:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 50
    return-object v0
.end method
