.class Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$2;
.super Ljava/lang/Object;
.source "GoogleAdMob.java"

# interfaces
.implements Lcom/google/ads/consent/ConsentInfoUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->getConsentStatus(Ljava/lang/String;)V
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
    .line 333
    iput-object p1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$2;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsentInfoUpdated(Lcom/google/ads/consent/ConsentStatus;)V
    .locals 7
    .param p1, "consentStatus"    # Lcom/google/ads/consent/ConsentStatus;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 337
    sget-object v2, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v3, "onConsentInfoUpdated(): %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$2;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-static {v5, p1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$200(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;Lcom/google/ads/consent/ConsentStatus;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$2;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-static {v2}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$100(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/consent/ConsentInformation;->isRequestLocationInEeaOrUnknown()Z

    move-result v1

    .line 341
    .local v1, "inEea":Z
    sget-object v2, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v3, "onConsentInfoUpdated(): inEea=%b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$2;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-static {v2}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$100(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v2

    const-string v3, "consent:status:updated"

    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$2;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    .line 346
    invoke-static {v4, p1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$200(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;Lcom/google/ads/consent/ConsentStatus;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 345
    invoke-static {v4, v1, v5}, Lcom/distriqt/extension/adverts/events/ConsentEvent;->formatForEvent(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-interface {v2, v3, v4}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v1    # "inEea":Z
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFailedToUpdateConsentInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 361
    sget-object v0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v1, "onFailedToUpdateConsentInfo( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$2;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-static {v0}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$100(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "consent:status:error"

    .line 364
    invoke-static {p1}, Lcom/distriqt/extension/adverts/events/ConsentEvent;->formatErrorForEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method
