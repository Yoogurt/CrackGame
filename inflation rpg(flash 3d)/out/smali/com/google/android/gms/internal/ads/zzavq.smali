.class public final Lcom/google/android/gms/internal/ads/zzavq;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzavq$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo",
        "<",
        "Lcom/google/android/gms/internal/ads/zzavq;",
        "Lcom/google/android/gms/internal/ads/zzavq$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf",
            "<",
            "Lcom/google/android/gms/internal/ads/zzavq;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdin:Lcom/google/android/gms/internal/ads/zzavq;


# instance fields
.field private zzdil:Lcom/google/android/gms/internal/ads/zzavu;

.field private zzdim:Lcom/google/android/gms/internal/ads/zzaxe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavq;->zzdin:Lcom/google/android/gms/internal/ads/zzavq;

    const-class v0, Lcom/google/android/gms/internal/ads/zzavq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzavq;->zzdin:Lcom/google/android/gms/internal/ads/zzavq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    return-void
.end method

.method public static zzj(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzavq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavq;->zzdin:Lcom/google/android/gms/internal/ads/zzavq;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzavq;

    return-object v0
.end method

.method static synthetic zzwt()Lcom/google/android/gms/internal/ads/zzavq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavq;->zzdin:Lcom/google/android/gms/internal/ads/zzavq;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavr;->zzakf:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavq;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavq$zza;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzavq$zza;-><init>(Lcom/google/android/gms/internal/ads/zzavr;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzdil"

    aput-object v2, v0, v1

    const-string v1, "zzdim"

    aput-object v1, v0, v3

    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\t\u0002\t"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzavq;->zzdin:Lcom/google/android/gms/internal/ads/zzavq;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzavq;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavq;->zzdin:Lcom/google/android/gms/internal/ads/zzavq;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavq;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_0

    const-class v1, Lcom/google/android/gms/internal/ads/zzavq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavq;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzavq;->zzdin:Lcom/google/android/gms/internal/ads/zzavq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavq;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final zzwr()Lcom/google/android/gms/internal/ads/zzavu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzdil:Lcom/google/android/gms/internal/ads/zzavu;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavu;->zzwz()Lcom/google/android/gms/internal/ads/zzavu;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzdil:Lcom/google/android/gms/internal/ads/zzavu;

    goto :goto_0
.end method

.method public final zzws()Lcom/google/android/gms/internal/ads/zzaxe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzdim:Lcom/google/android/gms/internal/ads/zzaxe;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxe;->zzyq()Lcom/google/android/gms/internal/ads/zzaxe;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzdim:Lcom/google/android/gms/internal/ads/zzaxe;

    goto :goto_0
.end method
