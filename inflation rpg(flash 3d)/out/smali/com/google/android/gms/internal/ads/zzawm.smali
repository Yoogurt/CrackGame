.class public final Lcom/google/android/gms/internal/ads/zzawm;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzawm$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo",
        "<",
        "Lcom/google/android/gms/internal/ads/zzawm;",
        "Lcom/google/android/gms/internal/ads/zzawm$zza;",
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
            "Lcom/google/android/gms/internal/ads/zzawm;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdji:Lcom/google/android/gms/internal/ads/zzawm;


# instance fields
.field private zzdjh:Lcom/google/android/gms/internal/ads/zzaxn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawm;->zzdji:Lcom/google/android/gms/internal/ads/zzawm;

    const-class v0, Lcom/google/android/gms/internal/ads/zzawm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzawm;->zzdji:Lcom/google/android/gms/internal/ads/zzawm;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    return-void
.end method

.method public static zzxq()Lcom/google/android/gms/internal/ads/zzawm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawm;->zzdji:Lcom/google/android/gms/internal/ads/zzawm;

    return-object v0
.end method

.method static synthetic zzxr()Lcom/google/android/gms/internal/ads/zzawm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawm;->zzdji:Lcom/google/android/gms/internal/ads/zzawm;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawn;->zzakf:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawm;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawm$zza;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzawm$zza;-><init>(Lcom/google/android/gms/internal/ads/zzawn;)V

    goto :goto_0

    :pswitch_2
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzdjh"

    aput-object v2, v0, v1

    const-string v1, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0003\u0000\u0000\u0000\u0002\t"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzawm;->zzdji:Lcom/google/android/gms/internal/ads/zzawm;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzawm;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawm;->zzdji:Lcom/google/android/gms/internal/ads/zzawm;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawm;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_0

    const-class v1, Lcom/google/android/gms/internal/ads/zzawm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawm;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzawm;->zzdji:Lcom/google/android/gms/internal/ads/zzawm;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawm;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

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

.method public final zzxp()Lcom/google/android/gms/internal/ads/zzaxn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdjh:Lcom/google/android/gms/internal/ads/zzaxn;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxn;->zzzc()Lcom/google/android/gms/internal/ads/zzaxn;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdjh:Lcom/google/android/gms/internal/ads/zzaxn;

    goto :goto_0
.end method
