.class public Lcom/distriqt/extension/core/CoreContext;
.super Lcom/adobe/fre/FREContext;
.source "CoreContext.java"


# static fields
.field public static IMPLEMENTATION:Ljava/lang/String;

.field public static VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "1.0"

    sput-object v0, Lcom/distriqt/extension/core/CoreContext;->VERSION:Ljava/lang/String;

    .line 33
    const-string v0, "Android"

    sput-object v0, Lcom/distriqt/extension/core/CoreContext;->IMPLEMENTATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "isSupported"

    new-instance v2, Lcom/distriqt/extension/core/functions/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/core/functions/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "version"

    new-instance v2, Lcom/distriqt/extension/core/functions/VersionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/core/functions/VersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "implementation"

    new-instance v2, Lcom/distriqt/extension/core/functions/ImplementationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/core/functions/ImplementationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object v0
.end method
