.class public abstract Lcom/google/ads/consent/ConsentFormListener;
.super Ljava/lang/Object;
.source "ConsentFormListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsentFormClosed(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "consentStatus"    # Lcom/google/ads/consent/ConsentStatus;
    .param p2, "userPrefersAdFree"    # Ljava/lang/Boolean;

    .prologue
    .line 26
    return-void
.end method

.method public onConsentFormError(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 24
    return-void
.end method

.method public onConsentFormLoaded()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onConsentFormOpened()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
