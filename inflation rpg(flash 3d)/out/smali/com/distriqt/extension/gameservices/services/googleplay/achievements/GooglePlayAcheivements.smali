.class public Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;
.super Lcom/distriqt/core/ActivityStateListener;
.source "GooglePlayAcheivements.java"

# interfaces
.implements Lcom/distriqt/extension/gameservices/services/IAchievements;


# static fields
.field public static final RC_DISPLAY_ACHIEVEMENTS_UI:I = 0x5dfe80b

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 51
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object v0
.end method


# virtual methods
.method public achievementReveal(Ljava/lang/String;)V
    .locals 5
    .param p1, "achievementId"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->TAG:Ljava/lang/String;

    const-string v2, "achievementReveal( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 130
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v1

    .line 133
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/AchievementsClient;->reveal(Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method public achievementStepsIncrement(Ljava/lang/String;I)V
    .locals 6
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "numSteps"    # I

    .prologue
    .line 167
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->TAG:Ljava/lang/String;

    const-string v2, "achievementStepsIncrement( %s, %d )"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 169
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v1

    .line 172
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/games/AchievementsClient;->increment(Ljava/lang/String;I)V

    .line 174
    :cond_0
    return-void
.end method

.method public achievementStepsSet(Ljava/lang/String;I)V
    .locals 6
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "numSteps"    # I

    .prologue
    .line 154
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->TAG:Ljava/lang/String;

    const-string v2, "achievementStepsSet( %s, %d )"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 156
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v1

    .line 159
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/games/AchievementsClient;->setSteps(Ljava/lang/String;I)V

    .line 161
    :cond_0
    return-void
.end method

.method public achievementUnlock(Ljava/lang/String;)V
    .locals 5
    .param p1, "achievementId"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->TAG:Ljava/lang/String;

    const-string v2, "achievementUnlock( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 143
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v1

    .line 146
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V

    .line 148
    :cond_0
    return-void
.end method

.method public canResetAchievements()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public displayAchievementsUI()V
    .locals 4

    .prologue
    .line 180
    sget-object v1, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->TAG:Ljava/lang/String;

    const-string v2, "displayAchievementsUI()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 182
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements$2;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements$2;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;)V

    .line 186
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 193
    :cond_0
    return-void
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public loadAchievements(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "forceReload"    # Ljava/lang/Boolean;

    .prologue
    .line 69
    sget-object v2, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->TAG:Ljava/lang/String;

    const-string v3, "loadAchievements( %s )"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "true"

    :goto_0
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 71
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/AchievementsClient;->load(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements$1;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements$1;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;)V

    .line 75
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 108
    :cond_0
    return-void

    .line 69
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_1
    const-string v1, "false"

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 204
    packed-switch p1, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "achievements:ui:closed"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x5dfe80b
        :pswitch_0
    .end packed-switch
.end method

.method public resetAchievements()V
    .locals 3

    .prologue
    .line 121
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->TAG:Ljava/lang/String;

    const-string v1, "resetAchievements()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-void
.end method
