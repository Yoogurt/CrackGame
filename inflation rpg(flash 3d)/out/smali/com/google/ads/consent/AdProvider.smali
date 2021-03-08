.class public Lcom/google/ads/consent/AdProvider;
.super Ljava/lang/Object;
.source "AdProvider.java"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "company_id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "company_name"
    .end annotation
.end field

.field private privacyPolicyUrlString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "policy_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    if-ne p0, p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 65
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 68
    check-cast v0, Lcom/google/ads/consent/AdProvider;

    .line 70
    .local v0, "that":Lcom/google/ads/consent/AdProvider;
    iget-object v3, p0, Lcom/google/ads/consent/AdProvider;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/ads/consent/AdProvider;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/ads/consent/AdProvider;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/ads/consent/AdProvider;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/ads/consent/AdProvider;->privacyPolicyUrlString:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/ads/consent/AdProvider;->privacyPolicyUrlString:Ljava/lang/String;

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/ads/consent/AdProvider;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/ads/consent/AdProvider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyPolicyUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/ads/consent/AdProvider;->privacyPolicyUrlString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/ads/consent/AdProvider;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 77
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/ads/consent/AdProvider;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 78
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/ads/consent/AdProvider;->privacyPolicyUrlString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 79
    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/ads/consent/AdProvider;->id:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/ads/consent/AdProvider;->name:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPrivacyPolicyUrlString(Ljava/lang/String;)V
    .locals 0
    .param p1, "privacyPolicyUrlString"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/ads/consent/AdProvider;->privacyPolicyUrlString:Ljava/lang/String;

    .line 56
    return-void
.end method
