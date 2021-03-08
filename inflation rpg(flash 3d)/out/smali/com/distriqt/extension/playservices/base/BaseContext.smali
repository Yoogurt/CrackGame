.class public Lcom/distriqt/extension/playservices/base/BaseContext;
.super Lcom/adobe/fre/FREContext;
.source "BaseContext.java"


# static fields
.field public static IMPLEMENTATION:Ljava/lang/String;

.field public static VERSION:Ljava/lang/String;


# instance fields
.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "1.0"

    sput-object v0, Lcom/distriqt/extension/playservices/base/BaseContext;->VERSION:Ljava/lang/String;

    .line 39
    const-string v0, "Android"

    sput-object v0, Lcom/distriqt/extension/playservices/base/BaseContext;->IMPLEMENTATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/distriqt/extension/playservices/base/BaseContext;->v:Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 46
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
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "isSupported"

    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "version"

    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/VersionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/VersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "implementation"

    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/ImplementationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/ImplementationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "isGooglePlayServicesAvailable"

    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/availability/IsGooglePlayServicesAvailableFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/availability/IsGooglePlayServicesAvailableFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "isUserRecoverableError"

    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/availability/IsUserRecoverableErrorFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/availability/IsUserRecoverableErrorFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "showErrorDialog"

    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "showErrorNotification"

    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorNotificationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorNotificationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "getErrorString"

    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/availability/GetErrorStringFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/availability/GetErrorStringFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "attemptResolution"

    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/availability/AttemptResolutionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/availability/AttemptResolutionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-object v0
.end method
