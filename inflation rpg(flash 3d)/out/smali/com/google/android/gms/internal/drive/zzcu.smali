.class final Lcom/google/android/gms/internal/drive/zzcu;
.super Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/RegisterListenerMethod",
        "<",
        "Lcom/google/android/gms/internal/drive/zzaw;",
        "Lcom/google/android/gms/drive/events/OpenFileCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfq:Lcom/google/android/gms/drive/DriveFile;

.field private final synthetic zzfr:I

.field private final synthetic zzfs:Lcom/google/android/gms/internal/drive/zzg;

.field private final synthetic zzft:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field private final synthetic zzfu:Lcom/google/android/gms/internal/drive/zzch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/drive/DriveFile;ILcom/google/android/gms/internal/drive/zzg;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzcu;->zzfu:Lcom/google/android/gms/internal/drive/zzch;

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzcu;->zzfq:Lcom/google/android/gms/drive/DriveFile;

    iput p4, p0, Lcom/google/android/gms/internal/drive/zzcu;->zzfr:I

    iput-object p5, p0, Lcom/google/android/gms/internal/drive/zzcu;->zzfs:Lcom/google/android/gms/internal/drive/zzg;

    iput-object p6, p0, Lcom/google/android/gms/internal/drive/zzcu;->zzft:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    return-void
.end method


# virtual methods
.method protected final synthetic registerListener(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    new-instance v1, Lcom/google/android/gms/internal/drive/zzgd;

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzcu;->zzfq:Lcom/google/android/gms/drive/DriveFile;

    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveFile;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzcu;->zzfr:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/drive/zzgd;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzaw;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzeo;

    new-instance v2, Lcom/google/android/gms/internal/drive/zzdk;

    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzcu;->zzfu:Lcom/google/android/gms/internal/drive/zzch;

    iget-object v4, p0, Lcom/google/android/gms/internal/drive/zzcu;->zzfs:Lcom/google/android/gms/internal/drive/zzg;

    iget-object v5, p0, Lcom/google/android/gms/internal/drive/zzcu;->zzft:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/drive/zzdk;-><init>(Lcom/google/android/gms/internal/drive/zzch;Lcom/google/android/gms/drive/events/ListenerToken;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzeo;->zza(Lcom/google/android/gms/internal/drive/zzgd;Lcom/google/android/gms/internal/drive/zzeq;)Lcom/google/android/gms/internal/drive/zzec;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzcu;->zzfs:Lcom/google/android/gms/internal/drive/zzg;

    iget-object v0, v0, Lcom/google/android/gms/internal/drive/zzec;->zzgq:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ICancelToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/ICancelToken;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/drive/zzg;->setCancelToken(Lcom/google/android/gms/common/internal/ICancelToken;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
