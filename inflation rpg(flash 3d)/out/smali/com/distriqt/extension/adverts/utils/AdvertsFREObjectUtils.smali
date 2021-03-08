.class public Lcom/distriqt/extension/adverts/utils/AdvertsFREObjectUtils;
.super Ljava/lang/Object;
.source "AdvertsFREObjectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestFromFREObject(Lcom/adobe/fre/FREObject;)Lcom/distriqt/extension/adverts/platforms/AdvertRequest;
    .locals 10
    .param p0, "object"    # Lcom/adobe/fre/FREObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v3, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;

    invoke-direct {v3}, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;-><init>()V

    .line 36
    .local v3, "request":Lcom/distriqt/extension/adverts/platforms/AdvertRequest;
    const-string v7, "testDevices"

    invoke-virtual {p0, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    check-cast v7, Lcom/adobe/fre/FREArray;

    invoke-static {v7}, Lcom/distriqt/core/utils/FREUtils;->GetObjectAsArrayOfStrings(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->testDevices:[Ljava/lang/String;

    .line 37
    const-string v7, "keywords"

    invoke-virtual {p0, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    check-cast v7, Lcom/adobe/fre/FREArray;

    invoke-static {v7}, Lcom/distriqt/core/utils/FREUtils;->GetObjectAsArrayOfStrings(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->keywords:[Ljava/lang/String;

    .line 38
    const-string v7, "gender"

    invoke-virtual {p0, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    iput v7, v3, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->gender:I

    .line 39
    const-string v7, "birthday"

    invoke-virtual {p0, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 41
    const-string v7, "birthday"

    invoke-virtual {p0, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    const-string v8, "time"

    invoke-virtual {v7, v8}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v4

    .line 42
    .local v4, "timestamp":D
    new-instance v7, Ljava/util/Date;

    double-to-long v8, v4

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    iput-object v7, v3, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->birthday:Ljava/util/Date;

    .line 44
    .end local v4    # "timestamp":D
    :cond_0
    const-string v7, "tagForChildDirectedTreatment"

    invoke-virtual {p0, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    iput v7, v3, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->tagForChildDirectedTreatment:I

    .line 45
    const-string v7, "isDesignedForFamilies"

    invoke-virtual {p0, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    iput v7, v3, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->isDesignedForFamilies:I

    .line 48
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v7, "networkExtrasJSON"

    invoke-virtual {p0, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, "networkExtrasObject":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 50
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_2

    .line 54
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "value":Ljava/lang/String;
    iget-object v7, v3, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->networkExtras:Landroid/os/Bundle;

    if-nez v7, :cond_1

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, v3, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->networkExtras:Landroid/os/Bundle;

    .line 58
    :cond_1
    iget-object v7, v3, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->networkExtras:Landroid/os/Bundle;

    invoke-virtual {v7, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    .end local v1    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 65
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "networkExtrasObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    .line 68
    :cond_2
    return-object v3
.end method
