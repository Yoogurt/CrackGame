.class final Lcom/google/android/gms/internal/drive/zzdc;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall",
        "<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfo:Lcom/google/android/gms/drive/DriveResource;

.field private final synthetic zzfy:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/DriveResource;Z)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdc;->zzfo:Lcom/google/android/gms/drive/DriveResource;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzdc;->zzfy:Z

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzeo;

    new-instance v1, Lcom/google/android/gms/internal/drive/zzek;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzdc;->zzfo:Lcom/google/android/gms/drive/DriveResource;

    invoke-interface {v2}, Lcom/google/android/gms/drive/DriveResource;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/drive/zzdc;->zzfy:Z

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/drive/zzek;-><init>(Lcom/google/android/gms/drive/DriveId;Z)V

    new-instance v2, Lcom/google/android/gms/internal/drive/zzhj;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/drive/zzhj;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzek;Lcom/google/android/gms/internal/drive/zzeq;)V

    return-void
.end method
