.class public abstract Lcom/google/android/gms/stats/GCoreWakefulBroadcastReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GCoreWakefulBroadcastReceiver"

    sput-object v0, Lcom/google/android/gms/stats/GCoreWakefulBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakefulBroadcastReceiver"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/stats/WakeLockTracker;->getInstance()Lcom/google/android/gms/common/stats/WakeLockTracker;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/stats/WakeLockTracker;->registerReleaseEvent(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_1
    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/stats/GCoreWakefulBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "context shouldn\'t be null. intent: "

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 9

    const/4 v5, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/stats/GCoreWakefulBroadcastReceiver;->zza(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    return-object v5

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/stats/WakeLockTracker;->getInstance()Lcom/google/android/gms/common/stats/WakeLockTracker;

    move-result-object v0

    const-string v1, "wake:"

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-object v4, Lcom/google/android/gms/stats/GCoreWakefulBroadcastReceiver;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v7, "com.google.android.gms"

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/common/stats/WakeLockTracker;->registerAcquireEvent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v5, v8

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/stats/GCoreWakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v5, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/stats/GCoreWakefulBroadcastReceiver;->zza(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    return-object v5

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/stats/WakeLockTracker;->getInstance()Lcom/google/android/gms/common/stats/WakeLockTracker;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/stats/GCoreWakefulBroadcastReceiver;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/common/stats/WakeLockTracker;->registerAcquireEvent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v5, v8

    goto :goto_0
.end method

.method private static zza(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakefulBroadcastReceiver"
        }
    .end annotation

    const-string v0, "WAKE_LOCK_KEY"

    invoke-static {p0, p1}, Lcom/google/android/gms/common/stats/StatsUtils;->getEventKey(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
