.class public final Lcom/google/android/gms/internal/clearcut/zzt$zza;
.super Lcom/google/android/gms/internal/clearcut/zzcg;

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/zzdq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/zzt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/clearcut/zzt$zza$zza;,
        Lcom/google/android/gms/internal/clearcut/zzt$zza$zzd;,
        Lcom/google/android/gms/internal/clearcut/zzt$zza$zzb;,
        Lcom/google/android/gms/internal/clearcut/zzt$zza$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/clearcut/zzcg",
        "<",
        "Lcom/google/android/gms/internal/clearcut/zzt$zza;",
        "Lcom/google/android/gms/internal/clearcut/zzt$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/clearcut/zzdq;"
    }
.end annotation


# static fields
.field private static final zzbf:Lcom/google/android/gms/internal/clearcut/zzt$zza;

.field private static volatile zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/zzdz",
            "<",
            "Lcom/google/android/gms/internal/clearcut/zzt$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbb:I

.field private zzbc:I

.field private zzbd:I

.field private zzbe:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzt$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/zzt$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzt$zza;->zzbf:Lcom/google/android/gms/internal/clearcut/zzt$zza;

    const-class v0, Lcom/google/android/gms/internal/clearcut/zzt$zza;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzt$zza;->zzbf:Lcom/google/android/gms/internal/clearcut/zzt$zza;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzcg;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/zzcg;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/zzcg;-><init>()V

    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/clearcut/zzt$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzt$zza;->zzbf:Lcom/google/android/gms/internal/clearcut/zzt$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzu;->zzba:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzt$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/zzt$zza;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzt$zza$zza;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzt$zza$zza;-><init>(Lcom/google/android/gms/internal/clearcut/zzu;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzbb"

    aput-object v2, v0, v1

    const-string v1, "zzbc"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzt$zza$zzc;->zzd()Lcom/google/android/gms/internal/clearcut/zzck;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "zzbd"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzt$zza$zzb;->zzd()Lcom/google/android/gms/internal/clearcut/zzck;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "zzbe"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzt$zza$zzd;->zzd()Lcom/google/android/gms/internal/clearcut/zzck;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000c\u0001\u0003\u000c\u0002"

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzt$zza;->zzbf:Lcom/google/android/gms/internal/clearcut/zzt$zza;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/clearcut/zzt$zza;->zza(Lcom/google/android/gms/internal/clearcut/zzdo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzt$zza;->zzbf:Lcom/google/android/gms/internal/clearcut/zzt$zza;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzt$zza;->zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;

    if-nez v0, :cond_0

    const-class v1, Lcom/google/android/gms/internal/clearcut/zzt$zza;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzt$zza;->zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzcg$zzb;

    sget-object v2, Lcom/google/android/gms/internal/clearcut/zzt$zza;->zzbf:Lcom/google/android/gms/internal/clearcut/zzt$zza;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/clearcut/zzcg$zzb;-><init>(Lcom/google/android/gms/internal/clearcut/zzcg;)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzt$zza;->zzbg:Lcom/google/android/gms/internal/clearcut/zzdz;

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
