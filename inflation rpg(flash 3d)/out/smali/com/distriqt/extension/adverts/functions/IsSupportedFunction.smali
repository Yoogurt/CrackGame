.class public Lcom/distriqt/extension/adverts/functions/IsSupportedFunction;
.super Ljava/lang/Object;
.source "IsSupportedFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 35
    const/4 v2, 0x0

    .line 38
    .local v2, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    const/4 v1, 0x1

    .line 40
    .local v1, "isSupported":Z
    :goto_0
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 46
    .end local v1    # "isSupported":Z
    :goto_1
    return-object v2

    .line 38
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-static {p1, v0}, Lcom/distriqt/extension/adverts/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
