.class public Lcom/distriqt/extension/gameservices/events/QuestEvent;
.super Ljava/lang/Object;
.source "QuestEvent.java"


# static fields
.field public static final QUESTS_LOAD_ERROR:Ljava/lang/String; = "quests:load:error"

.field public static final QUESTS_LOAD_SUCCESS:Ljava/lang/String; = "quests:load:success"

.field public static final QUESTS_UI_CLOSED:Ljava/lang/String; = "quests:ui:closed"

.field public static final QUEST_ACCEPT_ERROR:Ljava/lang/String; = "quests:quest:accept:error"

.field public static final QUEST_ACCEPT_SUCCESS:Ljava/lang/String; = "quests:quest:accept:success"

.field public static final QUEST_CLAIM_ERROR:Ljava/lang/String; = "quests:quest:claim:error"

.field public static final QUEST_CLAIM_SUCCESS:Ljava/lang/String; = "quests:quest:claim:success"

.field public static final QUEST_COMPLETED:Ljava/lang/String; = "quests:quest:completed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatQuestForEvent(Lcom/distriqt/extension/gameservices/objects/Quest;)Ljava/lang/String;
    .locals 4
    .param p0, "quest"    # Lcom/distriqt/extension/gameservices/objects/Quest;

    .prologue
    .line 72
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "quest"

    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/objects/Quest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 80
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .line 80
    const-string v2, ""

    goto :goto_0
.end method

.method public static formatQuestsForEvent(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/Quest;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "quests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/Quest;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v2, "jsonObj":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 52
    .local v3, "questsObj":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 54
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/distriqt/extension/gameservices/objects/Quest;

    invoke-virtual {v4}, Lcom/distriqt/extension/gameservices/objects/Quest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const-string v4, "quests"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 64
    .end local v1    # "i":I
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "questsObj":Lorg/json/JSONArray;
    :goto_1
    return-object v4

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .line 64
    const-string v4, ""

    goto :goto_1
.end method
