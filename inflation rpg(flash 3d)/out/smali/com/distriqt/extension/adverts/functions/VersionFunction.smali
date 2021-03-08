.class public Lcom/distriqt/extension/adverts/functions/VersionFunction;
.super Ljava/lang/Object;
.source "VersionFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 37
    .local v1, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    sget-object v2, Lcom/distriqt/extension/adverts/AdvertsContext;->VERSION:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-static {p1, v0}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
