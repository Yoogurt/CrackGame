.class public Lcom/google/android/gms/internal/ads/zzae;
.super Ljava/lang/Exception;


# instance fields
.field private zzad:J

.field private final zzbj:Lcom/google/android/gms/internal/ads/zzp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzae;->zzbj:Lcom/google/android/gms/internal/ads/zzp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzae;->zzbj:Lcom/google/android/gms/internal/ads/zzp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzae;->zzbj:Lcom/google/android/gms/internal/ads/zzp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzae;->zzbj:Lcom/google/android/gms/internal/ads/zzp;

    return-void
.end method


# virtual methods
.method final zza(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzae;->zzad:J

    return-void
.end method
