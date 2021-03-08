.class public Lcom/google/android/gms/internal/stable/zze$zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/stable/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field private static zzagq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/stable/zzh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/stable/zze$zza;->zzagq:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/stable/zzh;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/stable/zze$zza;->zzagq:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/stable/zzh;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/stable/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/stable/zzh;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/stable/zze$zza;->zzagq:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/internal/stable/zzf;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/stable/zzf;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/stable/zzh;)V

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/stable/zzh;->zzagu:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/stable/zzh;->zzags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/stable/zzh;->zzagt:Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    const-class v1, Lcom/google/android/gms/internal/stable/zze$zza;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/stable/zze$zza;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/stable/zzh;

    move-result-object v7

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter v7

    :try_start_1
    iget-object v8, v7, Lcom/google/android/gms/internal/stable/zzh;->zzagt:Ljava/lang/Object;

    iget-object v0, v7, Lcom/google/android/gms/internal/stable/zzh;->zzags:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/google/android/gms/internal/stable/zzh;->zzags:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x1

    :try_start_4
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const/4 v0, 0x0

    invoke-static {v7, v8, p2, v0}, Lcom/google/android/gms/internal/stable/zze$zza;->zza(Lcom/google/android/gms/internal/stable/zzh;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_4
    const/4 v0, 0x0

    :try_start_7
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v0

    :try_start_8
    invoke-static {v7, v8, p2, v0}, Lcom/google/android/gms/internal/stable/zze$zza;->zza(Lcom/google/android/gms/internal/stable/zzh;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    :goto_1
    :try_start_9
    const-string v2, "GoogleSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t get key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_3
    move-exception v0

    move-object v6, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    move-object v6, v2

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v6, v2

    goto :goto_1
.end method

.method private static zza(Lcom/google/android/gms/internal/stable/zzh;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/stable/zzh;->zzagt:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/stable/zzh;->zzags:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
