.class public final Lcom/google/android/gms/internal/measurement/zzacj;
.super Ljava/lang/Object;


# static fields
.field public static final zzbts:[I

.field private static final zzbxs:I

.field private static final zzbxt:I

.field private static final zzbxu:I

.field private static final zzbxv:I

.field public static final zzbxw:[J

.field private static final zzbxx:[F

.field private static final zzbxy:[D

.field private static final zzbxz:[Z

.field public static final zzbya:[Ljava/lang/String;

.field private static final zzbyb:[[B

.field public static final zzbyc:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xb

    sput v0, Lcom/google/android/gms/internal/measurement/zzacj;->zzbxs:I

    const/16 v0, 0xc

    sput v0, Lcom/google/android/gms/internal/measurement/zzacj;->zzbxt:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/internal/measurement/zzacj;->zzbxu:I

    const/16 v0, 0x1a

    sput v0, Lcom/google/android/gms/internal/measurement/zzacj;->zzbxv:I

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacj;->zzbts:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacj;->zzbxw:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacj;->zzbxx:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacj;->zzbxy:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacj;->zzbxz:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacj;->zzbya:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacj;->zzbyb:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzacj;->zzbyc:[B

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/measurement/zzabx;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabx;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzabx;->zzak(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzabx;->zzvf()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzabx;->zzak(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzabx;->zzd(II)V

    return v0
.end method
