.class public final Lcom/google/android/gms/internal/ads/zzaxt;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzaxt$zza;,
        Lcom/google/android/gms/internal/ads/zzaxt$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo",
        "<",
        "Lcom/google/android/gms/internal/ads/zzaxt;",
        "Lcom/google/android/gms/internal/ads/zzaxt$zza;",
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
            "Lcom/google/android/gms/internal/ads/zzaxt;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;


# instance fields
.field private zzdlq:I

.field private zzdlr:I

.field private zzdly:Lcom/google/android/gms/internal/ads/zzbbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbbt",
            "<",
            "Lcom/google/android/gms/internal/ads/zzaxt$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;

    const-class v0, Lcom/google/android/gms/internal/ads/zzaxt;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxt;->zzadd()Lcom/google/android/gms/internal/ads/zzbbt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdly:Lcom/google/android/gms/internal/ads/zzbbt;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzaxt$zzb;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdly:Lcom/google/android/gms/internal/ads/zzbbt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbt;->zzaay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdly:Lcom/google/android/gms/internal/ads/zzbbt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbbt;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xa

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbt;->zzbm(I)Lcom/google/android/gms/internal/ads/zzbbt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdly:Lcom/google/android/gms/internal/ads/zzbbt;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdly:Lcom/google/android/gms/internal/ads/zzbbt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbt;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaxt;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxt;->zzba(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaxt;Lcom/google/android/gms/internal/ads/zzaxt$zzb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxt;->zza(Lcom/google/android/gms/internal/ads/zzaxt$zzb;)V

    return-void
.end method

.method private final zzba(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlr:I

    return-void
.end method

.method public static zzzu()Lcom/google/android/gms/internal/ads/zzaxt$zza;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;

    sget v1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdue:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo$zza;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaxt$zza;

    return-object v0
.end method

.method static synthetic zzzv()Lcom/google/android/gms/internal/ads/zzaxt;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxu;->zzakf:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxt;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxt$zza;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxt$zza;-><init>(Lcom/google/android/gms/internal/ads/zzaxu;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzdlq"

    aput-object v2, v0, v1

    const-string v1, "zzdlr"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "zzdly"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/google/android/gms/internal/ads/zzaxt$zzb;

    aput-object v2, v0, v1

    const-string v1, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzaxt;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxt;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_0

    const-class v1, Lcom/google/android/gms/internal/ads/zzaxt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxt;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaxt;->zzdlz:Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxt;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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
