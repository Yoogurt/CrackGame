.class final Lcom/google/android/gms/internal/ads/zzsr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final synthetic zzbnn:Lcom/google/android/gms/internal/ads/zzsm;

.field private final synthetic zzbno:Lcom/google/android/gms/internal/ads/zzaoj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsm;Lcom/google/android/gms/internal/ads/zzaoj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsr;->zzbnn:Lcom/google/android/gms/internal/ads/zzsm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsr;->zzbno:Lcom/google/android/gms/internal/ads/zzaoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsr;->zzbnn:Lcom/google/android/gms/internal/ads/zzsm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsm;->zzb(Lcom/google/android/gms/internal/ads/zzsm;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsr;->zzbno:Lcom/google/android/gms/internal/ads/zzaoj;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Connection failed."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaoj;->setException(Ljava/lang/Throwable;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
