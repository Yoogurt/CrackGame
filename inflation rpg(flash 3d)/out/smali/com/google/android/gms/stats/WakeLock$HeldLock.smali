.class public Lcom/google/android/gms/stats/WakeLock$HeldLock;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/stats/WakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeldLock"
.end annotation


# instance fields
.field private final synthetic zzaei:Lcom/google/android/gms/stats/WakeLock;

.field private zzaek:Z

.field private zzael:Ljava/util/concurrent/Future;

.field private final zzaem:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/stats/WakeLock;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/stats/WakeLock$HeldLock;->zzaei:Lcom/google/android/gms/stats/WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/stats/WakeLock$HeldLock;->zzaek:Z

    iput-object p2, p0, Lcom/google/android/gms/stats/WakeLock$HeldLock;->zzaem:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/stats/WakeLock;Ljava/lang/String;Lcom/google/android/gms/stats/zza;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/stats/WakeLock$HeldLock;-><init>(Lcom/google/android/gms/stats/WakeLock;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/stats/WakeLock$HeldLock;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/stats/WakeLock$HeldLock;->zzael:Ljava/util/concurrent/Future;

    return-object p1
.end method


# virtual methods
.method public finalize()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/stats/WakeLock$HeldLock;->zzaek:Z

    if-eqz v0, :cond_0

    const-string v1, "WakeLock"

    const-string v2, "HeldLock finalized while still holding the WakeLock! Reason: "

    iget-object v0, p0, Lcom/google/android/gms/stats/WakeLock$HeldLock;->zzaem:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/stats/WakeLock$HeldLock;->release(I)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/stats/WakeLock$HeldLock;->release(I)V

    return-void
.end method

.method public declared-synchronized release(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/stats/WakeLock$HeldLock;->zzaek:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/stats/WakeLock$HeldLock;->zzaek:Z

    iget-object v0, p0, Lcom/google/android/gms/stats/WakeLock$HeldLock;->zzael:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/stats/WakeLock$HeldLock;->zzael:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/stats/WakeLock$HeldLock;->zzael:Ljava/util/concurrent/Future;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/stats/WakeLock$HeldLock;->zzaei:Lcom/google/android/gms/stats/WakeLock;

    iget-object v1, p0, Lcom/google/android/gms/stats/WakeLock$HeldLock;->zzaem:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/stats/WakeLock;->zza(Lcom/google/android/gms/stats/WakeLock;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
