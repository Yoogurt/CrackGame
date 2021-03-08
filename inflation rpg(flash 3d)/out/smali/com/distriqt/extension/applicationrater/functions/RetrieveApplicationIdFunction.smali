.class public Lcom/distriqt/extension/applicationrater/functions/RetrieveApplicationIdFunction;
.super Ljava/lang/Object;
.source "RetrieveApplicationIdFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 31
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;

    move-object v1, v0

    .line 32
    .local v1, "ctx":Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;
    iget-boolean v2, v1, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->v:Z

    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {v1}, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->controller()Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->retrieveApplicationId()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "ctx":Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 37
    :catch_0
    move-exception v2

    goto :goto_0
.end method
