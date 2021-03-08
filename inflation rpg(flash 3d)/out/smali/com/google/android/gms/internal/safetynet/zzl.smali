.class final Lcom/google/android/gms/internal/safetynet/zzl;
.super Lcom/google/android/gms/internal/safetynet/zzk$zzb;


# instance fields
.field private final synthetic zzw:[B

.field private final synthetic zzx:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/safetynet/zzl;->zzw:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/safetynet/zzl;->zzx:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/safetynet/zzk$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzx;

    iget-object v2, p0, Lcom/google/android/gms/internal/safetynet/zzl;->zzaf:Lcom/google/android/gms/internal/safetynet/zzg;

    iget-object v3, p0, Lcom/google/android/gms/internal/safetynet/zzl;->zzw:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/safetynet/zzl;->zzx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.google.android.safetynet.ATTEST_API_KEY"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/safetynet/zzx;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/safetynet/zzx;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/safetynet/zzi;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/internal/safetynet/zzi;->zza(Lcom/google/android/gms/internal/safetynet/zzg;[BLjava/lang/String;)V

    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method
