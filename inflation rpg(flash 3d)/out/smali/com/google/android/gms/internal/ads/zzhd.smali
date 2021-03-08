.class public final Lcom/google/android/gms/internal/ads/zzhd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final zzajq:Ljava/lang/Runnable;

.field private zzajr:Lcom/google/android/gms/internal/ads/zzhk;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private zzajs:Lcom/google/android/gms/internal/ads/zzho;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhe;-><init>(Lcom/google/android/gms/internal/ads/zzhd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajq:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private final connect()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhg;-><init>(Lcom/google/android/gms/internal/ads/zzhd;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhh;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(Lcom/google/android/gms/internal/ads/zzhd;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhd;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzez()Lcom/google/android/gms/internal/ads/zzamg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamg;->zzsa()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/google/android/gms/internal/ads/zzhk;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhk;->checkAvailabilityAndConnect()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final disconnect()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhk;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhk;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhk;->disconnect()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajs:Lcom/google/android/gms/internal/ads/zzho;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzhd;Lcom/google/android/gms/internal/ads/zzhk;)Lcom/google/android/gms/internal/ads/zzhk;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzhd;Lcom/google/android/gms/internal/ads/zzho;)Lcom/google/android/gms/internal/ads/zzho;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajs:Lcom/google/android/gms/internal/ads/zzho;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzhd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhd;->disconnect()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzhd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhd;->connect()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzhd;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzhd;)Lcom/google/android/gms/internal/ads/zzhk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajr:Lcom/google/android/gms/internal/ads/zzhk;

    return-object v0
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbdo:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhd;->connect()V

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbdn:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Lcom/google/android/gms/internal/ads/zzhd;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzgg;->zza(Lcom/google/android/gms/internal/ads/zzgj;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhl;)Lcom/google/android/gms/internal/ads/zzhi;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajs:Lcom/google/android/gms/internal/ads/zzho;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhi;-><init>()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajs:Lcom/google/android/gms/internal/ads/zzho;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzho;->zza(Lcom/google/android/gms/internal/ads/zzhl;)Lcom/google/android/gms/internal/ads/zzhi;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Unable to call into cache service."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhi;-><init>()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final zzhh()V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbdp:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhd;->connect()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajq:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzajq:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbdq:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
