.class final Lcom/google/android/gms/internal/measurement/zzaav;
.super Ljava/lang/Object;


# static fields
.field private static final zzbua:Lcom/google/android/gms/internal/measurement/zzaav;


# instance fields
.field private final zzbub:Lcom/google/android/gms/internal/measurement/zzaay;

.field private final zzbuc:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/zzaax",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaav;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaav;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaav;->zzbua:Lcom/google/android/gms/internal/measurement/zzaav;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaav;->zzbuc:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "com.google.protobuf.AndroidProto3SchemaFactory"

    aput-object v1, v3, v2

    move v1, v2

    :goto_0
    if-gtz v1, :cond_0

    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzaav;->zzfj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzaay;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaaf;-><init>()V

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaav;->zzbub:Lcom/google/android/gms/internal/measurement/zzaay;

    return-void
.end method

.method private static zzfj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzaay;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaay;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzum()Lcom/google/android/gms/internal/measurement/zzaav;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaav;->zzbua:Lcom/google/android/gms/internal/measurement/zzaav;

    return-object v0
.end method


# virtual methods
.method public final zzt(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaax;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/measurement/zzaax",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v0, "messageType"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/measurement/zzzt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaav;->zzbuc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaax;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaav;->zzbub:Lcom/google/android/gms/internal/measurement/zzaay;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaay;->zzg(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzaax;

    move-result-object v1

    const-string v0, "messageType"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/measurement/zzzt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzzt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaav;->zzbuc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaax;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
