.class public Lcom/distriqt/extension/adverts/platforms/AdvertSize;
.super Ljava/lang/Object;
.source "AdvertSize.java"


# instance fields
.field public height:I

.field public heightInPixels:I

.field public type:Ljava/lang/String;

.field public width:I

.field public widthInPixels:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "width"

    iget v2, p0, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->width:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    const-string v1, "height"

    iget v2, p0, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->height:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string v1, "type"

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v1, "widthInPixels"

    iget v2, p0, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->widthInPixels:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string v1, "heightInPixels"

    iget v2, p0, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->heightInPixels:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    return-object v0
.end method
