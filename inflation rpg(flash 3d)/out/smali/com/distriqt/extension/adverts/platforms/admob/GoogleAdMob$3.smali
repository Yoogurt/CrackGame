.class Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$3;
.super Lcom/google/ads/consent/ConsentFormListener;
.source "GoogleAdMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->askForConsent(Lcom/distriqt/extension/adverts/platforms/ConsentOptions;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$3;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-direct {p0}, Lcom/google/ads/consent/ConsentFormListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsentFormClosed(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "consentStatus"    # Lcom/google/ads/consent/ConsentStatus;
    .param p2, "userPrefersAdFree"    # Ljava/lang/Boolean;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 409
    sget-object v2, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v3, "onConsentFormClosed( %s, %b )"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$3;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-static {v5, p1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$200(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;Lcom/google/ads/consent/ConsentStatus;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :try_start_0
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$3;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-static {v2}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$100(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/consent/ConsentInformation;->isRequestLocationInEeaOrUnknown()Z

    move-result v1

    .line 413
    .local v1, "inEea":Z
    sget-object v2, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v3, "onConsentFormClosed(): inEea=%b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$3;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-static {v2}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$100(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v2

    const-string v3, "consent:form:closed"

    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$3;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    .line 418
    invoke-static {v4, p1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$200(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;Lcom/google/ads/consent/ConsentStatus;)Ljava/lang/String;

    move-result-object v4

    .line 420
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 417
    invoke-static {v4, v1, v5}, Lcom/distriqt/extension/adverts/events/ConsentEvent;->formatForEvent(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 415
    invoke-interface {v2, v3, v4}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v1    # "inEea":Z
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onConsentFormError(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 393
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v1, "onConsentFormError( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$3;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-static {v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$100(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "consent:form:error"

    .line 396
    invoke-static {p1}, Lcom/distriqt/extension/adverts/events/ConsentEvent;->formatErrorForEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public onConsentFormLoaded()V
    .locals 3

    .prologue
    .line 386
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v1, "onConsentFormLoaded()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$3;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-static {v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$300(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/google/ads/consent/ConsentForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentForm;->show()V

    .line 388
    return-void
.end method

.method public onConsentFormOpened()V
    .locals 3

    .prologue
    .line 403
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v1, "onConsentFormOpened()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    return-void
.end method
