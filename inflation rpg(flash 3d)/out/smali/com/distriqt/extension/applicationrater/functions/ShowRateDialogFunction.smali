.class public Lcom/distriqt/extension/applicationrater/functions/ShowRateDialogFunction;
.super Ljava/lang/Object;
.source "ShowRateDialogFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 32
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "appId":Ljava/lang/String;
    const/4 v1, 0x6

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "store":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "title":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "message":Ljava/lang/String;
    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, "rateLabel":Ljava/lang/String;
    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, "declineLabel":Ljava/lang/String;
    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, "laterLabel":Ljava/lang/String;
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;

    move-object v9, v0

    .line 42
    .local v9, "ctx":Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;
    iget-boolean v1, v9, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->v:Z

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v9}, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->controller()Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    move-result-object v1

    invoke-virtual/range {v1 .. v8}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->showRateDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "store":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "rateLabel":Ljava/lang/String;
    .end local v7    # "declineLabel":Ljava/lang/String;
    .end local v8    # "laterLabel":Ljava/lang/String;
    .end local v9    # "ctx":Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 48
    :catch_0
    move-exception v10

    .line 50
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {p1, v10}, Lcom/distriqt/extension/applicationrater/util/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Exception;)V

    goto :goto_0
.end method
