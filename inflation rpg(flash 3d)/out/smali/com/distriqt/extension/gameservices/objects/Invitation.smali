.class public Lcom/distriqt/extension/gameservices/objects/Invitation;
.super Ljava/lang/Object;
.source "Invitation.java"


# instance fields
.field public created:J

.field public id:Ljava/lang/String;

.field public inviter:Lcom/distriqt/extension/gameservices/objects/Participant;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "id"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Invitation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v1, "created"

    iget-wide v2, p0, Lcom/distriqt/extension/gameservices/objects/Invitation;->created:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 34
    const-string v1, "type"

    iget v2, p0, Lcom/distriqt/extension/gameservices/objects/Invitation;->type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    const-string v1, "inviter"

    iget-object v2, p0, Lcom/distriqt/extension/gameservices/objects/Invitation;->inviter:Lcom/distriqt/extension/gameservices/objects/Participant;

    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/objects/Participant;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    return-object v0
.end method
