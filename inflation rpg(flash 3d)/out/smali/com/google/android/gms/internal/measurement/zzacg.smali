.class public abstract Lcom/google/android/gms/internal/measurement/zzacg;
.super Ljava/lang/Object;


# instance fields
.field protected volatile zzbxr:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzacg;->zzbxr:I

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/measurement/zzacg;[B)Lcom/google/android/gms/internal/measurement/zzacg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzacg;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzacf;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzacg;->zzb(Lcom/google/android/gms/internal/measurement/zzacg;[BII)Lcom/google/android/gms/internal/measurement/zzacg;

    move-result-object v0

    return-object v0
.end method

.method public static final zza(Lcom/google/android/gms/internal/measurement/zzacg;[BII)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzaby;->zzb([BII)Lcom/google/android/gms/internal/measurement/zzaby;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacg;->zza(Lcom/google/android/gms/internal/measurement/zzaby;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaby;->zzvn()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static final zzb(Lcom/google/android/gms/internal/measurement/zzacg;[BII)Lcom/google/android/gms/internal/measurement/zzacg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/zzacg;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzacf;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzabx;->zza([BII)Lcom/google/android/gms/internal/measurement/zzabx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacg;->zzb(Lcom/google/android/gms/internal/measurement/zzabx;)Lcom/google/android/gms/internal/measurement/zzacg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzabx;->zzaj(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzacf; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacg;->zzvo()Lcom/google/android/gms/internal/measurement/zzacg;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzach;->zzc(Lcom/google/android/gms/internal/measurement/zzacg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zza()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/measurement/zzaby;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/measurement/zzabx;)Lcom/google/android/gms/internal/measurement/zzacg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public zzvo()Lcom/google/android/gms/internal/measurement/zzacg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzacg;

    return-object v0
.end method

.method public final zzvu()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacg;->zzbxr:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacg;->zzvv()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacg;->zzbxr:I

    return v0
.end method

.method public final zzvv()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacg;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzacg;->zzbxr:I

    return v0
.end method
