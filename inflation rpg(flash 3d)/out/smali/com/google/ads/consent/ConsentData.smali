.class Lcom/google/ads/consent/ConsentData;
.super Ljava/lang/Object;
.source "ConsentData.java"


# static fields
.field private static final SDK_PLATFORM:Ljava/lang/String; = "android"

.field private static final SDK_VERSION:Ljava/lang/String; = "1.0.6"


# instance fields
.field private adProviders:Ljava/util/HashSet;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "providers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;"
        }
    .end annotation
.end field

.field private consentSource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consent_source"
    .end annotation
.end field

.field private consentStatus:Lcom/google/ads/consent/ConsentStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consent_state"
    .end annotation
.end field

.field private consentedAdProviders:Ljava/util/HashSet;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consented_providers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;"
        }
    .end annotation
.end field

.field private hasNonPersonalizedPublisherId:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_any_npa_pub_id"
    .end annotation
.end field

.field private isRequestLocationInEeaOrUnknown:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_request_in_eea_or_unknown"
    .end annotation
.end field

.field private publisherIds:Ljava/util/HashSet;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pub_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rawResponse:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "raw_response"
    .end annotation
.end field

.field private final sdkPlatformString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plat"
    .end annotation
.end field

.field private final sdkVersionString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field private underAgeOfConsent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag_for_under_age_of_consent"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->adProviders:Ljava/util/HashSet;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->consentedAdProviders:Ljava/util/HashSet;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->publisherIds:Ljava/util/HashSet;

    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->underAgeOfConsent:Ljava/lang/Boolean;

    .line 65
    sget-object v0, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->consentStatus:Lcom/google/ads/consent/ConsentStatus;

    .line 66
    iput-boolean v1, p0, Lcom/google/ads/consent/ConsentData;->isRequestLocationInEeaOrUnknown:Z

    .line 67
    iput-boolean v1, p0, Lcom/google/ads/consent/ConsentData;->hasNonPersonalizedPublisherId:Z

    .line 68
    const-string v0, "1.0.6"

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->sdkVersionString:Ljava/lang/String;

    .line 69
    const-string v0, "android"

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->sdkPlatformString:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->rawResponse:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method getAdProviders()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/ads/consent/ConsentData;->adProviders:Ljava/util/HashSet;

    return-object v0
.end method

.method public getConsentSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/ads/consent/ConsentData;->consentSource:Ljava/lang/String;

    return-object v0
.end method

.method getConsentStatus()Lcom/google/ads/consent/ConsentStatus;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/ads/consent/ConsentData;->consentStatus:Lcom/google/ads/consent/ConsentStatus;

    return-object v0
.end method

.method getConsentedAdProviders()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/ads/consent/ConsentData;->consentedAdProviders:Ljava/util/HashSet;

    return-object v0
.end method

.method getPublisherIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/ads/consent/ConsentData;->publisherIds:Ljava/util/HashSet;

    return-object v0
.end method

.method getRawResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/ads/consent/ConsentData;->rawResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKPlatformString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/ads/consent/ConsentData;->sdkPlatformString:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/ads/consent/ConsentData;->sdkVersionString:Ljava/lang/String;

    return-object v0
.end method

.method hasNonPersonalizedPublisherId()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/ads/consent/ConsentData;->hasNonPersonalizedPublisherId:Z

    return v0
.end method

.method isRequestLocationInEeaOrUnknown()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/ads/consent/ConsentData;->isRequestLocationInEeaOrUnknown:Z

    return v0
.end method

.method isTaggedForUnderAgeOfConsent()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/ads/consent/ConsentData;->underAgeOfConsent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method setAdProviders(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "adProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/ads/consent/AdProvider;>;"
    iput-object p1, p0, Lcom/google/ads/consent/ConsentData;->adProviders:Ljava/util/HashSet;

    .line 87
    return-void
.end method

.method public setConsentSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "consentSource"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/ads/consent/ConsentData;->consentSource:Ljava/lang/String;

    .line 143
    return-void
.end method

.method setConsentStatus(Lcom/google/ads/consent/ConsentStatus;)V
    .locals 0
    .param p1, "consentStatus"    # Lcom/google/ads/consent/ConsentStatus;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/ads/consent/ConsentData;->consentStatus:Lcom/google/ads/consent/ConsentStatus;

    .line 95
    return-void
.end method

.method setConsentedAdProviders(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "consentedAdProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/ads/consent/AdProvider;>;"
    iput-object p1, p0, Lcom/google/ads/consent/ConsentData;->consentedAdProviders:Ljava/util/HashSet;

    .line 119
    return-void
.end method

.method setHasNonPersonalizedPublisherId(Z)V
    .locals 0
    .param p1, "hasNonPersonalizedPublisherId"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/google/ads/consent/ConsentData;->hasNonPersonalizedPublisherId:Z

    .line 127
    return-void
.end method

.method setPublisherIds(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "publisherIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/ads/consent/ConsentData;->publisherIds:Ljava/util/HashSet;

    .line 103
    return-void
.end method

.method setRawResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawResponse"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/ads/consent/ConsentData;->rawResponse:Ljava/lang/String;

    .line 151
    return-void
.end method

.method setRequestLocationInEeaOrUnknown(Z)V
    .locals 0
    .param p1, "eeaRequestLocationOrUnknown"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/google/ads/consent/ConsentData;->isRequestLocationInEeaOrUnknown:Z

    .line 111
    return-void
.end method

.method tagForUnderAgeOfConsent(Z)V
    .locals 1
    .param p1, "underAgeOfConsent"    # Z

    .prologue
    .line 78
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/consent/ConsentData;->underAgeOfConsent:Ljava/lang/Boolean;

    .line 79
    return-void
.end method
