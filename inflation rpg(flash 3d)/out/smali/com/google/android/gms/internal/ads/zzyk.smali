.class public final Lcom/google/android/gms/internal/ads/zzyk;
.super Lcom/google/android/gms/internal/ads/zzxr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

.field private zzbut:Lcom/google/android/gms/internal/ads/zzyl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "Server parameters: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz v1, :cond_3

    const-string v1, "adJson"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string v1, "tagForChildDirectedTreatment"

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-object v0
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzjj;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzapz:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamu;->zzsg()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final getInterstitialAdapterInfo()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzatm;

    if-nez v0, :cond_1

    const-string v1, "Not a v2 MediationInterstitialAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzatm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatm;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzlo;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/zza;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/mediation/zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/zza;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final getView()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v0, :cond_1

    const-string v1, "Not a MediationBannerAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final isInitialized()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v0, :cond_1

    const-string v1, "Not a MediationRewardedVideoAdAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Check if adapter is initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->isInitialized()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final resume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final setImmersiveMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    if-nez v0, :cond_1

    const-string v1, "Not an OnImmersiveModeUpdatedListener: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdj(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;->onImmersiveModeUpdated(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final showInterstitial()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v0, :cond_1

    const-string v1, "Not a MediationInterstitialAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Showing interstitial from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final showVideo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v0, :cond_1

    const-string v1, "Not a MediationRewardedVideoAdAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Show rewarded video ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->showVideo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaic;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzaic;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    if-nez v0, :cond_1

    const-string v1, "Not an InitializableMediationRewardedVideoAdAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Initialize rewarded video adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Could not initialize rewarded video adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaif;

    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/ads/zzaif;-><init>(Lcom/google/android/gms/internal/ads/zzaic;)V

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaic;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v2, v2, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v2, :cond_1

    const-string v3, "Not a MediationRewardedVideoAdAdapter: "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "Initialize rewarded video adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    move-object v10, v0

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-direct {p0, v0, p2, v3}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    if-eqz p2, :cond_5

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzyj;

    iget-wide v6, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    iget v4, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzyk;->zzm(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v7

    iget v8, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    iget-boolean v9, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaql:Z

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzyj;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    move-object v4, v2

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaif;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzaif;-><init>(Lcom/google/android/gms/internal/ads/zzaic;)V

    move-object v2, v10

    move-object/from16 v5, p3

    move-object v7, v12

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_4
    move-object v8, v11

    move-object v4, v2

    goto :goto_3

    :cond_5
    move-object v8, v11

    move-object v4, v2

    goto :goto_3
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v2, v2, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v2, :cond_1

    const-string v3, "Not a MediationInterstitialAdapter: "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "Requesting interstitial ad from adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    move-object v10, v0

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzyj;

    iget-wide v6, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    move-object v3, v11

    :goto_2
    iget v4, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzyk;->zzm(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v7

    iget v8, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    iget-boolean v9, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaql:Z

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzyj;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzyl;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/zzyl;-><init>(Lcom/google/android/gms/internal/ads/zzxt;)V

    move-object/from16 v0, p4

    invoke-direct {p0, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v3, v10

    move-object v7, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V

    return-void

    :cond_2
    move-object v5, v11

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_4
    move-object v8, v11

    goto :goto_3
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzpl;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzjj;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzxt;",
            "Lcom/google/android/gms/internal/ads/zzpl;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v2, v2, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-nez v2, :cond_1

    const-string v3, "Not a MediationNativeAdapter: "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    move-object v12, v0

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzyo;

    iget-wide v6, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    iget v4, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzyk;->zzm(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v7

    iget v8, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    iget-boolean v11, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaql:Z

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzyo;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/zzpl;Ljava/util/List;Z)V

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    :goto_3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzyl;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzyl;-><init>(Lcom/google/android/gms/internal/ads/zzxt;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbut:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbut:Lcom/google/android/gms/internal/ads/zzyl;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v3, v12

    move-object v7, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_4
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v2, v2, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v2, :cond_1

    const-string v3, "Not a MediationBannerAdapter: "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "Requesting banner ad from adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    move-object v10, v0

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzyj;

    iget-wide v6, p3, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    iget v4, p3, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzyk;->zzm(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v7

    iget v8, p3, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    iget-boolean v9, p3, Lcom/google/android/gms/internal/ads/zzjj;->zzaql:Z

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzyj;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzyl;

    move-object/from16 v0, p6

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/zzyl;-><init>(Lcom/google/android/gms/internal/ads/zzxt;)V

    move-object/from16 v0, p5

    invoke-direct {p0, p4, p3, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    iget v7, p2, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    iget-object v8, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzarb:Ljava/lang/String;

    invoke-static {v3, v7, v8}, Lcom/google/android/gms/ads/zzb;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v7

    move-object v3, v10

    move-object v8, v2

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p3, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v2, v2, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v2, :cond_1

    const-string v3, "Not a MediationRewardedVideoAdAdapter: "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "Requesting rewarded video ad from adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    move-object v10, v0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/HashSet;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzyj;

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    move-object v3, v11

    :goto_2
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyk;->zzm(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v7

    iget v8, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    iget-boolean v9, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzaql:Z

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzyj;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :goto_3
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v10, v2, v4, v3}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :cond_2
    move-object v5, v11

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    :cond_4
    move-object v3, v11

    goto :goto_3
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v1, Lcom/google/android/gms/ads/mediation/OnContextChangedListener;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/OnContextChangedListener;->onContextChanged(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final zzmo()Lcom/google/android/gms/internal/ads/zzxz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbut:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyl;->zzmx()Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzym;

    check-cast v0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzym;-><init>(Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzmp()Lcom/google/android/gms/internal/ads/zzyc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbut:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyl;->zzmx()Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyn;

    check-cast v0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzyn;-><init>(Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzmq()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzatl;

    if-nez v0, :cond_1

    const-string v1, "Not a v2 MediationBannerAdapter: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzatl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatl;->zzmq()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method public final zzmr()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zzms()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    return v0
.end method

.method public final zzmt()Lcom/google/android/gms/internal/ads/zzqs;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbut:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyl;->zzmz()Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzqv;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqv;->zzku()Lcom/google/android/gms/internal/ads/zzqs;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzmu()Lcom/google/android/gms/internal/ads/zzyf;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbut:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyl;->zzmy()Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzze;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzze;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
