.class final Lcom/google/android/gms/internal/drive/zzcw;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall",
        "<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/DriveContents;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdt:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;I)V
    .locals 1

    const/high16 v0, 0x20000000

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzcw;->zzdt:I

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

    new-instance v1, Lcom/google/android/gms/internal/drive/zzr;

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzcw;->zzdt:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/drive/zzr;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/drive/zzhc;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/drive/zzhc;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzr;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
