.class public Lcom/distriqt/extension/gameservices/events/PlayerEventEvent;
.super Ljava/lang/Object;
.source "PlayerEventEvent.java"


# static fields
.field public static final EVENTS_LOAD_ERROR:Ljava/lang/String; = "events:load:error"

.field public static final EVENTS_LOAD_SUCCESS:Ljava/lang/String; = "events:load:success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatEventsForEvent(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/PlayerEvent;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/PlayerEvent;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v3, "jsonObj":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 43
    .local v1, "eventsObj":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 45
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;

    invoke-virtual {v4}, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_0
    const-string v4, "events"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 55
    .end local v1    # "eventsObj":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .line 55
    const-string v4, ""

    goto :goto_1
.end method
