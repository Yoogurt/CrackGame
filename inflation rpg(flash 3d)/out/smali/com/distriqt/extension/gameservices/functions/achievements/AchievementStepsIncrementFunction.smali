.class public Lcom/distriqt/extension/gameservices/functions/achievements/AchievementStepsIncrementFunction;
.super Ljava/lang/Object;
.source "AchievementStepsIncrementFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementStepsIncrementFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementStepsIncrementFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 33
    const/4 v5, 0x0

    .line 36
    .local v5, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v2, v0

    .line 37
    .local v2, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "achievementId":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    .line 39
    .local v4, "numSteps":I
    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v6

    iget-object v6, v6, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v6}, Lcom/distriqt/extension/gameservices/services/IGameService;->achievements()Lcom/distriqt/extension/gameservices/services/IAchievements;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 40
    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v6

    iget-object v6, v6, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v6}, Lcom/distriqt/extension/gameservices/services/IGameService;->achievements()Lcom/distriqt/extension/gameservices/services/IAchievements;

    move-result-object v6

    invoke-interface {v6, v1, v4}, Lcom/distriqt/extension/gameservices/services/IAchievements;->achievementStepsIncrement(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "achievementId":Ljava/lang/String;
    .end local v2    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    .end local v4    # "numSteps":I
    :cond_0
    :goto_0
    return-object v5

    .line 42
    :catch_0
    move-exception v3

    .line 44
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p1, v3}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
