.class public Lcom/distriqt/extension/adverts/events/ConsentEvent;
.super Ljava/lang/Object;
.source "ConsentEvent.java"


# static fields
.field public static final FORM_CLOSED:Ljava/lang/String; = "consent:form:closed"

.field public static final FORM_ERROR:Ljava/lang/String; = "consent:form:error"

.field public static final STATUS_ERROR:Ljava/lang/String; = "consent:status:error"

.field public static final STATUS_UPDATED:Ljava/lang/String; = "consent:status:updated"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatErrorForEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v0, "event":Lorg/json/JSONObject;
    const-string v1, "error"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    .end local v0    # "event":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v1

    .line 67
    const-string v1, "{}"

    goto :goto_0
.end method

.method public static formatForEvent(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "inEeaOrUnknown"    # Z
    .param p2, "userPrefersAdFree"    # Z

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v0, "event":Lorg/json/JSONObject;
    const-string v1, "status"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "inEeaOrUnknown"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 43
    const-string v1, "userPrefersAdFree"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    .end local v0    # "event":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v1

    .line 50
    const-string v1, "{}"

    goto :goto_0
.end method
