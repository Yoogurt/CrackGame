.class public Lcom/distriqt/extension/gameservices/events/AchievementsEvent;
.super Ljava/lang/Object;
.source "AchievementsEvent.java"


# static fields
.field public static final ACHIEVEMENTS_ERROR:Ljava/lang/String; = "achievements:error"

.field public static final ACHIEVEMENTS_LOADED:Ljava/lang/String; = "achievements:loaded"

.field public static final ACHIEVEMENTS_RESET_COMPLETE:Ljava/lang/String; = "achievements:reset:complete"

.field public static final ACHIEVEMENTS_RESET_ERROR:Ljava/lang/String; = "achievements:reset:error"

.field public static final ACHIEVEMENTS_UI_CLOSED:Ljava/lang/String; = "achievements:ui:closed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatAchievementsForEvent(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/Achievement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "achievements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/Achievement;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v3, "jsonObj":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 52
    .local v0, "achievementsObj":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 54
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/distriqt/extension/gameservices/objects/Achievement;

    invoke-virtual {v4}, Lcom/distriqt/extension/gameservices/objects/Achievement;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const-string v4, "achievements"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 63
    .end local v0    # "achievementsObj":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 59
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-static {v4, v1}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 63
    const-string v4, ""

    goto :goto_1
.end method
