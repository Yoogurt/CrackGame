.class public Lcom/distriqt/extension/adverts/platforms/ConsentOptions;
.super Ljava/lang/Object;
.source "ConsentOptions.java"


# instance fields
.field public privacyUrl:Ljava/lang/String;

.field public showAdFreeOption:Z

.field public showNonPersonalisedAdsOption:Z

.field public showPersonalisedAdsOption:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;->privacyUrl:Ljava/lang/String;

    .line 22
    iput-boolean v1, p0, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;->showNonPersonalisedAdsOption:Z

    .line 23
    iput-boolean v1, p0, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;->showPersonalisedAdsOption:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/distriqt/extension/adverts/platforms/ConsentOptions;->showAdFreeOption:Z

    return-void
.end method
