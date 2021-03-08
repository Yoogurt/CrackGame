.class Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$1;
.super Ljava/lang/Object;
.source "GoogleAdMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->getAdvertisingId()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$1;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    iput-object p2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$1;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    iget-object v2, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$002(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 124
    sget-object v1, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->TAG:Ljava/lang/String;

    const-string v2, "getAdvertisingId=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$1;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-static {v5}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$000(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/adverts/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$1;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-static {v1}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$100(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v1

    const-string v2, "advert:advertisingid"

    iget-object v3, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$1;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    .line 128
    invoke-static {v3}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$000(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob$1;->this$0:Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;

    invoke-static {v4}, Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;->access$000(Lcom/distriqt/extension/adverts/platforms/admob/GoogleAdMob;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/distriqt/extension/adverts/events/AdvertisingIdEvent;->formatAdvertisingIdForEvent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-interface {v1, v2, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
