.class public abstract Lcom/google/android/gms/internal/measurement/zzzg;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzbrq:Z


# instance fields
.field zzbrn:I

.field private zzbro:I

.field private zzbrp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzzg;->zzbrq:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzg;->zzbrn:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzzg;->zzbro:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzzg;->zzbrp:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzzh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzg;-><init>()V

    return-void
.end method

.method static zza([BIIZ)Lcom/google/android/gms/internal/measurement/zzzg;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzi;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzzi;-><init>([BIIZLcom/google/android/gms/internal/measurement/zzzh;)V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzzi;->zzaf(I)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzzv; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract zzti()I
.end method
