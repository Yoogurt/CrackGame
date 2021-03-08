.class public Lcom/distriqt/extension/gameservices/events/SavedGamesEvent;
.super Ljava/lang/Object;
.source "SavedGamesEvent.java"


# static fields
.field public static final CONFLICT:Ljava/lang/String; = "savedgames:conflict"

.field public static final CONFLICT_RESOLVE_ERROR:Ljava/lang/String; = "savedgames:conflict:resolve:error"

.field public static final CONFLICT_RESOLVE_SUCCESS:Ljava/lang/String; = "savedgames:conflict:resolve:success"

.field public static final CREATE_ERROR:Ljava/lang/String; = "savedgames:create:error"

.field public static final CREATE_FAILED:Ljava/lang/String; = "savedgames:create:failed"

.field public static final CREATE_SUCCESS:Ljava/lang/String; = "savedgames:create:success"

.field public static final DELETE_ERROR:Ljava/lang/String; = "savedgames:delete:error"

.field public static final DELETE_SUCCESS:Ljava/lang/String; = "savedgames:delete:success"

.field public static final OPEN_ERROR:Ljava/lang/String; = "savedgames:open:error"

.field public static final OPEN_FAILED:Ljava/lang/String; = "savedgames:open:failed"

.field public static final OPEN_NOT_FOUND:Ljava/lang/String; = "savedgames:open:notfound"

.field public static final OPEN_SUCCESS:Ljava/lang/String; = "savedgames:open:success"

.field public static final SAVEDGAMES_LOAD_ERROR:Ljava/lang/String; = "savedgames:load:error"

.field public static final SAVEDGAMES_LOAD_SUCCESS:Ljava/lang/String; = "savedgames:load:success"

.field public static final SAVE_ERROR:Ljava/lang/String; = "savedgames:save:error"

.field public static final SAVE_SUCCESS:Ljava/lang/String; = "savedgames:save:success"

.field public static final TAG:Ljava/lang/String;

.field public static final UI_CLOSED:Ljava/lang/String; = "savedgames:ui:closed"

.field public static final UI_SELECT:Ljava/lang/String; = "savedgames:ui:select"

.field public static final UI_SELECT_NEW:Ljava/lang/String; = "savedgames:ui:new"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/distriqt/extension/gameservices/events/SavedGamesEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/events/SavedGamesEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatSavedGamesForEvent(Lcom/distriqt/extension/gameservices/objects/SavedGame;)Ljava/lang/String;
    .locals 4
    .param p0, "savedgame"    # Lcom/distriqt/extension/gameservices/objects/SavedGame;

    .prologue
    .line 73
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .local v1, "jsonObj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 76
    .local v2, "savedgamesObj":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/objects/SavedGame;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    const-string v3, "savedgames"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 85
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "savedgamesObj":Lorg/json/JSONArray;
    :goto_0
    return-object v3

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 85
    const-string v3, "{}"

    goto :goto_0
.end method

.method public static formatSavedGamesForEvent(Lcom/distriqt/extension/gameservices/objects/SavedGame;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "savedgame"    # Lcom/distriqt/extension/gameservices/objects/SavedGame;
    .param p1, "conflictId"    # Ljava/lang/String;

    .prologue
    .line 141
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "conflictId"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 145
    .local v2, "savedgamesObj":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/objects/SavedGame;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 147
    const-string v3, "savedgames"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 154
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "savedgamesObj":Lorg/json/JSONArray;
    :goto_0
    return-object v3

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 154
    const-string v3, "{}"

    goto :goto_0
.end method

.method public static formatSavedGamesForEvent(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/SavedGame;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "savedgames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/SavedGame;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v2, "jsonObj":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 96
    .local v3, "savedgamesObj":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 98
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/distriqt/extension/gameservices/objects/SavedGame;

    invoke-virtual {v4}, Lcom/distriqt/extension/gameservices/objects/SavedGame;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    const-string v4, "savedgames"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 107
    .end local v1    # "i":I
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "savedgamesObj":Lorg/json/JSONArray;
    :goto_1
    return-object v4

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-static {v4, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 107
    const-string v4, "{}"

    goto :goto_1
.end method

.method public static formatSavedGamesForEvent(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "conflictId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/SavedGame;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "savedgames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/SavedGame;>;"
    :try_start_0
    sget-object v4, Lcom/distriqt/extension/gameservices/events/SavedGamesEvent;->TAG:Ljava/lang/String;

    const-string v5, "formatSavedGamesForEvent( [%d], %s )"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "conflictId"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 121
    .local v3, "savedgamesObj":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 123
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/distriqt/extension/gameservices/objects/SavedGame;

    invoke-virtual {v4}, Lcom/distriqt/extension/gameservices/objects/SavedGame;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    const-string v4, "savedgames"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 133
    .end local v1    # "i":I
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "savedgamesObj":Lorg/json/JSONArray;
    :goto_1
    return-object v4

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-static {v4, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 133
    const-string v4, "{}"

    goto :goto_1
.end method
