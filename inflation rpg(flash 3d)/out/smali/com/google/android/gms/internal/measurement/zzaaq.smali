.class final Lcom/google/android/gms/internal/measurement/zzaaq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzaax;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzaax",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final zzbts:[I

.field private static final zzbtt:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaaq;->zzbts:[I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzabo;->zzva()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaaq;->zzbtt:Lsun/misc/Unsafe;

    return-void
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzaal;Lcom/google/android/gms/internal/measurement/zzaas;Lcom/google/android/gms/internal/measurement/zzaab;Lcom/google/android/gms/internal/measurement/zzabl;Lcom/google/android/gms/internal/measurement/zzzl;Lcom/google/android/gms/internal/measurement/zzaai;)Lcom/google/android/gms/internal/measurement/zzaaq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzaal;",
            "Lcom/google/android/gms/internal/measurement/zzaas;",
            "Lcom/google/android/gms/internal/measurement/zzaab;",
            "Lcom/google/android/gms/internal/measurement/zzabl",
            "<**>;",
            "Lcom/google/android/gms/internal/measurement/zzzl",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/zzaai;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzaaq",
            "<TT;>;"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzaaw;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
