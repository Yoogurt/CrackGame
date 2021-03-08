.class public final Lcom/google/android/gms/internal/games/zzdy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCaptureCapabilities(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/games/zzdz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzdz;-><init>(Lcom/google/android/gms/internal/games/zzdy;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v0

    return-object v0
.end method

.method public final getCaptureOverlayIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zze;->zzay()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final getCaptureState(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStateResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/games/zzea;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzea;-><init>(Lcom/google/android/gms/internal/games/zzdy;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v0

    return-object v0
.end method

.method public final isCaptureAvailable(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/games/zzeb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/games/zzeb;-><init>(Lcom/google/android/gms/internal/games/zzdy;Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object v0

    return-object v0
.end method

.method public final isCaptureSupported(Lcom/google/android/gms/common/api/GoogleApiClient;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zze;->zzba()Z

    move-result v0

    return v0
.end method

.method public final registerCaptureOverlayStateChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/zze;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerListener(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/zze;->zzh(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    :cond_0
    return-void
.end method

.method public final unregisterCaptureOverlayStateChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/zze;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zze;->zzbc()V

    :cond_0
    return-void
.end method
