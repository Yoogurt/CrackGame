.class public Lcom/google/ads/consent/ConsentForm;
.super Ljava/lang/Object;
.source "ConsentForm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/consent/ConsentForm$Builder;,
        Lcom/google/ads/consent/ConsentForm$LoadState;
    }
.end annotation


# instance fields
.field private final adFreeOption:Z

.field private final appPrivacyPolicyURL:Ljava/net/URL;

.field private final context:Landroid/content/Context;

.field private final dialog:Landroid/app/Dialog;

.field private final listener:Lcom/google/ads/consent/ConsentFormListener;

.field private loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

.field private final nonPersonalizedAdsOption:Z

.field private final personalizedAdsOption:Z

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Lcom/google/ads/consent/ConsentForm$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/google/ads/consent/ConsentForm$Builder;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$000(Lcom/google/ads/consent/ConsentForm$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$100(Lcom/google/ads/consent/ConsentForm$Builder;)Lcom/google/ads/consent/ConsentFormListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/google/ads/consent/ConsentForm$1;

    invoke-direct {v0, p0}, Lcom/google/ads/consent/ConsentForm$1;-><init>(Lcom/google/ads/consent/ConsentForm;)V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    .line 73
    :goto_0
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$200(Lcom/google/ads/consent/ConsentForm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm;->personalizedAdsOption:Z

    .line 74
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$300(Lcom/google/ads/consent/ConsentForm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm;->nonPersonalizedAdsOption:Z

    .line 75
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$400(Lcom/google/ads/consent/ConsentForm$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm;->adFreeOption:Z

    .line 76
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$500(Lcom/google/ads/consent/ConsentForm$Builder;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->appPrivacyPolicyURL:Ljava/net/URL;

    .line 77
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    .line 78
    sget-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    .line 80
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->webView:Landroid/webkit/WebView;

    .line 81
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 82
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/ads/consent/ConsentForm;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 84
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/ads/consent/ConsentForm$2;

    invoke-direct {v1, p0}, Lcom/google/ads/consent/ConsentForm$2;-><init>(Lcom/google/ads/consent/ConsentForm;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 162
    return-void

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/google/ads/consent/ConsentForm$Builder;->access$100(Lcom/google/ads/consent/ConsentForm$Builder;)Lcom/google/ads/consent/ConsentFormListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/ads/consent/ConsentForm$Builder;Lcom/google/ads/consent/ConsentForm$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/ads/consent/ConsentForm$Builder;
    .param p2, "x1"    # Lcom/google/ads/consent/ConsentForm$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/ads/consent/ConsentForm;-><init>(Lcom/google/ads/consent/ConsentForm$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/ads/consent/ConsentForm;Lcom/google/ads/consent/ConsentForm$LoadState;)Lcom/google/ads/consent/ConsentForm$LoadState;
    .locals 0
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentForm;
    .param p1, "x1"    # Lcom/google/ads/consent/ConsentForm$LoadState;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/ads/consent/ConsentForm;)Lcom/google/ads/consent/ConsentFormListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentForm;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/ads/consent/ConsentForm;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentForm;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/ads/consent/ConsentForm;->handleLoadComplete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/ads/consent/ConsentForm;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentForm;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/ads/consent/ConsentForm;->handleDismiss(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/ads/consent/ConsentForm;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentForm;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/ads/consent/ConsentForm;->handleOpenBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/ads/consent/ConsentForm;Landroid/webkit/WebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentForm;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/ads/consent/ConsentForm;->updateDialogContent(Landroid/webkit/WebView;)V

    return-void
.end method

.method private static createJavascriptCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "argumentsJSON"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "info"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 236
    .local v1, "wrappedArgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v2, "javascript:%s(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getAppIconURIString(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 219
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 221
    .local v4, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 222
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 221
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 224
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 225
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 226
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 227
    .local v2, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 228
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 229
    .local v1, "byteArray":[B
    const-string v6, "data:image/png;base64,"

    invoke-static {v1, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDismiss(Ljava/lang/String;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 304
    sget-object v2, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v2, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    .line 305
    iget-object v2, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v3, "No information provided."

    invoke-virtual {v2, v3}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    .line 336
    :goto_0
    return-void

    .line 312
    :cond_0
    const-string v2, "Error"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    invoke-virtual {v2, p1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_1
    const/4 v1, 0x0

    .line 319
    .local v1, "userPrefersAdFree":Z
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 331
    sget-object v0, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    .line 334
    .local v0, "consentStatus":Lcom/google/ads/consent/ConsentStatus;
    :goto_2
    iget-object v2, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v2

    const-string v3, "form"

    invoke-virtual {v2, v0, v3}, Lcom/google/ads/consent/ConsentInformation;->setConsentStatus(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormClosed(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 319
    .end local v0    # "consentStatus":Lcom/google/ads/consent/ConsentStatus;
    :sswitch_0
    const-string v3, "personalized"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "non_personalized"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "ad_free"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    .line 321
    :pswitch_0
    sget-object v0, Lcom/google/ads/consent/ConsentStatus;->PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    .line 322
    .restart local v0    # "consentStatus":Lcom/google/ads/consent/ConsentStatus;
    goto :goto_2

    .line 324
    .end local v0    # "consentStatus":Lcom/google/ads/consent/ConsentStatus;
    :pswitch_1
    sget-object v0, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    .line 325
    .restart local v0    # "consentStatus":Lcom/google/ads/consent/ConsentStatus;
    goto :goto_2

    .line 327
    .end local v0    # "consentStatus":Lcom/google/ads/consent/ConsentStatus;
    :pswitch_2
    const/4 v1, 0x1

    .line 328
    sget-object v0, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    .line 329
    .restart local v0    # "consentStatus":Lcom/google/ads/consent/ConsentStatus;
    goto :goto_2

    .line 319
    :sswitch_data_0
    .sparse-switch
        -0x44b41ef8 -> :sswitch_2
        -0xf616830 -> :sswitch_0
        0x635b0c02 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleLoadComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    .line 279
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v1, "No information"

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 280
    :cond_0
    const-string v0, "Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    sget-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    .line 282
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    invoke-virtual {v0, p1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_1
    sget-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADED:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    .line 285
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormLoaded()V

    goto :goto_0
.end method

.method private handleOpenBrowser(Ljava/lang/String;)V
    .locals 4
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v3, "No valid URL for browser navigation."

    invoke-virtual {v2, v3}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 296
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 297
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v3, "No Activity found to handle browser intent."

    invoke-virtual {v2, v3}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateDialogContent(Landroid/webkit/WebView;)V
    .locals 6
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 241
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v2, "formInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "app_name"

    iget-object v5, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/ads/consent/ConsentForm;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v4, "app_icon"

    iget-object v5, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/ads/consent/ConsentForm;->getAppIconURIString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v4, "offer_personalized"

    iget-boolean v5, p0, Lcom/google/ads/consent/ConsentForm;->personalizedAdsOption:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v4, "offer_non_personalized"

    iget-boolean v5, p0, Lcom/google/ads/consent/ConsentForm;->nonPersonalizedAdsOption:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v4, "offer_ad_free"

    iget-boolean v5, p0, Lcom/google/ads/consent/ConsentForm;->adFreeOption:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v4, "is_request_in_eea_or_unknown"

    iget-object v5, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    .line 248
    invoke-static {v5}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/ads/consent/ConsentInformation;->isRequestLocationInEeaOrUnknown()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 247
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v4, "app_privacy_url"

    iget-object v5, p0, Lcom/google/ads/consent/ConsentForm;->appPrivacyPolicyURL:Ljava/net/URL;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v4, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v1

    .line 252
    .local v1, "consentData":Lcom/google/ads/consent/ConsentData;
    const-string v4, "plat"

    invoke-virtual {v1}, Lcom/google/ads/consent/ConsentData;->getSDKPlatformString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v4, "consent_info"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "argumentsJSON":Ljava/lang/String;
    const-string v4, "setUpConsentDialog"

    invoke-static {v4, v0}, Lcom/google/ads/consent/ConsentForm;->createJavascriptCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "javascriptCommand":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 259
    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    sget-object v1, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADING:Lcom/google/ads/consent/ConsentForm$LoadState;

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v1, "Cannot simultaneously load multiple consent forms."

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    .line 274
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    sget-object v1, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADED:Lcom/google/ads/consent/ConsentForm$LoadState;

    if-ne v0, v1, :cond_1

    .line 268
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormLoaded()V

    goto :goto_0

    .line 272
    :cond_1
    sget-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADING:Lcom/google/ads/consent/ConsentForm$LoadState;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    .line 273
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/consentform.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 339
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->loadState:Lcom/google/ads/consent/ConsentForm$LoadState;

    sget-object v1, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADED:Lcom/google/ads/consent/ConsentForm$LoadState;

    if-eq v0, v1, :cond_1

    .line 340
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v1, "Consent form is not ready to be displayed."

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentInformation;->isTaggedForUnderAgeOfConsent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v1, "Error: tagged for under age of consent"

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 351
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/google/ads/consent/ConsentForm$3;

    invoke-direct {v1, p0}, Lcom/google/ads/consent/ConsentForm$3;-><init>(Lcom/google/ads/consent/ConsentForm;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 359
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 361
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm;->listener:Lcom/google/ads/consent/ConsentFormListener;

    const-string v1, "Consent form could not be displayed."

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentFormListener;->onConsentFormError(Ljava/lang/String;)V

    goto :goto_0
.end method
