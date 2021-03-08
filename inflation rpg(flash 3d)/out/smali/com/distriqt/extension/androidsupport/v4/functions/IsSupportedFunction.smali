.class public Lcom/distriqt/extension/androidsupport/v4/functions/IsSupportedFunction;
.super Ljava/lang/Object;
.source "IsSupportedFunction.java"

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
    .locals 2
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 35
    .local v0, "result":Lcom/adobe/fre/FREObject;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 37
    :catch_0
    move-exception v1

    goto :goto_0
.end method
