.class Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;
.super Ljava/lang/Object;
.source "ConsentInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/consent/ConsentInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdNetworkLookupResponse"
.end annotation


# instance fields
.field private companyIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "company_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_network_id"
    .end annotation
.end field

.field private isNPA:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_npa"
    .end annotation
.end field

.field private lookupFailed:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lookup_failed"
    .end annotation
.end field

.field private notFound:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "not_found"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->lookupFailed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->notFound:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->isNPA:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->companyIds:Ljava/util/List;

    return-object v0
.end method
