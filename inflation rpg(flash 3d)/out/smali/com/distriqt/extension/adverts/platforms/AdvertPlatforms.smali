.class public Lcom/distriqt/extension/adverts/platforms/AdvertPlatforms;
.super Ljava/lang/Object;
.source "AdvertPlatforms.java"


# static fields
.field public static ADVERT_PLATFORM_ADMOB:Ljava/lang/String;

.field public static ADVERT_PLATFORM_DOUBLECLICK:Ljava/lang/String;

.field public static ADVERT_PLATFORM_IAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "admob"

    sput-object v0, Lcom/distriqt/extension/adverts/platforms/AdvertPlatforms;->ADVERT_PLATFORM_ADMOB:Ljava/lang/String;

    .line 23
    const-string v0, "doubleclick"

    sput-object v0, Lcom/distriqt/extension/adverts/platforms/AdvertPlatforms;->ADVERT_PLATFORM_DOUBLECLICK:Ljava/lang/String;

    .line 24
    const-string v0, "iAd"

    sput-object v0, Lcom/distriqt/extension/adverts/platforms/AdvertPlatforms;->ADVERT_PLATFORM_IAD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
