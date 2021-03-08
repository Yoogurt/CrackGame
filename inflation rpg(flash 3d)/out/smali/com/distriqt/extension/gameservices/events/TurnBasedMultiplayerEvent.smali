.class public Lcom/distriqt/extension/gameservices/events/TurnBasedMultiplayerEvent;
.super Ljava/lang/Object;
.source "TurnBasedMultiplayerEvent.java"


# static fields
.field public static final CREATEMATCH_UI_CANCEL:Ljava/lang/String; = "turnbasedmultiplayer:creatematchui:cancel"

.field public static final CREATEMATCH_UI_ERROR:Ljava/lang/String; = "turnbasedmultiplayer:creatematchui:error"

.field public static final CREATEMATCH_UI_SUCCESS:Ljava/lang/String; = "turnbasedmultiplayer:creatematchui:success"

.field public static final LOADMATCHES_FAILED:Ljava/lang/String; = "turnbasedmultiplayer:loadmatches:failed"

.field public static final LOADMATCHES_SUCCESS:Ljava/lang/String; = "turnbasedmultiplayer:loadmatches:success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatMatchesForEvent(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/Invitation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;>;"
    .local p1, "invitations":Ljava/util/List;, "Ljava/util/List<Lcom/distriqt/extension/gameservices/objects/Invitation;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .local v3, "jsonObj":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 76
    .local v4, "matchesObj":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 78
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;

    invoke-virtual {v5}, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 82
    .local v2, "invitationsObj":Lorg/json/JSONArray;
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 84
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/distriqt/extension/gameservices/objects/Invitation;

    invoke-virtual {v5}, Lcom/distriqt/extension/gameservices/objects/Invitation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_1
    const-string v5, "matches"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v5, "invitations"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 96
    .end local v1    # "i":I
    .end local v2    # "invitationsObj":Lorg/json/JSONArray;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "matchesObj":Lorg/json/JSONArray;
    :goto_2
    return-object v5

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    invoke-static {v5, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 96
    const-string v5, ""

    goto :goto_2
.end method

.method public static formatPlayerSelectionForEvent(Ljava/util/List;II)Ljava/lang/String;
    .locals 5
    .param p1, "minAutoMatchPlayers"    # I
    .param p2, "maxAutoMatchPlayers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "invitees":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v3, "jsonObj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 50
    .local v2, "inviteesObj":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 52
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const-string v4, "invitees"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v4, "minAutoMatchPlayers"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string v4, "maxAutoMatchPlayers"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 65
    .end local v1    # "i":I
    .end local v2    # "inviteesObj":Lorg/json/JSONArray;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-static {v4, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 65
    const-string v4, ""

    goto :goto_1
.end method
