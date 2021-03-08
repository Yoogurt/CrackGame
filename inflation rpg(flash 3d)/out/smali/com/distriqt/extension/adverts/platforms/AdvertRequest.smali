.class public Lcom/distriqt/extension/adverts/platforms/AdvertRequest;
.super Ljava/lang/Object;
.source "AdvertRequest.java"


# instance fields
.field public birthday:Ljava/util/Date;

.field public gender:I

.field public isDesignedForFamilies:I

.field public keywords:[Ljava/lang/String;

.field public networkExtras:Landroid/os/Bundle;

.field public tagForChildDirectedTreatment:I

.field public testDevices:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->gender:I

    .line 25
    iput-object v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->birthday:Ljava/util/Date;

    .line 32
    iput v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->tagForChildDirectedTreatment:I

    .line 34
    iput v0, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->isDesignedForFamilies:I

    .line 37
    iput-object v1, p0, Lcom/distriqt/extension/adverts/platforms/AdvertRequest;->networkExtras:Landroid/os/Bundle;

    return-void
.end method
