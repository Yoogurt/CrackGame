.class public final Lcom/google/android/gms/internal/ads/zzamn;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static zzcua:Lcom/google/android/gms/internal/ads/zzamn;


# instance fields
.field zzcpq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamn;->zzcua:Lcom/google/android/gms/internal/ads/zzamn;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzsb()Lcom/google/android/gms/internal/ads/zzamn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamn;->zzcua:Lcom/google/android/gms/internal/ads/zzamn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamn;->zzcua:Lcom/google/android/gms/internal/ads/zzamn;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzamn;->zzcua:Lcom/google/android/gms/internal/ads/zzamn;

    return-object v0
.end method
