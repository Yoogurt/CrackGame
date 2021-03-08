.class public Lcom/distriqt/extension/applicationrater/events/ApplicationIDEvent;
.super Ljava/lang/Object;
.source "ApplicationIDEvent.java"


# static fields
.field public static final ERROR:Ljava/lang/String; = "applicationId:error"

.field public static final RETRIEVED:Ljava/lang/String; = "applicationId:retrieved"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatForErrorEvent(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "errorCode"    # I
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    .end local v0    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v1

    .line 58
    const-string v1, "{}"

    goto :goto_0
.end method

.method public static formatForEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 31
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "applicationId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 40
    .end local v0    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v1

    .line 40
    const-string v1, "{}"

    goto :goto_0
.end method
