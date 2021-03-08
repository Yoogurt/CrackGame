.class public Lcom/distriqt/extension/gameservices/events/PlayerIconEvent;
.super Ljava/lang/Object;
.source "PlayerIconEvent.java"


# static fields
.field public static final ERROR:Ljava/lang/String; = "player:icon:error"

.field public static final LOADED:Ljava/lang/String; = "player:icon:loaded"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatForError(Lcom/distriqt/extension/gameservices/objects/Player;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "player"    # Lcom/distriqt/extension/gameservices/objects/Player;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "player"

    if-nez p0, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v1, "errorObj":Lorg/json/JSONObject;
    const-string v3, "message"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v3, "error"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    .end local v1    # "errorObj":Lorg/json/JSONObject;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    return-object v3

    .line 81
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/objects/Player;->toJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 89
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 93
    const-string v3, ""

    goto :goto_1
.end method

.method public static formatForEvent(Lcom/distriqt/extension/gameservices/objects/Player;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5
    .param p0, "player"    # Lcom/distriqt/extension/gameservices/objects/Player;
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "player"

    if-nez p0, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v1, "iconObj":Lorg/json/JSONObject;
    const-string v3, "width"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string v3, "height"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    const-string v3, "data"

    invoke-static {p1}, Lcom/distriqt/core/utils/FREImageUtils;->drawBitmapToBitmapDataBase64String(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v3, "icon"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    .end local v1    # "iconObj":Lorg/json/JSONObject;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    return-object v3

    .line 38
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/objects/Player;->toJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 46
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .line 50
    const-string v3, ""

    goto :goto_1
.end method

.method public static formatForEvent(Lcom/distriqt/extension/gameservices/objects/Player;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "player"    # Lcom/distriqt/extension/gameservices/objects/Player;
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "player"

    if-nez p0, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v1, "iconObj":Lorg/json/JSONObject;
    const-string v3, "width"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v3, "height"

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string v3, "data"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v3, "icon"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .end local v1    # "iconObj":Lorg/json/JSONObject;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    return-object v3

    .line 59
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/objects/Player;->toJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 67
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .line 71
    const-string v3, ""

    goto :goto_1
.end method
