.class public Lcom/distriqt/extension/applicationrater/functions/RateFunction;
.super Ljava/lang/Object;
.source "RateFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 36
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "appId":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "store":Ljava/lang/String;
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;

    move-object v2, v0

    .line 40
    .local v2, "ctx":Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;
    iget-boolean v5, v2, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->v:Z

    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {v2}, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->controller()Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->rate(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v5, Lcom/distriqt/extension/applicationrater/ApplicationRaterExtension;->context:Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;

    sget-object v6, Lcom/distriqt/extension/applicationrater/events/ApplicationRaterEvent;->SELECTED_RATE:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "ctx":Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;
    .end local v4    # "store":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 46
    :catch_0
    move-exception v3

    .line 48
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p1, v3}, Lcom/distriqt/extension/applicationrater/util/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Exception;)V

    goto :goto_0
.end method
