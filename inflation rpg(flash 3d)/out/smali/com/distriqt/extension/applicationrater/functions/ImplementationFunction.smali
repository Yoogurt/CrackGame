.class public Lcom/distriqt/extension/applicationrater/functions/ImplementationFunction;
.super Ljava/lang/Object;
.source "ImplementationFunction.java"

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
    .locals 3
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 35
    .local v1, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    sget-object v2, Lcom/distriqt/extension/applicationrater/ApplicationRaterContext;->IMPLEMENTATION:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-static {p1, v0}, Lcom/distriqt/extension/applicationrater/util/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Exception;)V

    goto :goto_0
.end method
