.class public Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;
.super Lcom/google/android/gms/ads/AdListener;
.source "GoogleAdMobAdvertView.java"

# interfaces
.implements Lcom/distriqt/extension/adverts/platforms/AdvertView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _adView:Lcom/google/android/gms/ads/AdView;

.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field private _handler:Landroid/os/Handler;

.field private _identifier:Ljava/lang/String;

.field private _position:Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 66
    iput-object p2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    .line 69
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 71
    new-instance v0, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;

    invoke-direct {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_position:Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_handler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public static fromAdSize(Landroid/app/Activity;Lcom/google/android/gms/ads/AdSize;)Lcom/distriqt/extension/adverts/platforms/AdvertSize;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "adSize"    # Lcom/google/android/gms/ads/AdSize;

    .prologue
    .line 438
    new-instance v0, Lcom/distriqt/extension/adverts/platforms/AdvertSize;

    invoke-direct {v0}, Lcom/distriqt/extension/adverts/platforms/AdvertSize;-><init>()V

    .line 440
    .local v0, "size":Lcom/distriqt/extension/adverts/platforms/AdvertSize;
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->width:I

    .line 441
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->height:I

    .line 443
    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->widthInPixels:I

    .line 444
    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->heightInPixels:I

    .line 446
    return-object v0
.end method

.method public static toAdSize(Lcom/distriqt/extension/adverts/platforms/AdvertSize;)Lcom/google/android/gms/ads/AdSize;
    .locals 4
    .param p0, "size"    # Lcom/distriqt/extension/adverts/platforms/AdvertSize;

    .prologue
    .line 401
    :try_start_0
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->type:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 424
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->width:I

    iget v3, p0, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->height:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 432
    :goto_1
    return-object v1

    .line 401
    :sswitch_0
    const-string v3, "320x50_mb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "fluid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "468x60_as"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "320x100_as"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "728x90_as"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "300x250_as"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "search_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "smart_banner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "160x600_as"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    .line 404
    :pswitch_0
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_1

    .line 406
    :pswitch_1
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->FLUID:Lcom/google/android/gms/ads/AdSize;

    goto :goto_1

    .line 408
    :pswitch_2
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_1

    .line 410
    :pswitch_3
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_1

    .line 412
    :pswitch_4
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    goto :goto_1

    .line 414
    :pswitch_5
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_1

    .line 416
    :pswitch_6
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->SEARCH:Lcom/google/android/gms/ads/AdSize;

    goto :goto_1

    .line 418
    :pswitch_7
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_1

    .line 420
    :pswitch_8
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 428
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .line 432
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_1

    .line 401
    :sswitch_data_0
    .sparse-switch
        -0x78f46421 -> :sswitch_4
        -0x717056ce -> :sswitch_0
        -0x527c6238 -> :sswitch_8
        -0x2f477d9e -> :sswitch_7
        0x5d039ca -> :sswitch_1
        0x15eef909 -> :sswitch_5
        0x3c7c88e7 -> :sswitch_3
        0x6998bbd5 -> :sswitch_2
        0x69fd4c73 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 87
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->TAG:Ljava/lang/String;

    const-string v1, "[%s]: destroy()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->hide()Z

    .line 93
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 94
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 95
    iput-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 100
    iput-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_handler:Landroid/os/Handler;

    .line 102
    :cond_1
    iput-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 103
    return-void
.end method

.method public getAdSize()Lcom/distriqt/extension/adverts/platforms/AdvertSize;
    .locals 6

    .prologue
    .line 128
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->TAG:Ljava/lang/String;

    const-string v2, "[%s]: getAdSize()"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    .line 132
    .local v0, "adSize":Lcom/google/android/gms/ads/AdSize;
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->fromAdSize(Landroid/app/Activity;Lcom/google/android/gms/ads/AdSize;)Lcom/distriqt/extension/adverts/platforms/AdvertSize;

    move-result-object v1

    .line 134
    .end local v0    # "adSize":Lcom/google/android/gms/ads/AdSize;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 159
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->TAG:Ljava/lang/String;

    const-string v1, "[%s]: getAdUnitId()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hide()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 272
    sget-object v4, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->TAG:Ljava/lang/String;

    const-string v5, "[%s]: hide()"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :try_start_0
    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v4, :cond_1

    .line 277
    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v4}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 278
    .local v1, "v":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 280
    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v1    # "v":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return v2

    .line 285
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 289
    goto :goto_0
