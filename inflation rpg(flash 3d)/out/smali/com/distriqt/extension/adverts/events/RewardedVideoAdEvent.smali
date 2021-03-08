.class public Lcom/distriqt/extension/adverts/events/RewardedVideoAdEvent;
.super Ljava/lang/Object;
.source "RewardedVideoAdEvent.java"


# static fields
.field public static final CLOSED:Ljava/lang/String; = "rewardedvideoad:closed"

.field public static final ERROR:Ljava/lang/String; = "rewardedvideoad:error"

.field public static final LEFT_APPLICATION:Ljava/lang/String; = "rewardedvideoad:leftapplication"

.field public static final LOADED:Ljava/lang/String; = "rewardedvideoad:loaded"

.field public static final OPENED:Ljava/lang/String; = "rewardedvideoad:opened"

.field public static final REWARD:Ljava/lang/String; = "rewardedvideoad:reward"

.field public static final VIDEO_COMPLETE:Ljava/lang/String; = "rewardedvideoad:video:complete"

.field public static final VIDEO_STARTED:Ljava/lang/String; = "rewardedvideoad:video:started"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatForErrorEvent(I)Ljava/lang/String;
    .locals 2
    .param p0, "errorCode"    # I

    .prologue
    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v0, "event":Lorg/json/JSONObject;
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    .end local v0    # "event":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 57
    :catch_0
    move-exception v1

    .line 60
    const-string v1, "{}"

    goto :goto_0
.end method

.method public static formatForEvent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v0, "event":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    :goto_0
    return-object v1

    .line 40
    :catch_0
    move-exception v1

    .line 43
    const-string v1, "{}"

    goto :goto_0
.end method

.method public static formatForRewardEvent(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "rewardAmount"    # I
    .param p1, "rewardType"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v0, "event":Lorg/json/JSONObject;
    const-string v1, "rewardAmount"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    const-string v1, "rewardType"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    .end local v0    # "event":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v1

    .line 78
    const-string v1, "{}"

    goto :goto_0
.end method
