.class public Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;
.super Lcom/distriqt/core/ActivityStateListener;
.source "GoogleAdMob.java"

# interfaces
.implements Lcom/distriqt/extension/adverts/platforms/AdvertPlatform;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private _accountId:Ljava/lang/String;

.field private _adViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;",
            ">;"
        }
    .end annotation
.end field

.field private _advertisingIdInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field private _form:Lcom/google/ads/consent/ConsentForm;

.field private _formListener:Lcom/google/ads/consent/ConsentFormListener;

.field private _interstitialAds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field private _rewardedVideoAd:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 2
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_accountId:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_advertisingIdInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 268
    iput-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_form:Lcom/google/ads/consent/ConsentForm;

    .line 269
    iput-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_formListener:Lcom/google/ads/consent/ConsentFormListener;

    .line 78
    iput-object p1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_adViews:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_interstitialAds:Ljava/util/HashMap;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_advertisingIdInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    return-object v0
.end method

.method static synthetic access$002(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 0
    .param p0, "x0"    # Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;
    .param p1, "x1"    # Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_advertisingIdInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    return-object p1
.end method

.method static synthetic access$100(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;Lcom/google/ads/consent/ConsentStatus;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;
    .param p1, "x1"    # Lcom/google/ads/consent/ConsentStatus;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->consentStatusToString(Lcom/google/ads/consent/ConsentStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/google/ads/consent/ConsentForm;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_form:Lcom/google/ads/consent/ConsentForm;

    return-object v0
.end method

.method private consentStatusToString(Lcom/google/ads/consent/ConsentStatus;)Ljava/lang/String;
    .locals 2
    .param p1, "consentStatus"    # Lcom/google/ads/consent/ConsentStatus;

    .prologue
    .line 273
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$4;->$SwitchMap$com$google$ads$consent$ConsentStatus:[I

    invoke-virtual {p1}, Lcom/google/ads/consent/ConsentStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 277
    const-string v0, "unknown"

    .line 281
    :goto_0
    return-object v0

    .line 279
    :pswitch_0
    const-string v0, "personalized"

    goto :goto_0

    .line 281
    :pswitch_1
    const-string v0, "non_personalized"

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isSupported(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 87
    .local v0, "googleAPI":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 88
    .local v1, "resultCode":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTestDevice(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v1

    .line 292
    invoke-virtual {v1, p1}, Lcom/google/ads/consent/ConsentInformation;->addTestDevice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public askForConsent(Lcom/distriqt/extension/adverts/platforms/ConsentOptions;)Z
    .locals 6
    .param p1, "options"    # Lcom/distriqt/extension/adverts/platforms/ConsentOptions;

    .prologue
    const/4 v3, 0x0

    .line 374
    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_form:Lcom/google/ads/consent/ConsentForm;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_form:Lcom/google/ads/consent/ConsentForm;

    invoke-virtual {v4}, Lcom/google/ads/consent/ConsentForm;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 452
    :goto_0
    return v3

    .line 378
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v4, p1, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;->privacyUrl:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 379
    .local v2, "privacyUrl":Ljava/net/URL;
    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_formListener:Lcom/google/ads/consent/ConsentFormListener;

    if-nez v4, :cond_1

    .line 381
    new-instance v4, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$3;

    invoke-direct {v4, p0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$3;-><init>(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)V

    iput-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_formListener:Lcom/google/ads/consent/ConsentFormListener;

    .line 432
    :cond_1
    new-instance v4, Lcom/google/ads/consent/ConsentForm$Builder;

    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v5}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/google/ads/consent/ConsentForm$Builder;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_formListener:Lcom/google/ads/consent/ConsentFormListener;

    .line 433
    invoke-virtual {v4, v5}, Lcom/google/ads/consent/ConsentForm$Builder;->withListener(Lcom/google/ads/consent/ConsentFormListener;)Lcom/google/ads/consent/ConsentForm$Builder;

    move-result-object v0

    .line 435
    .local v0, "builder":Lcom/google/ads/consent/ConsentForm$Builder;
    iget-boolean v4, p1, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;->showNonPersonalisedAdsOption:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentForm$Builder;->withNonPersonalizedAdsOption()Lcom/google/ads/consent/ConsentForm$Builder;

    .line 436
    :cond_2
    iget-boolean v4, p1, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;->showPersonalisedAdsOption:Z

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentForm$Builder;->withPersonalizedAdsOption()Lcom/google/ads/consent/ConsentForm$Builder;

    .line 437
    :cond_3
    iget-boolean v4, p1, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;->showAdFreeOption:Z

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentForm$Builder;->withAdFreeOption()Lcom/google/ads/consent/ConsentForm$Builder;

    .line 439
    :cond_4
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentForm$Builder;->build()Lcom/google/ads/consent/ConsentForm;

    move-result-object v4

    iput-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_form:Lcom/google/ads/consent/ConsentForm;

    .line 440
    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_form:Lcom/google/ads/consent/ConsentForm;

    invoke-virtual {v4}, Lcom/google/ads/consent/ConsentForm;->load()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 442
    const/4 v3, 0x1

    goto :goto_0

    .line 444
    .end local v0    # "builder":Lcom/google/ads/consent/ConsentForm$Builder;
    .end local v2    # "privacyUrl":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-static {v1}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 448
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createAdView()Ljava/lang/String;
    .locals 5

    .prologue
    .line 153
    sget-object v2, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v3, "createAdView()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "identifier":Ljava/lang/String;
    new-instance v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v2, v1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;-><init>(Lcom/distriqt/core/utils/IExtensionContext;Ljava/lang/String;)V

    .line 158
    .local v0, "adView":Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_adViews:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object v1
.end method

.method public createInterstitialAd()Ljava/lang/String;
    .locals 5

    .prologue
    .line 203
    sget-object v2, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v3, "createInterstitialAd()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "identifier":Ljava/lang/String;
    new-instance v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v1, v2, v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;-><init>(Lcom/distriqt/core/utils/IExtensionContext;Ljava/lang/String;)V

    .line 208
    .local v1, "interstitialAd":Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobInterstitialAd;
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_interstitialAds:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-object v0
.end method

.method public destroyAdView(Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v2, "destroyAdView( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->getAdView(Ljava/lang/String;)Lcom/distriqt/extension/adverts/platforms/AdvertView;

    move-result-object v0

    .line 169
    .local v0, "adView":Lcom/distriqt/extension/adverts/platforms/AdvertView;
    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertView;->destroy()V

    .line 172
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_adViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_0
    return-void
.end method

.method public destroyInterstitialAd(Ljava/lang/String;)V
    .locals 5
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v2, "destroyAdView( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->getInterstitialAd(Ljava/lang/String;)Lcom/distriqt/extension/adverts/platforms/InterstitialAd;

    move-result-object v0

    .line 219
    .local v0, "interstitialAd":Lcom/distriqt/extension/adverts/platforms/InterstitialAd;
    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Lcom/distriqt/extension/adverts/platforms/InterstitialAd;->destroy()V

    .line 222
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_adViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_adViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;

    invoke-virtual {v1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->destroy()V

    goto :goto_0

    .line 98
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;>;"
    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_adViews:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 99
    return-void
.end method

.method public getAdView(Ljava/lang/String;)Lcom/distriqt/extension/adverts/platforms/AdvertView;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_adViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_adViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/distriqt/extension/adverts/platforms/AdvertView;

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdvertisingId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v2, "getAdvertisingId()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$1;

    invoke-direct {v2, p0, v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$1;-><init>(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 137
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 139
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_advertisingIdInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 141
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_advertisingIdInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getConsentStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "publisherId"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v2}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v0

    .line 331
    .local v0, "consentInformation":Lcom/google/ads/consent/ConsentInformation;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 332
    .local v1, "publisherIds":[Ljava/lang/String;
    new-instance v2, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$2;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$2;-><init>(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/consent/ConsentInformation;->requestConsentInfoUpdate([Ljava/lang/String;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V

    .line 368
    return-void
.end method

.method public getInterstitialAd(Ljava/lang/String;)Lcom/distriqt/extension/adverts/platforms/InterstitialAd;
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_interstitialAds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_interstitialAds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/distriqt/extension/adverts/platforms/InterstitialAd;

    .line 234
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRewardedVideoAd()Lcom/distriqt/extension/adverts/platforms/RewardedVideoAd;
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_rewardedVideoAd:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_rewardedVideoAd:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    invoke-virtual {v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->destroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    new-instance v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_rewardedVideoAd:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_rewardedVideoAd:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    return-object v0
.end method

.method public initialise(Ljava/lang/String;)V
    .locals 4
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v1, "initialise( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iput-object p1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_accountId:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_accountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public isInterstitialsSupported()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public isRewardedVideoAdsSupported()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 487
    invoke-super {p0}, Lcom/distriqt/core/ActivityStateListener;->onDestroy()V

    .line 488
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_rewardedVideoAd:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_rewardedVideoAd:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    invoke-virtual {v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->onDestroy()V

    .line 492
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 477
    invoke-super {p0}, Lcom/distriqt/core/ActivityStateListener;->onPause()V

    .line 478
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_rewardedVideoAd:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_rewardedVideoAd:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    invoke-virtual {v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->onPause()V

    .line 482
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 467
    invoke-super {p0}, Lcom/distriqt/core/ActivityStateListener;->onResume()V

    .line 468
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_rewardedVideoAd:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_rewardedVideoAd:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;

    invoke-virtual {v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobRewardedVideoAd;->onResume()V

    .line 472
    :cond_0
    return-void
.end method

.method public setDebugGeography(I)V
    .locals 3
    .param p1, "geography"    # I

    .prologue
    .line 306
    :try_start_0
    sget-object v1, Lcom/google/ads/consent/DebugGeography;->DEBUG_GEOGRAPHY_DISABLED:Lcom/google/ads/consent/DebugGeography;

    .line 307
    .local v1, "g":Lcom/google/ads/consent/DebugGeography;
    packed-switch p1, :pswitch_data_0

    .line 317
    :goto_0
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v2}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v2

    .line 318
    invoke-virtual {v2, v1}, Lcom/google/ads/consent/ConsentInformation;->setDebugGeography(Lcom/google/ads/consent/DebugGeography;)V

    .line 324
    .end local v1    # "g":Lcom/google/ads/consent/DebugGeography;
    :goto_1
    return-void

    .line 310
    .restart local v1    # "g":Lcom/google/ads/consent/DebugGeography;
    :pswitch_0
    sget-object v1, Lcom/google/ads/consent/DebugGeography;->DEBUG_GEOGRAPHY_EEA:Lcom/google/ads/consent/DebugGeography;

    .line 311
    goto :goto_0

    .line 313
    :pswitch_1
    sget-object v1, Lcom/google/ads/consent/DebugGeography;->DEBUG_GEOGRAPHY_NOT_EEA:Lcom/google/ads/consent/DebugGeography;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    .end local v1    # "g":Lcom/google/ads/consent/DebugGeography;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