.end method

.method public isLoading()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 171
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->TAG:Ljava/lang/String;

    const-string v2, "[%s]: isLoading()"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->isLoading()Z

    move-result v0

    .line 176
    :cond_0
    return v0
.end method

.method public load(Lcom/distriqt/extension/adverts/platforms/AdvertRequest;)V
    .locals 7
    .param p1, "request"    # Lcom/distriqt/extension/adverts/platforms/AdvertRequest;

    .prologue
    .line 183
    sget-object v2, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->TAG:Ljava/lang/String;

    const-string v3, "[%s]: load()"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v2, :cond_0

    .line 188
    invoke-static {p1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobUtils;->toAdRequest(Lcom/distriqt/extension/adverts/platforms/AdvertRequest;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 189
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_handler:Landroid/os/Handler;

    new-instance v3, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView$1;

    invoke-direct {v3, p0, v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView$1;-><init>(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;Lcom/google/android/gms/ads/AdRequest;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAdClosed()V
    .locals 3

    .prologue
    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "adview:closed"

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    .line 382
    invoke-static {v2}, Lcom/distriqt/extension/adverts/events/AdViewEvent;->formatForEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAdFailedToLoad(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "adview:error"

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    .line 328
    invoke-static {v2, p1}, Lcom/distriqt/extension/adverts/events/AdViewEvent;->formatForErrorEvent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAdLeftApplication()V
    .locals 3

    .prologue
    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "adview:leftapplication"

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    .line 364
    invoke-static {v2}, Lcom/distriqt/extension/adverts/events/AdViewEvent;->formatForEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "adview:loaded"

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    .line 309
    invoke-static {v2}, Lcom/distriqt/extension/adverts/events/AdViewEvent;->formatForEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_position:Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;

    invoke-virtual {v1}, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->toLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAdOpened()V
    .locals 3

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "adview:opened"

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    .line 346
    invoke-static {v2}, Lcom/distriqt/extension/adverts/events/AdViewEvent;->formatForEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAdSize(Lcom/distriqt/extension/adverts/platforms/AdvertSize;)V
    .locals 7
    .param p1, "size"    # Lcom/distriqt/extension/adverts/platforms/AdvertSize;

    .prologue
    .line 109
    sget-object v2, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->TAG:Ljava/lang/String;

    const-string v3, "[%s]: setAdSize( [%dx%d:%s] )"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p1, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p1, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p1, Lcom/distriqt/extension/adverts/platforms/AdvertSize;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v2, :cond_0

    .line 114
    :try_start_0
    invoke-static {p1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->toAdSize(Lcom/distriqt/extension/adverts/platforms/AdvertSize;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    .line 115
    .local v0, "adSize":Lcom/google/android/gms/ads/AdSize;
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "adSize":Lcom/google/android/gms/ads/AdSize;
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 6
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->TAG:Ljava/lang/String;

    const-string v2, "[%s]: setAdUnitId( %s )"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setViewParams(Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;)V
    .locals 6
    .param p1, "params"    # Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;

    .prologue
    .line 228
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->TAG:Ljava/lang/String;

    const-string v2, "[%s]: setViewParams( %s )"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :try_start_0
    iput-object p1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_position:Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;

    .line 232
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_position:Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;

    invoke-virtual {v2}, Lcom/distriqt/extension/adverts/platforms/AdvertViewParams;->toLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public show()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 246
    sget-object v4, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->TAG:Ljava/lang/String;

    const-string v5, "[%s]: show()"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_identifier:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :try_start_0
    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v4, :cond_1

    .line 251
    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v4}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 252
    .local v1, "v":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-gez v4, :cond_0

    .line 254
    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMobAdvertView;->_adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "v":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return v2

    .line 262
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 266
    goto :goto_0
.end method
