.class public Lcom/distriqt/extension/gameservices/events/ScreenRecordingEvent;
.super Ljava/lang/Object;
.source "ScreenRecordingEvent.java"


# static fields
.field public static final AVAILABILITY_CHANGED:Ljava/lang/String; = "screenrecording:availability:changed"

.field public static final COMPLETE:Ljava/lang/String; = "screenrecording:complete"

.field public static final CONTROLS_CLOSED:Ljava/lang/String; = "screenrecording:controls:closed"

.field public static final CONTROLS_SHOWN:Ljava/lang/String; = "screenrecording:controls:shown"

.field public static final ERROR:Ljava/lang/String; = "screenrecording:error"

.field public static final PREVIEW_CLOSED:Ljava/lang/String; = "screenrecording:preview:closed"

.field public static final PREVIEW_SHOWN:Ljava/lang/String; = "screenrecording:preview:shown"

.field public static final STARTED:Ljava/lang/String; = "screenrecording:started"

.field public static final STOPPED:Ljava/lang/String; = "screenrecording:stopped"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatAvailabilityForEvent(Z)Ljava/lang/String;
    .locals 2
    .param p0, "available"    # Z

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .local v0, "event":Lorg/json/JSONObject;
    const-string v1, "available"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    .end local v0    # "event":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v1

    .line 81
    const-string v1, "{}"

    goto :goto_0
.end method

.method public static formatForCompleteEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v0, "event":Lorg/json/JSONObject;
    if-eqz p0, :cond_0

    const-string v1, "filepath"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    .end local v0    # "event":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v1

    .line 48
    const-string v1, "{}"

    goto :goto_0
.end method

.method public static formatForErrorEvent(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v0, "event":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    if-eqz p1, :cond_0

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    .end local v0    # "event":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v1

    .line 66
    const-string v1, "{}"

    goto :goto_0
.end method
