.class public Lcom/distriqt/extension/adverts/events/AdViewEvent;
.super Ljava/lang/Object;
.source "AdViewEvent.java"


# static fields
.field public static final CLOSED:Ljava/lang/String; = "adview:closed"

.field public static final ERROR:Ljava/lang/String; = "adview:error"

.field public static final LEFT_APPLICATION:Ljava/lang/String; = "adview:leftapplication"

.field public static final LOADED:Ljava/lang/String; = "adview:loaded"

.field public static final OPENED:Ljava/lang/String; = "adview:opened"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatForErrorEvent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "errorCode"    # I

    .prologue
    .line 50
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v0, "event":Lorg/json/JSONObject;
    const-string v1, "identifier"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

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

.method public static formatForEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 33
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v0, "event":Lorg/json/JSONObject;
    const-string v1, "identifier"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    .end local v0    # "event":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v1

    .line 42
    const-string v1, "{}"

    goto :goto_0
.end method
