.class final Lcom/google/android/gms/internal/games/zzdj;
.super Lcom/google/android/gms/internal/games/zzdq;


# instance fields
.field private final synthetic zzew:Ljava/lang/String;

.field private final synthetic zzkk:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzdb;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzdj;->zzew:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/games/zzdj;->zzkk:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/games/zzdq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzdc;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzdj;->zzew:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzdj;->zzkk:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/zze;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
