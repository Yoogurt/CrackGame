.class public Lcom/distriqt/extension/adverts/events/InterstitialEvent;
.super Ljava/lang/Object;
.source "InterstitialEvent.java"


# static fields
.field public static final CLOSED:Ljava/lang/String; = "interstitial:closed"

.field public static final ERROR:Ljava/lang/String; = "interstitial:error"

.field public static final LEFT_APPLICATION:Ljava/lang/String; = "interstitial:leftapplication"

.field public static final LOADED:Ljava/lang/String; = "interstitial:loaded"

.field public static final OPENED:Ljava/lang/String; = "interstitial:opened"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatForErrorEvent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "errorCode"    # I

    .prologue
    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v0, "event":Lorg/json/JSONObject;
    const-string v1, "identifier"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    .end local v0    # "event":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v1

    .line 61
    const-string v1, "{}"

    goto :goto_0
.end method

.method public static formatForEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v0, "event":Lorg/json/JSONObject;
    const-string v1, "identifier"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    .end local v0    # "event":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 40
    :catch_0
    move-exception v1

    .line 43
    const-string v1, "{}"

    goto :goto_0
.end method
