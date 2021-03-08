.class public Lcom/google/ads/consent/ConsentInformation;
.super Ljava/lang/Object;
.source "ConsentInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;,
        Lcom/google/ads/consent/ConsentInformation$ServerResponse;,
        Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;,
        Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;
    }
.end annotation


# static fields
.field private static final CONSENT_DATA_KEY:Ljava/lang/String; = "consent_string"

.field private static final MOBILE_ADS_SERVER_URL:Ljava/lang/String; = "https://adservice.google.com/getconfig/pubvendors"

.field private static final PREFERENCES_FILE_KEY:Ljava/lang/String; = "mobileads_consent"

.field private static final TAG:Ljava/lang/String; = "ConsentInformation"

.field private static instance:Lcom/google/ads/consent/ConsentInformation;


# instance fields
.field private final context:Landroid/content/Context;

.field private debugGeography:Lcom/google/ads/consent/DebugGeography;

.field private hashedDeviceId:Ljava/lang/String;

.field private testDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    .line 71
    sget-object v0, Lcom/google/ads/consent/DebugGeography;->DEBUG_GEOGRAPHY_DISABLED:Lcom/google/ads/consent/DebugGeography;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->debugGeography:Lcom/google/ads/consent/DebugGeography;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->testDevices:Ljava/util/List;

    .line 73
    invoke-direct {p0}, Lcom/google/ads/consent/ConsentInformation;->getHashedDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->hashedDeviceId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/consent/ConsentInformation;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentInformation;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/ads/consent/ConsentInformation;->updateConsentData(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private getHashedDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    iget-object v2, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    if-nez v1, :cond_2

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "androidId":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/consent/ConsentInformation;->isEmulator()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "emulator"

    .end local v0    # "androidId":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/ads/consent/ConsentInformation;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 88
    :cond_2
    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-class v1, Lcom/google/ads/consent/ConsentInformation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/ads/consent/ConsentInformation;->instance:Lcom/google/ads/consent/ConsentInformation;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/google/ads/consent/ConsentInformation;

    invoke-direct {v0, p0}, Lcom/google/ads/consent/ConsentInformation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/ads/consent/ConsentInformation;->instance:Lcom/google/ads/consent/ConsentInformation;

    .line 80
    :cond_0
    sget-object v0, Lcom/google/ads/consent/ConsentInformation;->instance:Lcom/google/ads/consent/ConsentInformation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNonPersonalizedAdProviders(Ljava/util/List;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "adProviders":Ljava/util/List;, "Ljava/util/List<Lcom/google/ads/consent/AdProvider;>;"
    .local p2, "nonPersonalizedAdProviderIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v1, "nonPersonalizedAdProviders":Ljava/util/List;, "Ljava/util/List<Lcom/google/ads/consent/AdProvider;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/consent/AdProvider;

    .line 376
    .local v0, "adProvider":Lcom/google/ads/consent/AdProvider;
    invoke-virtual {v0}, Lcom/google/ads/consent/AdProvider;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    .end local v0    # "adProvider":Lcom/google/ads/consent/AdProvider;
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method private isEmulator()Z
    .locals 2

    .prologue
    .line 116
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "unknown"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK built for x86"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Genymotion"

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "generic"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    .line 123
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 96
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    .line 98
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 99
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%032X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 107
    .end local v2    # "md5":Ljava/security/MessageDigest;
    :cond_0
    :goto_1
    return-object v3

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/ArithmeticException;
    goto :goto_1

    .line 101
    .end local v0    # "ex":Ljava/lang/ArithmeticException;
    :catch_1
    move-exception v4

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private saveConsentData(Lcom/google/ads/consent/ConsentData;)V
    .locals 6
    .param p1, "consentData"    # Lcom/google/ads/consent/ConsentData;

    .prologue
    .line 462
    iget-object v3, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    const-string v4, "mobileads_consent"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 464
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 465
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "consentDataString":Ljava/lang/String;
    const-string v3, "consent_string"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 467
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 468
    return-void
.end method

.method private declared-synchronized updateConsentData(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p1, "responseString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 386
    .local p2, "publisherIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    const-class v9, Lcom/google/ads/consent/ConsentInformation$ServerResponse;

    invoke-virtual {v8, p1, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/ads/consent/ConsentInformation$ServerResponse;

    .line 389
    .local v7, "response":Lcom/google/ads/consent/ConsentInformation$ServerResponse;
    invoke-direct {p0, v7}, Lcom/google/ads/consent/ConsentInformation;->validatePublisherIds(Lcom/google/ads/consent/ConsentInformation$ServerResponse;)V

    .line 391
    const/4 v3, 0x0

    .line 392
    .local v3, "hasNonPersonalizedPublisherId":Z
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 394
    .local v6, "nonPersonalizedAdProvidersIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v8, v7, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->adNetworkLookupResponses:Ljava/util/List;

    if-eqz v8, :cond_1

    .line 396
    iget-object v8, v7, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->adNetworkLookupResponses:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;

    .line 397
    .local v0, "adNetworkLookupResponse":Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;
    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->access$400(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 401
    const/4 v3, 0x1

    .line 402
    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->access$500(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Ljava/util/List;

    move-result-object v1

    .line 403
    .local v1, "companyIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 386
    .end local v0    # "adNetworkLookupResponse":Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;
    .end local v1    # "companyIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "hasNonPersonalizedPublisherId":Z
    .end local v6    # "nonPersonalizedAdProvidersIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "response":Lcom/google/ads/consent/ConsentInformation$ServerResponse;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 410
    .restart local v3    # "hasNonPersonalizedPublisherId":Z
    .restart local v6    # "nonPersonalizedAdProvidersIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v7    # "response":Lcom/google/ads/consent/ConsentInformation$ServerResponse;
    :cond_1
    :try_start_1
    iget-object v8, v7, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->companies:Ljava/util/List;

    if-nez v8, :cond_2

    .line 411
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 419
    .local v5, "newAdProviderSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/ads/consent/AdProvider;>;"
    :goto_1
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v2

    .line 422
    .local v2, "consentData":Lcom/google/ads/consent/ConsentData;
    invoke-virtual {v2}, Lcom/google/ads/consent/ConsentData;->hasNonPersonalizedPublisherId()Z

    move-result v8

    if-eq v8, v3, :cond_4

    const/4 v4, 0x1

    .line 424
    .local v4, "hasNonPersonalizedPublisherIdChanged":Z
    :goto_2
    invoke-virtual {v2, v3}, Lcom/google/ads/consent/ConsentData;->setHasNonPersonalizedPublisherId(Z)V

    .line 425
    invoke-virtual {v2, p1}, Lcom/google/ads/consent/ConsentData;->setRawResponse(Ljava/lang/String;)V

    .line 426
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v8}, Lcom/google/ads/consent/ConsentData;->setPublisherIds(Ljava/util/HashSet;)V

    .line 427
    invoke-virtual {v2, v5}, Lcom/google/ads/consent/ConsentData;->setAdProviders(Ljava/util/HashSet;)V

    .line 428
    iget-object v8, v7, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v2, v8}, Lcom/google/ads/consent/ConsentData;->setRequestLocationInEeaOrUnknown(Z)V

    .line 430
    iget-object v8, v7, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_5

    .line 431
    invoke-direct {p0, v2}, Lcom/google/ads/consent/ConsentInformation;->saveConsentData(Lcom/google/ads/consent/ConsentData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    :goto_3
    monitor-exit p0

    return-void

    .line 412
    .end local v2    # "consentData":Lcom/google/ads/consent/ConsentData;
    .end local v4    # "hasNonPersonalizedPublisherIdChanged":Z
    .end local v5    # "newAdProviderSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/ads/consent/AdProvider;>;"
    :cond_2
    if-eqz v3, :cond_3

    .line 413
    :try_start_2
    iget-object v8, v7, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->companies:Ljava/util/List;

    .line 414
    invoke-direct {p0, v8, v6}, Lcom/google/ads/consent/ConsentInformation;->getNonPersonalizedAdProviders(Ljava/util/List;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v5

    .restart local v5    # "newAdProviderSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/ads/consent/AdProvider;>;"
    goto :goto_1

    .line 416
    .end local v5    # "newAdProviderSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/ads/consent/AdProvider;>;"
    :cond_3
    new-instance v5, Ljava/util/HashSet;

    iget-object v8, v7, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->companies:Ljava/util/List;

    invoke-direct {v5, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .restart local v5    # "newAdProviderSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/ads/consent/AdProvider;>;"
    goto :goto_1

    .line 422
    .restart local v2    # "consentData":Lcom/google/ads/consent/ConsentData;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 435
    .restart local v4    # "hasNonPersonalizedPublisherIdChanged":Z
    :cond_5
    invoke-virtual {v2}, Lcom/google/ads/consent/ConsentData;->getAdProviders()Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/ads/consent/ConsentData;->getConsentedAdProviders()Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v4, :cond_7

    .line 437
    :cond_6
    const-string v8, "sdk"

    invoke-virtual {v2, v8}, Lcom/google/ads/consent/ConsentData;->setConsentSource(Ljava/lang/String;)V

    .line 438
    sget-object v8, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    invoke-virtual {v2, v8}, Lcom/google/ads/consent/ConsentData;->setConsentStatus(Lcom/google/ads/consent/ConsentStatus;)V

    .line 439
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v8}, Lcom/google/ads/consent/ConsentData;->setConsentedAdProviders(Ljava/util/HashSet;)V

    .line 441
    :cond_7
    invoke-direct {p0, v2}, Lcom/google/ads/consent/ConsentInformation;->saveConsentData(Lcom/google/ads/consent/ConsentData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private validatePublisherIds(Lcom/google/ads/consent/ConsentInformation$ServerResponse;)V
    .locals 10
    .param p1, "response"    # Lcom/google/ads/consent/ConsentInformation$ServerResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 326
    iget-object v6, p1, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    if-nez v6, :cond_0

    .line 327
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Could not parse Event FE preflight response."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 330
    :cond_0
    iget-object v6, p1, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->companies:Ljava/util/List;

    if-nez v6, :cond_1

    iget-object v6, p1, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 331
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Could not parse Event FE preflight response."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 334
    :cond_1
    iget-object v6, p1, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 352
    :cond_2
    return-void

    .line 338
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 339
    .local v2, "lookupFailedPublisherIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 341
    .local v4, "notFoundPublisherIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v6, p1, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->adNetworkLookupResponses:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;

    .line 342
    .local v0, "adNetworkLookupResponse":Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;
    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->access$100(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 343
    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->access$200(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_5
    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->access$300(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 347
    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->access$200(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    .end local v0    # "adNetworkLookupResponse":Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;
    :cond_6
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 355
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Response error."

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .local v1, "errorString":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 358
    const-string v6, ","

    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "lookupFailedPublisherIdsString":Ljava/lang/String;
    const-string v6, " Lookup failure for: %s."

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v8

    .line 360
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 359
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .end local v3    # "lookupFailedPublisherIdsString":Ljava/lang/String;
    :cond_8
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 364
    const-string v6, ","

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "notFoundPublisherIdsString":Ljava/lang/String;
    const-string v6, " Publisher Ids not found: %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v8

    .line 366
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 365
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .end local v5    # "notFoundPublisherIdsString":Ljava/lang/String;
    :cond_9
    new-instance v6, Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public addTestDevice(Ljava/lang/String;)V
    .locals 1
    .param p1, "hashedDeviceId"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->testDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public declared-synchronized getAdProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    .line 446
    .local v0, "consentData":Lcom/google/ads/consent/ConsentData;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentData;->getAdProviders()Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 445
    .end local v0    # "consentData":Lcom/google/ads/consent/ConsentData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getConsentStatus()Lcom/google/ads/consent/ConsentStatus;
    .locals 2

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    .line 494
    .local v0, "consentData":Lcom/google/ads/consent/ConsentData;
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentData;->getConsentStatus()Lcom/google/ads/consent/ConsentStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 493
    .end local v0    # "consentData":Lcom/google/ads/consent/ConsentData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDebugGeography()Lcom/google/ads/consent/DebugGeography;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->debugGeography:Lcom/google/ads/consent/DebugGeography;

    return-object v0
.end method

.method public isRequestLocationInEeaOrUnknown()Z
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    .line 472
    .local v0, "consentData":Lcom/google/ads/consent/ConsentData;
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentData;->isRequestLocationInEeaOrUnknown()Z

    move-result v1

    return v1
.end method

.method public declared-synchronized isTaggedForUnderAgeOfConsent()Z
    .locals 1

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentData;->isTaggedForUnderAgeOfConsent()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTestDevice()Z
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/google/ads/consent/ConsentInformation;->isEmulator()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->testDevices:Ljava/util/List;

    iget-object v1, p0, Lcom/google/ads/consent/ConsentInformation;->hashedDeviceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadConsentData()Lcom/google/ads/consent/ConsentData;
    .locals 5

    .prologue
    .line 450
    iget-object v2, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    const-string v3, "mobileads_consent"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 452
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "consent_string"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "consentDataString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    new-instance v2, Lcom/google/ads/consent/ConsentData;

    invoke-direct {v2}, Lcom/google/ads/consent/ConsentData;-><init>()V

    .line 457
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/google/ads/consent/ConsentData;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/consent/ConsentData;

    goto :goto_0
.end method

.method public requestConsentInfoUpdate([Ljava/lang/String;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V
    .locals 1
    .param p1, "publisherIds"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/ads/consent/ConsentInfoUpdateListener;

    .prologue
    .line 306
    const-string v0, "https://adservice.google.com/getconfig/pubvendors"

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/ads/consent/ConsentInformation;->requestConsentInfoUpdate([Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V

    .line 307
    return-void
.end method

.method protected requestConsentInfoUpdate([Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V
    .locals 4
    .param p1, "publisherIds"    # [Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/google/ads/consent/ConsentInfoUpdateListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->isTestDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "ConsentInformation"

    const-string v1, "This request is sent from a test device."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    new-instance v0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p2, p0, v1, p3}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;-><init>(Ljava/lang/String;Lcom/google/ads/consent/ConsentInformation;Ljava/util/List;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 321
    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 322
    return-void

    .line 316
    :cond_0
    const-string v0, "ConsentInformation"

    .line 317
    invoke-direct {p0}, Lcom/google/ads/consent/ConsentInformation;->getHashedDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Use ConsentInformation.getInstance(context).addTestDevice(\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\") to get test ads on this device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 4

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    const-string v2, "mobileads_consent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 297
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 298
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/ads/consent/ConsentInformation;->testDevices:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 296
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setConsentStatus(Lcom/google/ads/consent/ConsentStatus;)V
    .locals 1
    .param p1, "consentStatus"    # Lcom/google/ads/consent/ConsentStatus;

    .prologue
    .line 476
    const-string v0, "programmatic"

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/consent/ConsentInformation;->setConsentStatus(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method protected declared-synchronized setConsentStatus(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/String;)V
    .locals 2
    .param p1, "consentStatus"    # Lcom/google/ads/consent/ConsentStatus;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    .line 481
    .local v0, "consentData":Lcom/google/ads/consent/ConsentData;
    sget-object v1, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    if-ne p1, v1, :cond_0

    .line 482
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentData;->setConsentedAdProviders(Ljava/util/HashSet;)V

    .line 487
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/ads/consent/ConsentData;->setConsentSource(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0, p1}, Lcom/google/ads/consent/ConsentData;->setConsentStatus(Lcom/google/ads/consent/ConsentStatus;)V

    .line 489
    invoke-direct {p0, v0}, Lcom/google/ads/consent/ConsentInformation;->saveConsentData(Lcom/google/ads/consent/ConsentData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 484
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentData;->getAdProviders()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentData;->setConsentedAdProviders(Ljava/util/HashSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 480
    .end local v0    # "consentData":Lcom/google/ads/consent/ConsentData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setDebugGeography(Lcom/google/ads/consent/DebugGeography;)V
    .locals 0
    .param p1, "debugGeography"    # Lcom/google/ads/consent/DebugGeography;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/ads/consent/ConsentInformation;->debugGeography:Lcom/google/ads/consent/DebugGeography;

    .line 156
    return-void
.end method

.method protected setHashedDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "hashedDeviceId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/ads/consent/ConsentInformation;->hashedDeviceId:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public declared-synchronized setTagForUnderAgeOfConsent(Z)V
    .locals 2
    .param p1, "underAgeOfConsent"    # Z

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    .line 287
    .local v0, "consentData":Lcom/google/ads/consent/ConsentData;
    invoke-virtual {v0, p1}, Lcom/google/ads/consent/ConsentData;->tagForUnderAgeOfConsent(Z)V

    .line 288
    invoke-direct {p0, v0}, Lcom/google/ads/consent/ConsentInformation;->saveConsentData(Lcom/google/ads/consent/ConsentData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 286
    .end local v0    # "consentData":Lcom/google/ads/consent/ConsentData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
