.class public Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobUtils;
.super Ljava/lang/Object;
.source "GoogleAdMobUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAdRequest(Lcom/distriqt/extension/adverts/platforms/AdvertRequest;)Lcom/google/android/gms/ads/AdRequest;
    .locals 8
    .param p0, "request"    # Lcom/distriqt/extension/adverts/platforms/AdvertRequest;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 31
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 33
    .local v0, "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->gender:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->gender:I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 35
    :cond_0
    iget-object v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->birthday:Ljava/util/Date;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->birthday:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 37
    :cond_1
    iget-object v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->keywords:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 39
    iget-object v6, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->keywords:[Ljava/lang/String;

    array-length v7, v6

    move v3, v5

    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v1, v6, v3

    .line 42
    .local v1, "keyword":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "keyword":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->testDevices:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 48
    iget-object v6, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->testDevices:[Ljava/lang/String;

    array-length v7, v6

    move v3, v5

    :goto_1
    if-ge v3, v7, :cond_3

    aget-object v2, v6, v3

    .line 50
    .local v2, "testDeviceId":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 54
    .end local v2    # "testDeviceId":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->networkExtras:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    .line 57
    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    iget-object v6, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->networkExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 60
    :cond_4
    iget v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->tagForChildDirectedTreatment:I

    if-ltz v3, :cond_5

    .line 63
    iget v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->tagForChildDirectedTreatment:I

    if-ne v3, v4, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 66
    :cond_5
    iget v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->isDesignedForFamilies:I

    if-ltz v3, :cond_6

    .line 69
    iget v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->isDesignedForFamilies:I

    if-ne v3, v4, :cond_8

    :goto_3
    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->setIsDesignedForFamilies(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 72
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    return-object v3

    :cond_7
    move v3, v5

    .line 63
    goto :goto_2

    :cond_8
    move v4, v5

    .line 69
    goto :goto_3
.end method
