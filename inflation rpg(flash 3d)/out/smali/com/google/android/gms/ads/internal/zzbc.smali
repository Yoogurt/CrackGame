.class public final Lcom/google/android/gms/ads/internal/zzbc;
.super Lcom/google/android/gms/ads/internal/zzd;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpa;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

.field private zzaab:Lcom/google/android/gms/internal/ads/zzaqw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzaac:I

.field private zzaad:Lcom/google/android/gms/internal/ads/zzacm;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final zzaae:Ljava/lang/String;

.field private zzwl:Z

.field private zzzy:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzzz:Lcom/google/android/gms/internal/ads/zzaoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaoj",
            "<",
            "Lcom/google/android/gms/internal/ads/zzpb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/zzbc;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;Z)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/zzw;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaoj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzzz:Lcom/google/android/gms/internal/ads/zzaoj;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaac:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaae:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzzy:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzpb;)Lcom/google/android/gms/internal/ads/zzov;
    .locals 20

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzoq;

    if-eqz v4, :cond_3

    check-cast p0, Lcom/google/android/gms/internal/ads/zzoq;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzov;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->getHeadline()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->getImages()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->zzkg()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->getCallToAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->getAdvertiser()Ljava/lang/String;

    move-result-object v9

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->zzkc()Lcom/google/android/gms/internal/ads/zzoj;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->zzkd()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpw;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoj;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->zzka()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoq;->zzka()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    :goto_0
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzpd;

    if-eqz v4, :cond_1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzpd;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzoz;)V

    :cond_1
    return-object v3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/zzoo;

    if-eqz v4, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzoo;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzov;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->getHeadline()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->getImages()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->getCallToAction()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->getStarRating()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->getStore()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->getPrice()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->zzkc()Lcom/google/android/gms/internal/ads/zzoj;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->zzkd()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpw;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoj;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->zzka()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoo;->zzka()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzbc;Lcom/google/android/gms/ads/internal/zzbw;Lcom/google/android/gms/ads/internal/zzbw;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/zzbc;->zza(Lcom/google/android/gms/ads/internal/zzbw;Lcom/google/android/gms/ads/internal/zzbw;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/ads/internal/zzbw;Lcom/google/android/gms/ads/internal/zzbw;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzade:Lcom/google/android/gms/internal/ads/zzqw;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzade:Lcom/google/android/gms/internal/ads/zzqw;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzade:Lcom/google/android/gms/internal/ads/zzqw;

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadf:Lcom/google/android/gms/internal/ads/zzqz;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzadf:Lcom/google/android/gms/internal/ads/zzqz;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadf:Lcom/google/android/gms/internal/ads/zzqz;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadh:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzadh:Landroid/support/v4/util/SimpleArrayMap;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadh:Landroid/support/v4/util/SimpleArrayMap;

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadi:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzadi:Landroid/support/v4/util/SimpleArrayMap;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadi:Landroid/support/v4/util/SimpleArrayMap;

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadk:Lcom/google/android/gms/internal/ads/zzmu;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzadk:Lcom/google/android/gms/internal/ads/zzmu;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadk:Lcom/google/android/gms/internal/ads/zzmu;

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadj:Lcom/google/android/gms/internal/ads/zzpl;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzadj:Lcom/google/android/gms/internal/ads/zzpl;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadj:Lcom/google/android/gms/internal/ads/zzpl;

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzads:Ljava/util/List;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzads:Ljava/util/List;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzads:Ljava/util/List;

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacy:Lcom/google/android/gms/internal/ads/zzajj;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzacy:Lcom/google/android/gms/internal/ads/zzajj;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacy:Lcom/google/android/gms/internal/ads/zzajj;

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadt:Lcom/google/android/gms/internal/ads/zzaju;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzadt:Lcom/google/android/gms/internal/ads/zzaju;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadt:Lcom/google/android/gms/internal/ads/zzaju;

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacz:Lcom/google/android/gms/internal/ads/zzke;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzacz:Lcom/google/android/gms/internal/ads/zzke;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacz:Lcom/google/android/gms/internal/ads/zzke;

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzada:Lcom/google/android/gms/internal/ads/zzkh;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzada:Lcom/google/android/gms/internal/ads/zzkh;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzada:Lcom/google/android/gms/internal/ads/zzkh;

    :cond_a
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacx:Lcom/google/android/gms/internal/ads/zzaji;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzacx:Lcom/google/android/gms/internal/ads/zzaji;

    iput-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacx:Lcom/google/android/gms/internal/ads/zzaji;

    :cond_d
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzoo;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzbg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzbg;-><init>(Lcom/google/android/gms/ads/internal/zzbc;Lcom/google/android/gms/internal/ads/zzoo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzoq;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzbi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzbi;-><init>(Lcom/google/android/gms/ads/internal/zzbc;Lcom/google/android/gms/internal/ads/zzoq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzov;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzbh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzbh;-><init>(Lcom/google/android/gms/ads/internal/zzbc;Lcom/google/android/gms/internal/ads/zzov;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzpb;)Lcom/google/android/gms/internal/ads/zzov;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzbc;->zza(Lcom/google/android/gms/internal/ads/zzpb;)Lcom/google/android/gms/internal/ads/zzov;

    move-result-object v0

    return-object v0
.end method

.method private final zzcp()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzcfp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzcw()Lcom/google/android/gms/internal/ads/zzwy;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzceq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzcod:Lcom/google/android/gms/internal/ads/zzwy;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzdx()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzbc;->zzdr()Lcom/google/android/gms/internal/ads/zzacm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacm;->zzmc()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacp:Ljava/lang/String;

    return-object v0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaae:Ljava/lang/String;

    return-object v0
.end method

.method public final pause()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final resume()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaaw;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zznx;)V
    .locals 9

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaji;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaji;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaji;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzbd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzbd;-><init>(Lcom/google/android/gms/ads/internal/zzbc;Lcom/google/android/gms/internal/ads/zzaji;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaji;->zzcgs:Lcom/google/android/gms/internal/ads/zzaef;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzceg:I

    const/4 v0, 0x1

    if-ne v4, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput v6, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzadv:I

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzej()Lcom/google/android/gms/internal/ads/zzabl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzwh:Lcom/google/android/gms/internal/ads/zzxn;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzabl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzabm;Lcom/google/android/gms/internal/ads/zznx;)Lcom/google/android/gms/internal/ads/zzalc;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/ads/internal/zzbw;->zzacu:Lcom/google/android/gms/internal/ads/zzalc;

    const-string v1, "AdRenderer: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacu:Lcom/google/android/gms/internal/ads/zzalc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzceo:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "slots"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v6

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "ads"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v0, v6

    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_5

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Malformed native ad response"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzbc;->zzdx()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v6

    :goto_4
    if-ge v2, v4, :cond_7

    new-instance v0, Lcom/google/android/gms/ads/internal/zzbe;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzbe;-><init>(Lcom/google/android/gms/ads/internal/zzbc;ILorg/json/JSONArray;ILcom/google/android/gms/internal/ads/zzaji;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaki;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    move v2, v6

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    :try_start_1
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzanz;

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzbao:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzanz;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzpb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/zzbf;

    invoke-direct {v3, p0, v0, v2, v7}, Lcom/google/android/gms/ads/internal/zzbf;-><init>(Lcom/google/android/gms/ads/internal/zzbc;Lcom/google/android/gms/internal/ads/zzpb;ILjava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_7
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_7
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzod;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzox;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzb(Lcom/google/android/gms/internal/ads/zzox;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzoz;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzcob:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajm;->zzqd()Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzev;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzev;-><init>(Lcom/google/android/gms/internal/ads/zzoz;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzes;->zza(Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zzaqw;)V

    :cond_0
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajh;)Z
    .locals 23

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzbc;->zzd(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbw;->zzfo()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzceq:Z

    if-eqz v2, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/zzbc;->zzdx()V

    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzmu()Lcom/google/android/gms/internal/ads/zzyf;

    move-result-object v2

    move-object/from16 v22, v2

    :goto_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz v2, :cond_2

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzmo()Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    move-object/from16 v21, v2

    :goto_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzmp()Lcom/google/android/gms/internal/ads/zzyc;

    move-result-object v2

    move-object/from16 v20, v2

    :goto_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz v2, :cond_4

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzmt()Lcom/google/android/gms/internal/ads/zzqs;

    move-result-object v2

    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/zzbc;->zzc(Lcom/google/android/gms/internal/ads/zzajh;)Ljava/lang/String;

    move-result-object v18

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzadg:Lcom/google/android/gms/internal/ads/zzrl;

    if-eqz v3, :cond_7

    new-instance v3, Lcom/google/android/gms/internal/ads/zzov;

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->getHeadline()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->getImages()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v7

    :goto_4
    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->getCallToAction()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->getAdvertiser()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->getStarRating()D

    move-result-wide v10

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->getStore()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->getPrice()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v15

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :goto_5
    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v17

    invoke-interface/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzyf;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpw;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoj;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzoy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    move-object/from16 v6, p0

    move-object/from16 v8, v22

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzyf;Lcom/google/android/gms/internal/ads/zzpb;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzoz;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/zzbc;->zza(Lcom/google/android/gms/internal/ads/zzov;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajh;)Z

    move-result v2

    :goto_7
    return v2

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v22, v2

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v21, v2

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v20, v2

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    goto :goto_5

    :cond_7
    if-eqz v21, :cond_a

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzadg:Lcom/google/android/gms/internal/ads/zzrl;

    if-eqz v3, :cond_a

    new-instance v3, Lcom/google/android/gms/internal/ads/zzov;

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getHeadline()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getImages()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v7

    :goto_8
    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getCallToAction()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getStarRating()D

    move-result-wide v10

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getStore()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getPrice()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v15

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :goto_9
    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v17

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpw;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoj;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzoy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    move-object/from16 v6, p0

    move-object/from16 v8, v21

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzxz;Lcom/google/android/gms/internal/ads/zzpb;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzoz;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/zzbc;->zza(Lcom/google/android/gms/internal/ads/zzov;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v2

    const-string v3, "#007 Could not call remote method."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzakb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_8
    const/4 v7, 0x0

    goto :goto_8

    :cond_9
    const/16 v16, 0x0

    goto :goto_9

    :cond_a
    if-eqz v21, :cond_d

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzade:Lcom/google/android/gms/internal/ads/zzqw;

    if-eqz v3, :cond_d

    new-instance v3, Lcom/google/android/gms/internal/ads/zzoo;

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getHeadline()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getImages()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v7

    :goto_a
    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getCallToAction()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getStarRating()D

    move-result-wide v9

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getStore()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getPrice()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v15

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :goto_b
    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v17

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/internal/ads/zzoo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpw;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoj;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzoy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    move-object/from16 v6, p0

    move-object/from16 v8, v21

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzxz;Lcom/google/android/gms/internal/ads/zzpb;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzoo;->zzb(Lcom/google/android/gms/internal/ads/zzoz;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/zzbc;->zza(Lcom/google/android/gms/internal/ads/zzoo;)V

    goto/16 :goto_6

    :cond_b
    const/4 v7, 0x0

    goto :goto_a

    :cond_c
    const/16 v16, 0x0

    goto :goto_b

    :cond_d
    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzadg:Lcom/google/android/gms/internal/ads/zzrl;

    if-eqz v3, :cond_10

    new-instance v3, Lcom/google/android/gms/internal/ads/zzov;

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getHeadline()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getImages()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->zzkg()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->zzkg()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v7

    :goto_c
    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getCallToAction()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getAdvertiser()Ljava/lang/String;

    move-result-object v9

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v15

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :goto_d
    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v17

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpw;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoj;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzoy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    move-object/from16 v6, p0

    move-object/from16 v8, v20

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzyc;Lcom/google/android/gms/internal/ads/zzpb;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzoz;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/ads/internal/zzbc;->zza(Lcom/google/android/gms/internal/ads/zzov;)V

    goto/16 :goto_6

    :cond_e
    const/4 v7, 0x0

    goto :goto_c

    :cond_f
    const/16 v16, 0x0

    goto :goto_d

    :cond_10
    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzadf:Lcom/google/android/gms/internal/ads/zzqz;

    if-eqz v3, :cond_13

    new-instance v6, Lcom/google/android/gms/internal/ads/zzoq;

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getHeadline()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getImages()Ljava/util/List;

    move-result-object v8

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getBody()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->zzkg()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->zzkg()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v10

    :goto_e
    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getCallToAction()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getAdvertiser()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v15

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v16, v2

    :goto_f
    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzyc;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v17

    invoke-direct/range {v6 .. v18}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpw;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoj;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzoy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v8, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v10, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    move-object/from16 v9, p0

    move-object/from16 v11, v20

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzyc;Lcom/google/android/gms/internal/ads/zzpb;)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzoq;->zzb(Lcom/google/android/gms/internal/ads/zzoz;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gms/ads/internal/zzbc;->zza(Lcom/google/android/gms/internal/ads/zzoq;)V

    goto/16 :goto_6

    :cond_11
    const/4 v10, 0x0

    goto :goto_e

    :cond_12
    const/16 v16, 0x0

    goto :goto_f

    :cond_13
    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzadi:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzadi:Landroid/support/v4/util/SimpleArrayMap;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzqs;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    sget-object v3, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/zzbk;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/ads/internal/zzbk;-><init>(Lcom/google/android/gms/ads/internal/zzbc;Lcom/google/android/gms/internal/ads/zzqs;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_14
    const-string v2, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_15
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzcoj:Lcom/google/android/gms/internal/ads/zzpb;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzzy:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzzz:Lcom/google/android/gms/internal/ads/zzaoj;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaoj;->set(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_16
    instance-of v2, v3, Lcom/google/android/gms/internal/ads/zzoq;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzadg:Lcom/google/android/gms/internal/ads/zzrl;

    if-eqz v2, :cond_17

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzcoj:Lcom/google/android/gms/internal/ads/zzpb;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzbc;->zza(Lcom/google/android/gms/internal/ads/zzpb;)Lcom/google/android/gms/internal/ads/zzov;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/zzbc;->zza(Lcom/google/android/gms/internal/ads/zzov;)V

    goto/16 :goto_6

    :cond_17
    instance-of v2, v3, Lcom/google/android/gms/internal/ads/zzoq;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzadf:Lcom/google/android/gms/internal/ads/zzqz;

    if-eqz v2, :cond_18

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzcoj:Lcom/google/android/gms/internal/ads/zzpb;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzoq;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/zzbc;->zza(Lcom/google/android/gms/internal/ads/zzoq;)V

    goto/16 :goto_6

    :cond_18
    instance-of v2, v3, Lcom/google/android/gms/internal/ads/zzoo;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzadg:Lcom/google/android/gms/internal/ads/zzrl;

    if-eqz v2, :cond_19

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzcoj:Lcom/google/android/gms/internal/ads/zzpb;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzbc;->zza(Lcom/google/android/gms/internal/ads/zzpb;)Lcom/google/android/gms/internal/ads/zzov;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/zzbc;->zza(Lcom/google/android/gms/internal/ads/zzov;)V

    goto/16 :goto_6

    :cond_19
    instance-of v2, v3, Lcom/google/android/gms/internal/ads/zzoo;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzade:Lcom/google/android/gms/internal/ads/zzqw;

    if-eqz v2, :cond_1a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzcoj:Lcom/google/android/gms/internal/ads/zzpb;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzoo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/zzbc;->zza(Lcom/google/android/gms/internal/ads/zzoo;)V

    goto/16 :goto_6

    :cond_1a
    instance-of v2, v3, Lcom/google/android/gms/internal/ads/zzos;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzadi:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzadi:Landroid/support/v4/util/SimpleArrayMap;

    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/internal/ads/zzos;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzos;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    check-cast v3, Lcom/google/android/gms/internal/ads/zzos;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzos;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/zzbj;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v2, v1}, Lcom/google/android/gms/ads/internal/zzbj;-><init>(Lcom/google/android/gms/ads/internal/zzbc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajh;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_1b
    const-string v2, "No matching listener for retrieved native ad template."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    const/4 v2, 0x0

    goto/16 :goto_7
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzjj;Lcom/google/android/gms/internal/ads/zzajh;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvv:Lcom/google/android/gms/ads/internal/zzbl;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbl;->zzdz()Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjj;Lcom/google/android/gms/internal/ads/zznx;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzbc;->zzdq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaac:I

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/ads/zzjj;Lcom/google/android/gms/internal/ads/zznx;I)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "Error initializing webview."

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzane;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Ads"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzoz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoz;->zzkl()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzd;->zzb(Lcom/google/android/gms/internal/ads/zzajh;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final zzb(Z)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zzd;->zzb(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzwl:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbcb:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzbc;->zzdt()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzbc;->zzcp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaab:Lcom/google/android/gms/internal/ads/zzaqw;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaab:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaab:Lcom/google/android/gms/internal/ads/zzaqw;

    move-object v2, v0

    :goto_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfa()Lcom/google/android/gms/internal/ads/zzaan;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaan;->zzi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzang;->zzcve:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzcvf:I

    const/16 v3, 0x17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfa()Lcom/google/android/gms/internal/ads/zzaan;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    const-string v3, ""

    const-string v4, "javascript"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaan;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzwb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzwb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfa()Lcom/google/android/gms/internal/ads/zzaan;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzwb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaan;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    const-string v5, "javascript"

    move-object v2, v0

    goto :goto_0

    :cond_4
    move-object v2, v5

    goto :goto_0
.end method

.method protected final zzbq()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zza;->zzb(Z)V

    return-void
.end method

.method protected final zzc(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzbc;->zzdx()V

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzd;->zzc(IZ)V

    return-void
.end method

.method public final zzcd()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    if-nez v1, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzcd()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    const/4 v0, 0x0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxq;->zzmo()Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxz;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlo;->zzio()Lcom/google/android/gms/internal/ads/zzlr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlr;->onVideoEnd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxq;->zzmp()Lcom/google/android/gms/internal/ads/zzyc;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzyc;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxq;->zzmt()Lcom/google/android/gms/internal/ads/zzqs;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzqs;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public final zzce()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzbty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbs()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzce()V

    goto :goto_0
.end method

.method public final zzcj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzbty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbr()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzcj()V

    goto :goto_0
.end method

.method public final zzcr()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzbc;->zzcp()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzwb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaab:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaab:Lcom/google/android/gms/internal/ads/zzaqw;

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    const-string v1, "onSdkImpression"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    goto :goto_1
.end method

.method public final zzcs()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzby()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaab:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaab:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaab:Lcom/google/android/gms/internal/ads/zzaqw;

    :cond_0
    return-void
.end method

.method public final zzct()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    :cond_0
    return-void
.end method

.method public final zzcu()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzbc;->zzcw()Lcom/google/android/gms/internal/ads/zzwy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzbc;->zzcw()Lcom/google/android/gms/internal/ads/zzwy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzwy;->zzbta:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzcv()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzbc;->zzcw()Lcom/google/android/gms/internal/ads/zzwy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzbc;->zzcw()Lcom/google/android/gms/internal/ads/zzwy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzwy;->zzbtb:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzads:Ljava/util/List;

    return-void
.end method

.method final zzdq()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarg;
        }
    .end annotation

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzbc;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string v0, "Initializing webview native ads utills"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzacq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaae:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzacq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzbc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzang;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaad:Lcom/google/android/gms/internal/ads/zzacm;

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzdr()Lcom/google/android/gms/internal/ads/zzacm;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaad:Lcom/google/android/gms/internal/ads/zzacm;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final zzds()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/ads/zzpb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzzz:Lcom/google/android/gms/internal/ads/zzaoj;

    return-object v0
.end method

.method public final zzdt()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajm;->zzqd()Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzes;->zza(Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/internal/ads/zzajh;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzaqw;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzwl:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzwl:Z

    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zzdu()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzwl:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajm;->zzqd()Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzh(Lcom/google/android/gms/internal/ads/zzajh;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zzdv()Landroid/support/v4/util/SimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzrf;",
            ">;"
        }
    .end annotation

    const-string v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzadi:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method public final zzdw()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zztm()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzadj:Lcom/google/android/gms/internal/ads/zzpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzadj:Lcom/google/android/gms/internal/ads/zzpl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpl;->zzbjr:Lcom/google/android/gms/internal/ads/zzmu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zztm()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadj:Lcom/google/android/gms/internal/ads/zzpl;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzpl;->zzbjr:Lcom/google/android/gms/internal/ads/zzmu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzarl;->zzb(Lcom/google/android/gms/internal/ads/zzmu;)V

    :cond_0
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzaqw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaaa:Lcom/google/android/gms/internal/ads/zzaqw;

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzaqw;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzaqw;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaab:Lcom/google/android/gms/internal/ads/zzaqw;

    return-void
.end method

.method protected final zzi(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zzc(IZ)V

    return-void
.end method

.method public final zzi(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzwb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfa()Lcom/google/android/gms/internal/ads/zzaan;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzwb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaan;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final zzj(I)V
    .locals 1

    const-string v0, "setMaxNumberOfAds must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzaac:I

    return-void
.end method

.method public final zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzrc;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzadh:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzadh:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzrc;

    goto :goto_0
.end method