.class final Lcom/google/android/gms/internal/ads/zzvl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzv",
        "<",
        "Lcom/google/android/gms/internal/ads/zzwb;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbqj:Lcom/google/android/gms/internal/ads/zzuu;

.field private final synthetic zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

.field private final synthetic zzbql:Lcom/google/android/gms/internal/ads/zzci;

.field private final synthetic zzbqm:Lcom/google/android/gms/internal/ads/zzamk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvf;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzamk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbql:Lcom/google/android/gms/internal/ads/zzci;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqj:Lcom/google/android/gms/internal/ads/zzuu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqm:Lcom/google/android/gms/internal/ads/zzamk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvf;->zza(Lcom/google/android/gms/internal/ads/zzvf;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvf;->zzd(Lcom/google/android/gms/internal/ads/zzvf;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzvf;->zza(Lcom/google/android/gms/internal/ads/zzvf;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbql:Lcom/google/android/gms/internal/ads/zzci;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzvf;->zza(Lcom/google/android/gms/internal/ads/zzci;)Lcom/google/android/gms/internal/ads/zzvw;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqj:Lcom/google/android/gms/internal/ads/zzuu;

    const-string v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqm:Lcom/google/android/gms/internal/ads/zzamk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamk;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzuu;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
