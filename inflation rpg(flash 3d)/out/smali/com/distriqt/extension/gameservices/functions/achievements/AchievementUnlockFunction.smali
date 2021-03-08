.class public Lcom/distriqt/extension/gameservices/functions/achievements/AchievementUnlockFunction;
.super Ljava/lang/Object;
.source "AchievementUnlockFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementUnlockFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementUnlockFunction;->TAG:Ljava/lang/String;

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
    .locals 6
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 33
    const/4 v4, 0x0

    .line 36
    .local v4, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    move-object v2, v0

    .line 37
    .local v2, "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "achievementId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->isInitialised()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v5

    iget-object v5, v5, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v5}, Lcom/distriqt/extension/gameservices/services/IGameService;->achievements()Lcom/distriqt/extension/gameservices/services/IAchievements;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 39
    invoke-virtual {v2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    move-result-object v5

    iget-object v5, v5, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->service:Lcom/distriqt/extension/gameservices/services/IGameService;

    invoke-interface {v5}, Lcom/distriqt/extension/gameservices/services/IGameService;->achievements()Lcom/distriqt/extension/gameservices/services/IAchievements;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/distriqt/extension/gameservices/services/IAchievements;->achievementUnlock(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "achievementId":Ljava/lang/String;
    .end local v2    # "ctx":Lcom/distriqt/extension/gameservices/GameServicesContext;
    :cond_0
    :goto_0
    return-object v4

    .line 41
    :catch_0
    move-exception v3

    .line 43
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {p1, v3}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
