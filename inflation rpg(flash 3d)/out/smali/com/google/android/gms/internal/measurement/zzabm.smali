.class public final Lcom/google/android/gms/internal/measurement/zzabm;
.super Ljava/lang/Object;


# static fields
.field private static final zzbut:Lcom/google/android/gms/internal/measurement/zzabm;


# instance fields
.field private count:I

.field private zzbsj:I

.field private zzbuu:[I

.field private zzbuv:[Ljava/lang/Object;

.field private zzbuw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzabm;

    new-array v1, v3, [I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzabm;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzabm;->zzbut:Lcom/google/android/gms/internal/measurement/zzabm;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v2, 0x8

    const/4 v0, 0x0

    new-array v1, v2, [I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzabm;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zzbsj:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzabm;->count:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zzbuu:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zzbuv:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzabm;->zzbuw:Z

    return-void
.end method

.method public static zzuz()Lcom/google/android/gms/internal/measurement/zzabm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzabm;->zzbut:Lcom/google/android/gms/internal/measurement/zzabm;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/zzabm;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0x7bc6f

    return v0
.end method
