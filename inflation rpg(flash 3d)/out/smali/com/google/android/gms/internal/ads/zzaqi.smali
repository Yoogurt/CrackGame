.class final Lcom/google/android/gms/internal/ads/zzaqi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzcce:Ljava/lang/String;

.field private final synthetic zzdba:Ljava/lang/String;

.field private final synthetic zzdbb:I

.field private final synthetic zzdbc:I

.field private final synthetic zzdbd:Z

.field private final synthetic zzdbe:Lcom/google/android/gms/internal/ads/zzaqh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqh;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzdbe:Lcom/google/android/gms/internal/ads/zzaqh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzcce:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzdba:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzdbb:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzdbc:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzdbd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "event"

    const-string v2, "precacheProgress"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "src"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzcce:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzdba:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bytesLoaded"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzdbb:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "totalBytes"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzdbc:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cacheReady"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzdbd:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzdbe:Lcom/google/android/gms/internal/ads/zzaqh;

    const-string v2, "onPrecacheEvent"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqh;->zza(Lcom/google/android/gms/internal/ads/zzaqh;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
