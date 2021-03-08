.class public Lcom/distriqt/extension/gameservices/events/PlayersEvent;
.super Ljava/lang/Object;
.source "PlayersEvent.java"


# static fields
.field public static final LOAD_PLAYER_FRIENDS_ERROR:Ljava/lang/String; = "players:loadPlayerFriends:error"

.field public static final LOAD_PLAYER_FRIENDS_SUCCESS:Ljava/lang/String; = "players:loadPlayerFriends:success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatPlayersForEvent(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/Player;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "players":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/Player;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v2, "jsonObj":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 41
    .local v3, "playersObj":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 43
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/distriqt/extension/gameservices/objects/Player;

    invoke-virtual {v4}, Lcom/distriqt/extension/gameservices/objects/Player;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    const-string v4, "players"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 54
    .end local v1    # "i":I
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "playersObj":Lorg/json/JSONArray;
    :goto_1
    return-object v4

    .line 50
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-static {v4, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 54
    const-string v4, ""

    goto :goto_1
.end method
