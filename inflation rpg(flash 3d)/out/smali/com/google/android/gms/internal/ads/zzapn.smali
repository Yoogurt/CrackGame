.class public final Lcom/google/android/gms/internal/ads/zzapn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzcyf:Landroid/content/Context;

.field private final zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

.field private final zzcyh:Landroid/view/ViewGroup;

.field private zzcyi:Lcom/google/android/gms/internal/ads/zzapi;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzapw;Lcom/google/android/gms/internal/ads/zzapi;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyf:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyh:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzaqw;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzapn;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzapw;Lcom/google/android/gms/internal/ads/zzapi;)V

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapi;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyh:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapi;->pause()V

    :cond_0
    return-void
.end method

.method public final zza(IIIIIZLcom/google/android/gms/internal/ads/zzapv;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzapw;->zztp()Lcom/google/android/gms/internal/ads/zznw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznw;->zzji()Lcom/google/android/gms/internal/ads/zznx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzapw;->zztn()Lcom/google/android/gms/internal/ads/zznv;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "vpr2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zznq;->zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzapw;->zztp()Lcom/google/android/gms/internal/ads/zznw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zznw;->zzji()Lcom/google/android/gms/internal/ads/zznx;

    move-result-object v5

    move v3, p5

    move v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzapi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapw;IZLcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzapv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyh:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    const/4 v2, 0x0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzapi;->zzd(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzapw;->zzah(Z)V

    goto :goto_0
.end method

.method public final zze(IIII)V
    .locals 1

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzapi;->zzd(IIII)V

    :cond_0
    return-void
.end method

.method public final zzth()Lcom/google/android/gms/internal/ads/zzapi;
    .locals 1

    const-string v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzcyi:Lcom/google/android/gms/internal/ads/zzapi;

    return-object v0
.end method
