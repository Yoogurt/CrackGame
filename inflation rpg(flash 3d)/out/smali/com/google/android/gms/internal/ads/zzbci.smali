.class final Lcom/google/android/gms/internal/ads/zzbci;
.super Lcom/google/android/gms/internal/ads/zzbab;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbt;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbab",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbbt",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzdvt:Lcom/google/android/gms/internal/ads/zzbci;


# instance fields
.field private size:I

.field private zzdvu:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbci;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbci;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvt:Lcom/google/android/gms/internal/ads/zzbci;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbab;->zzaaz()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbci;-><init>([JI)V

    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbab;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    return-void
.end method

.method private final zzbk(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbci;->zzbl(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private final zzbl(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    const/16 v1, 0x23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Index:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzk(IJ)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbab;->zzaba()V

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbci;->zzbl(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    aput-wide p2, v0, p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->modCount:I

    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    goto :goto_0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbci;->zzk(IJ)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbab;->zzaba()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzbci;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbab;->addAll(Ljava/util/Collection;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbci;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    if-eqz v1, :cond_0

    const v1, 0x7fffffff

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    sub-int/2addr v1, v2

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    if-ge v1, v2, :cond_2

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    array-length v2, v2

    if-le v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->modCount:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbci;

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbab;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbci;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    if-ne v0, v3, :cond_0

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    move v0, v1

    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    aget-wide v4, v4, v0

    aget-wide v6, v3, v0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbci;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final getLong(I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbci;->zzbk(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzbbq;->zzv(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbab;->zzaba()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbci;->zzbk(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    aget-wide v0, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    sub-int/2addr v5, p1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->modCount:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbab;->zzaba()V

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->modCount:I

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final removeRange(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbab;->zzaba()V

    if-ge p2, p1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "toIndex < fromIndex"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->modCount:I

    return-void
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbab;->zzaba()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbci;->zzbk(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    aget-wide v2, v2, p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    aput-wide v0, v4, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    return v0
.end method

.method public final synthetic zzbm(I)Lcom/google/android/gms/internal/ads/zzbbt;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbci;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdvu:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbci;-><init>([JI)V

    return-object v0
.end method

.method public final zzw(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbci;->size:I

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbci;->zzk(IJ)V

    return-void
.end method
