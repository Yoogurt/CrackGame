.class final Lcom/google/android/gms/internal/auth/zzbo;
.super Lcom/google/android/gms/internal/auth/zzbm;


# instance fields
.field private final synthetic zzec:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/zzbn;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/zzbo;->zzec:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzbm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zzd(Landroid/content/Context;Lcom/google/android/gms/internal/auth/zzbk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/auth/zzbp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzbp;-><init>(Lcom/google/android/gms/internal/auth/zzbo;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzbo;->zzec:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/auth/zzbk;->zzd(Lcom/google/android/gms/internal/auth/zzbi;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V

    return-void
.end method
