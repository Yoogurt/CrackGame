.class final Lcom/google/android/gms/internal/drive/zzay;
.super Lcom/google/android/gms/internal/drive/zzav;


# instance fields
.field private final synthetic zzej:Lcom/google/android/gms/internal/drive/zzee;

.field private final synthetic zzek:Lcom/google/android/gms/internal/drive/zzgm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzaw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/drive/zzgm;Lcom/google/android/gms/internal/drive/zzee;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzay;->zzek:Lcom/google/android/gms/internal/drive/zzgm;

    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzay;->zzej:Lcom/google/android/gms/internal/drive/zzee;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzav;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzeo;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzay;->zzek:Lcom/google/android/gms/internal/drive/zzgm;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzay;->zzej:Lcom/google/android/gms/internal/drive/zzee;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/internal/drive/zzgs;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/drive/zzgs;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgm;Lcom/google/android/gms/internal/drive/zzes;Ljava/lang/String;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
