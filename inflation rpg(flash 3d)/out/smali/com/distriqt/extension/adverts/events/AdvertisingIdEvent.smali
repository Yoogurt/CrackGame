.class public Lcom/distriqt/extension/adverts/events/AdvertisingIdEvent;
.super Ljava/lang/Object;
.source "AdvertisingIdEvent.java"


# static fields
.field public static final ADVERTISING_ID:Ljava/lang/String; = "advert:advertisingid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatAdvertisingIdForEvent(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "advertisingId"    # Ljava/lang/String;
    .param p1, "isLimitAdTrackingEnabled"    # Z

    .prologue
    .line 30
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v0, "event":Lorg/json/JSONObject;
    const-string v1, "advertisingId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "isLimitAdTrackingEnabled"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 38
    .end local v0    # "event":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v1

    .line 38
    const-string v1, "{}"

    goto :goto_0
.end method
