.class final Lcom/google/android/gms/internal/measurement/zzaaz;
.super Ljava/lang/Object;


# static fields
.field private static final zzbud:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final zzbue:Lcom/google/android/gms/internal/measurement/zzabl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzabl",
            "<**>;"
        }
    .end annotation
.end field

.field private static final zzbuf:Lcom/google/android/gms/internal/measurement/zzabl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzabl",
            "<**>;"
        }
    .end annotation
.end field

.field private static final zzbug:Lcom/google/android/gms/internal/measurement/zzabl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzabl",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaaz;->zzuq()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaaz;->zzbud:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzaaz;->zzu(Z)Lcom/google/android/gms/internal/measurement/zzabl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaaz;->zzbue:Lcom/google/android/gms/internal/measurement/zzabl;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzaaz;->zzu(Z)Lcom/google/android/gms/internal/measurement/zzabl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaaz;->zzbuf:Lcom/google/android/gms/internal/measurement/zzabl;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzabn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzabn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaaz;->zzbug:Lcom/google/android/gms/internal/measurement/zzabl;

    return-void
.end method

.method public static zzh(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/measurement/zzzs;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaaz;->zzbud:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaaz;->zzbud:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static zzu(Z)Lcom/google/android/gms/internal/measurement/zzabl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/internal/measurement/zzabl",
            "<**>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaaz;->zzur()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzabl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static zzun()Lcom/google/android/gms/internal/measurement/zzabl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzabl",
            "<**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaaz;->zzbue:Lcom/google/android/gms/internal/measurement/zzabl;

    return-object v0
.end method

.method public static zzuo()Lcom/google/android/gms/internal/measurement/zzabl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzabl",
            "<**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaaz;->zzbuf:Lcom/google/android/gms/internal/measurement/zzabl;

    return-object v0
.end method

.method public static zzup()Lcom/google/android/gms/internal/measurement/zzabl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzabl",
            "<**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaaz;->zzbug:Lcom/google/android/gms/internal/measurement/zzabl;

    return-object v0
.end method

.method private static zzuq()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzur()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
