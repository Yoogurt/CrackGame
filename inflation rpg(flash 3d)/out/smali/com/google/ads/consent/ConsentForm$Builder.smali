.class public Lcom/google/ads/consent/ConsentForm$Builder;
.super Ljava/lang/Object;
.source "ConsentForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/consent/ConsentForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adFreeOption:Z

.field private final appPrivacyPolicyURL:Ljava/net/URL;

.field private final context:Landroid/content/Context;

.field private listener:Lcom/google/ads/consent/ConsentFormListener;

.field private nonPersonalizedAdsOption:Z

.field private personalizedAdsOption:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appPrivacyPolicyURL"    # Ljava/net/URL;

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/ads/consent/ConsentForm$Builder;->context:Landroid/content/Context;

    .line 178
    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->personalizedAdsOption:Z

    .line 179
    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->nonPersonalizedAdsOption:Z

    .line 180
    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->adFreeOption:Z

    .line 181
    iput-object p2, p0, Lcom/google/ads/consent/ConsentForm$Builder;->appPrivacyPolicyURL:Ljava/net/URL;

    .line 183
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->appPrivacyPolicyURL:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide valid app privacy policy url to create a ConsentForm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/consent/ConsentForm$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentForm$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/ads/consent/ConsentForm$Builder;)Lcom/google/ads/consent/ConsentFormListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentForm$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->listener:Lcom/google/ads/consent/ConsentFormListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/ads/consent/ConsentForm$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentForm$Builder;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->personalizedAdsOption:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/ads/consent/ConsentForm$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentForm$Builder;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->nonPersonalizedAdsOption:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/ads/consent/ConsentForm$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentForm$Builder;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->adFreeOption:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/ads/consent/ConsentForm$Builder;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentForm$Builder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->appPrivacyPolicyURL:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/ads/consent/ConsentForm;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/google/ads/consent/ConsentForm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ads/consent/ConsentForm;-><init>(Lcom/google/ads/consent/ConsentForm$Builder;Lcom/google/ads/consent/ConsentForm$1;)V

    return-object v0
.end method

.method public withAdFreeOption()Lcom/google/ads/consent/ConsentForm$Builder;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->adFreeOption:Z

    .line 206
    return-object p0
.end method

.method public withListener(Lcom/google/ads/consent/ConsentFormListener;)Lcom/google/ads/consent/ConsentForm$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/google/ads/consent/ConsentFormListener;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/ads/consent/ConsentForm$Builder;->listener:Lcom/google/ads/consent/ConsentFormListener;

    .line 191
    return-object p0
.end method

.method public withNonPersonalizedAdsOption()Lcom/google/ads/consent/ConsentForm$Builder;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->nonPersonalizedAdsOption:Z

    .line 201
    return-object p0
.end method

.method public withPersonalizedAdsOption()Lcom/google/ads/consent/ConsentForm$Builder;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/consent/ConsentForm$Builder;->personalizedAdsOption:Z

    .line 196
    return-object p0
.end method
