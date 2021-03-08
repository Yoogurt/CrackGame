.class public Lcom/distriqt/extension/gameservices/events/AuthUtilEvent;
.super Ljava/lang/Object;
.source "AuthUtilEvent.java"


# static fields
.field public static final AUTH_TOKEN_ERROR:Ljava/lang/String; = "auth:token:error"

.field public static final AUTH_TOKEN_SUCCESS:Ljava/lang/String; = "auth:token:success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "errorCode"    # I
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string v2, "error"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 90
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 90
    const-string v2, ""

    goto :goto_0
.end method

.method public static formatTokenForEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 65
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "token"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 73
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 73
    const-string v2, ""

    goto :goto_0
.end method

.method public static formatTokenForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "authCode"    # Ljava/lang/String;
    .param p1, "idToken"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v1, "jsonObj":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    const-string v2, "idToken"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_0
    if-eqz p0, :cond_1

    const-string v2, "authCode"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 58
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 58
    const-string v2, ""

    goto :goto_0
.end method
