.class final Lcom/google/android/gms/internal/drive/zzcd;
.super Lcom/google/android/gms/internal/drive/zzav;


# instance fields
.field private final synthetic zzfj:Lcom/google/android/gms/internal/drive/zzei;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzcb;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/drive/zzei;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzcd;->zzfj:Lcom/google/android/gms/internal/drive/zzei;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzav;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzeo;

    new-instance v1, Lcom/google/android/gms/internal/drive/zzgo;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzcd;->zzfj:Lcom/google/android/gms/internal/drive/zzei;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/drive/zzgo;-><init>(Lcom/google/android/gms/internal/drive/zzei;)V

    new-instance v2, Lcom/google/android/gms/internal/drive/zzgs;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/drive/zzgs;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgo;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
