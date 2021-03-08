.class public Lcom/distriqt/extension/applicationrater/functions/GetInstallerStoreFunction;
.super Ljava/lang/Object;
.source "GetInstallerStoreFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 31
    const/4 v4, 0x0

    .line 34
    .local v4, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    const-string v3, "unknown"

    .line 35
    .local v3, "installerStore":Ljava/lang/String;
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;

    move-object v1, v0

    .line 36
    .local v1, "ctx":Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;
    iget-boolean v5, v1, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->v:Z

    if-eqz v5, :cond_0

    .line 38
    invoke-virtual {v1}, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->controller()Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->getInstallerStore()Ljava/lang/String;

    move-result-object v3

    .line 40
    :cond_0
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 46
    .end local v1    # "ctx":Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;
    .end local v3    # "installerStore":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 42
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/extension/applicationrater/util/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Exception;)V

    goto :goto_0
.end method
