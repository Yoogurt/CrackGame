.class public Lcom/distriqt/extension/adverts/AdvertsExtension;
.super Ljava/lang/Object;
.source "AdvertsExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static ID:Ljava/lang/String;

.field public static context:Lcom/distriqt/extension/adverts/AdvertsContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "com.distriqt.Adverts"

    sput-object v0, Lcom/distriqt/extension/adverts/AdvertsExtension;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lcom/distriqt/extension/adverts/AdvertsContext;

    invoke-direct {v0}, Lcom/distriqt/extension/adverts/AdvertsContext;-><init>()V

    sput-object v0, Lcom/distriqt/extension/adverts/AdvertsExtension;->context:Lcom/distriqt/extension/adverts/AdvertsContext;

    .line 32
    sget-object v0, Lcom/distriqt/extension/adverts/AdvertsExtension;->context:Lcom/distriqt/extension/adverts/AdvertsContext;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/distriqt/extension/adverts/AdvertsExtension;->context:Lcom/distriqt/extension/adverts/AdvertsContext;

    invoke-virtual {v0}, Lcom/distriqt/extension/adverts/AdvertsContext;->dispose()V

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/distriqt/extension/adverts/AdvertsExtension;->context:Lcom/distriqt/extension/adverts/AdvertsContext;

    .line 40
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
