.class final Lcom/google/android/gms/internal/drive/zzbo;
.super Lcom/google/android/gms/internal/drive/zzam;


# instance fields
.field private final synthetic zzdt:I

.field private final synthetic zzew:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field private final synthetic zzex:Lcom/google/android/gms/internal/drive/zzbn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzbn;Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzbo;->zzex:Lcom/google/android/gms/internal/drive/zzbn;

    iput p3, p0, Lcom/google/android/gms/internal/drive/zzbo;->zzdt:I

    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzbo;->zzew:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzam;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    new-instance v1, Lcom/google/android/gms/internal/drive/zzgd;

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzbo;->zzex:Lcom/google/android/gms/internal/drive/zzbn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/drive/zzdp;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/drive/zzbo;->zzdt:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/drive/zzgd;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v2, Lcom/google/android/gms/internal/drive/zzgf;

    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzbo;->zzew:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/drive/zzgf;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgd;Lcom/google/android/gms/internal/drive/zzeq;)Lcom/google/android/gms/internal/drive/zzec;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/drive/zzec;->zzgq:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ICancelToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/ICancelToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzbo;->setCancelToken(Lcom/google/android/gms/common/internal/ICancelToken;)V

    return-void
.end method
