.class public Lcom/distriqt/extension/gameservices/functions/VDKFunction;
.super Ljava/lang/Object;
.source "VDKFunction.java"

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
    const/4 v4, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "result":Lcom/adobe/fre/FREObject;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 35
    .local v3, "success":Ljava/lang/Boolean;
    :try_start_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .local v1, "key":Ljava/lang/String;
    const/4 v0, -0x1

    .line 39
    .local v0, "extensionId":I
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 40
    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v0

    .line 42
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lcom/distriqt/core/utils/VDK;->v(Landroid/app/Activity;Ljava/lang/String;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 47
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 54
    check-cast p1, Lcom/distriqt/extension/gameservices/GameServicesContext;

    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p1, Lcom/distriqt/extension/gameservices/GameServicesContext;->v:Z

    .line 56
    .end local v0    # "extensionId":I
    .end local v1    # "key":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 49
    .restart local p1    # "context":Lcom/adobe/fre/FREContext;
    :catch_0
    move-exception v4

    .line 54
    check-cast p1, Lcom/distriqt/extension/gameservices/GameServicesContext;

    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p1, Lcom/distriqt/extension/gameservices/GameServicesContext;->v:Z

    goto :goto_1

    .restart local p1    # "context":Lcom/adobe/fre/FREContext;
    :catchall_0
    move-exception v4

    check-cast p1, Lcom/distriqt/extension/gameservices/GameServicesContext;

    .end local p1    # "context":Lcom/adobe/fre/FREContext;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p1, Lcom/distriqt/extension/gameservices/GameServicesContext;->v:Z

    throw v4

    .line 44
    .restart local v0    # "extensionId":I
    .restart local v1    # "key":Ljava/lang/String;
    .restart local p1    # "context":Lcom/adobe/fre/FREContext;
    :catch_1
    move-exception v4

    goto :goto_0
.end method
