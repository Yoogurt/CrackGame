.class public Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;
.super Lcom/adobe/fre/FREContext;
.source "ApplicationRaterContext.java"

# interfaces
.implements Lcom/distriqt/core/utils/IExtensionContext;


# static fields
.field public static IMPLEMENTATION:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;

.field public static VERSION:Ljava/lang/String;


# instance fields
.field private _controller:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->TAG:Ljava/lang/String;

    .line 42
    const-string v0, "1.4"

    sput-object v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->VERSION:Ljava/lang/String;

    .line 43
    const-string v0, "Android"

    sput-object v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->IMPLEMENTATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->v:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->_controller:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    return-void
.end method


# virtual methods
.method public controller()Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->_controller:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->_controller:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->_controller:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    return-object v0
.end method

.method public dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->_controller:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->_controller:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    invoke-virtual {v0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->dispose()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->_controller:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    .line 59
    :cond_0
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
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "isSupported"

    new-instance v2, Lcom/distriqt/extension/applicationrater/functions/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/applicationrater/functions/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "version"

    new-instance v2, Lcom/distriqt/extension/applicationrater/functions/VersionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/applicationrater/functions/VersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "implementation"

    new-instance v2, Lcom/distriqt/extension/applicationrater/functions/ImplementationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/applicationrater/functions/ImplementationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "vV2"

    new-instance v2, Lcom/distriqt/extension/applicationrater/functions/VDKFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/applicationrater/functions/VDKFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "showRateDialog"

    new-instance v2, Lcom/distriqt/extension/applicationrater/functions/ShowRateDialogFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/applicationrater/functions/ShowRateDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "rate"

    new-instance v2, Lcom/distriqt/extension/applicationrater/functions/RateFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/applicationrater/functions/RateFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "getInstallerStore"

    new-instance v2, Lcom/distriqt/extension/applicationrater/functions/GetInstallerStoreFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/applicationrater/functions/GetInstallerStoreFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "retrieveApplicationId"

    new-instance v2, Lcom/distriqt/extension/applicationrater/functions/RetrieveApplicationIdFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/applicationrater/functions/RetrieveApplicationIdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "review_isSupported"

    new-instance v2, Lcom/distriqt/extension/applicationrater/functions/review/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/applicationrater/functions/review/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "review_requestReview"

    new-instance v2, Lcom/distriqt/extension/applicationrater/functions/review/RequestReviewFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/applicationrater/functions/review/RequestReviewFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-object v0
.end method
