.class public Lcom/distriqt/extension/gameservices/events/LeaderboardEvent;
.super Ljava/lang/Object;
.source "LeaderboardEvent.java"


# static fields
.field public static final LEADERBOARDS_ERROR:Ljava/lang/String; = "leaderboards:error"

.field public static final LEADERBOARDS_LOADED:Ljava/lang/String; = "leaderboards:loaded"

.field public static final LEADERBOARD_PLAYERCENTEREDSCORES_ERROR:Ljava/lang/String; = "leaderboard:playercenteredscores:error"

.field public static final LEADERBOARD_PLAYERCENTEREDSCORES_LOADED:Ljava/lang/String; = "leaderboard:playercenteredscores:loaded"

.field public static final LEADERBOARD_SCORES_ERROR:Ljava/lang/String; = "leaderboard:scores:error"

.field public static final LEADERBOARD_SCORES_LOADED:Ljava/lang/String; = "leaderboard:scores:loaded"

.field public static final LEADERBOARD_SUBMITSCORE_ERROR:Ljava/lang/String; = "leaderboard:submitscore:error"

.field public static final LEADERBOARD_SUBMITSCORE_SUCCESS:Ljava/lang/String; = "leaderboard:submitscore:success"

.field public static final LEADERBOARD_TOPSCORES_ERROR:Ljava/lang/String; = "leaderboard:topscores:error"

.field public static final LEADERBOARD_TOPSCORES_LOADED:Ljava/lang/String; = "leaderboard:topscores:loaded"

.field public static final LEADERBOARD_UI_CLOSED:Ljava/lang/String; = "leaderboard:ui:closed"

.field public static final PLAYERSCORE_ERROR:Ljava/lang/String; = "leaderboard:playerscore:error"

.field public static final PLAYERSCORE_LOADED:Ljava/lang/String; = "leaderboard:playerscore:loaded"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatLeaderboardsForEvent(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/Leaderboard;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "boards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/Leaderboard;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .local v2, "jsonObj":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 66
    .local v3, "leaderboardsObj":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 68
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/distriqt/extension/gameservices/objects/Leaderboard;

    invoke-virtual {v4}, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    const-string v4, "leaderboards"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 79
    .end local v1    # "i":I
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "leaderboardsObj":Lorg/json/JSONArray;
    :goto_1
    return-object v4

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-static {v4, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 79
    const-string v4, ""

    goto :goto_1
.end method

.method public static formatScoreResultForEvent(Ljava/lang/String;Lcom/distriqt/extension/gameservices/objects/ScoreResult;)Ljava/lang/String;
    .locals 5
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "result"    # Lcom/distriqt/extension/gameservices/objects/ScoreResult;

    .prologue
    .line 113
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 115
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "leaderboardId"

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 119
    .local v2, "scoreResultObj":Lorg/json/JSONObject;
    const-string v3, "newBest"

    iget-boolean v4, p1, Lcom/distriqt/extension/gameservices/objects/ScoreResult;->newBest:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 120
    const-string v3, "formattedValye"

    iget-object v4, p1, Lcom/distriqt/extension/gameservices/objects/ScoreResult;->formattedScore:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v3, "formattedValye"

    iget v4, p1, Lcom/distriqt/extension/gameservices/objects/ScoreResult;->score:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    const-string v3, "scoreResult"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 131
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "scoreResultObj":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 131
    const-string v3, ""

    goto :goto_0
.end method

.method public static formatScoresForEvent(Lcom/distriqt/extension/gameservices/objects/Leaderboard;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .param p0, "board"    # Lcom/distriqt/extension/gameservices/objects/Leaderboard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/distriqt/extension/gameservices/objects/Leaderboard;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "scores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "leaderboard"

    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 92
    .local v3, "scoresObj":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 94
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;

    invoke-virtual {v4}, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const-string v4, "scores"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 105
    .end local v1    # "i":I
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "scoresObj":Lorg/json/JSONArray;
    :goto_1
    return-object v4

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-static {v4, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 105
    const-string v4, ""

    goto :goto_1
.end method
