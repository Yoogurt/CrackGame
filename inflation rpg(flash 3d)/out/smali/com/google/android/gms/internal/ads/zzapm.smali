.class final Lcom/google/android/gms/internal/ads/zzapm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzcyd:Lcom/google/android/gms/internal/ads/zzapi;

.field private final synthetic zzcye:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapi;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzcyd:Lcom/google/android/gms/internal/ads/zzapi;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzcye:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzcyd:Lcom/google/android/gms/internal/ads/zzapi;

    const-string v1, "windowVisibilityChanged"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "isVisible"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzcye:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzapi;->zza(Lcom/google/android/gms/internal/ads/zzapi;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
