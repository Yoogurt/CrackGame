.class final Lcom/google/android/gms/internal/drive/zzcz;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall",
        "<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/MetadataBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzds:Lcom/google/android/gms/drive/query/Query;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/query/Query;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzcz;->zzds:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
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

    new-instance v1, Lcom/google/android/gms/internal/drive/zzgk;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzcz;->zzds:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/drive/zzgk;-><init>(Lcom/google/android/gms/drive/query/Query;)V

    new-instance v2, Lcom/google/android/gms/internal/drive/zzhh;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/drive/zzhh;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgk;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
