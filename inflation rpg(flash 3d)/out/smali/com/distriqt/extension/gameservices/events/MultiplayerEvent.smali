.class public Lcom/distriqt/extension/gameservices/events/MultiplayerEvent;
.super Ljava/lang/Object;
.source "MultiplayerEvent.java"


# static fields
.field public static final INVITATION_RECEIVED:Ljava/lang/String; = "multiplayer:invitation:received"

.field public static final INVITATION_REMOVED:Ljava/lang/String; = "multiplayer:invitation:removed"

.field public static final LOADINVITES_FAILED:Ljava/lang/String; = "multiplayer:loadinvites:failed"

.field public static final LOADINVITES_NOTSUPPORTED:Ljava/lang/String; = "multiplayer:loadinvites:notsupported"

.field public static final LOADINVITES_SUCCESS:Ljava/lang/String; = "multiplayer:loadinvites:success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatInvitationForEvent(Lcom/distriqt/extension/gameservices/objects/Invitation;)Ljava/lang/String;
    .locals 4
    .param p0, "invitation"    # Lcom/distriqt/extension/gameservices/objects/Invitation;

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "invitation"

    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/objects/Invitation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 76
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 76
    const-string v2, ""

    goto :goto_0
.end method

.method public static formatInvitationsForEvent(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/Invitation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "invitations":Ljava/util/List;, "Ljava/util/List<Lcom/distriqt/extension/gameservices/objects/Invitation;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .local v3, "jsonObj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 49
    .local v2, "invitationsObj":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/distriqt/extension/gameservices/objects/Invitation;

    .line 51
    .local v1, "invitation":Lcom/distriqt/extension/gameservices/objects/Invitation;
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/objects/Invitation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v1    # "invitation":Lcom/distriqt/extension/gameservices/objects/Invitation;
    .end local v2    # "invitationsObj":Lorg/json/JSONArray;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-static {v4, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 60
    const-string v4, ""

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v4

    .line 53
    .restart local v2    # "invitationsObj":Lorg/json/JSONArray;
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v4, "invitations"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public static formatParticipants(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/Participant;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "participants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/Participant;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 83
    .local v0, "arr":Lorg/json/JSONArray;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/distriqt/extension/gameservices/objects/Participant;

    .line 85
    .local v1, "p":Lcom/distriqt/extension/gameservices/objects/Participant;
    invoke-virtual {v1}, Lcom/distriqt/extension/gameservices/objects/Participant;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 87
    .end local v1    # "p":Lcom/distriqt/extension/gameservices/objects/Participant;
    :cond_0
    return-object v0
.end method
