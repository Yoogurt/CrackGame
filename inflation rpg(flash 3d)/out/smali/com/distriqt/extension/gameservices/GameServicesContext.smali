.class public Lcom/distriqt/extension/gameservices/GameServicesContext;
.super Lcom/adobe/fre/FREContext;
.source "GameServicesContext.java"

# interfaces
.implements Lcom/distriqt/core/utils/IExtensionContext;
.implements Lcom/adobe/air/ActivityResultCallback;
.implements Lcom/adobe/air/StateChangeCallback;


# static fields
.field public static IMPLEMENTATION:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field public static VERSION:Ljava/lang/String;


# instance fields
.field private _aaw:Lcom/adobe/air/AndroidActivityWrapper;

.field private _listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/core/ActivityStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private _serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/distriqt/extension/gameservices/GameServicesContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/GameServicesContext;->TAG:Ljava/lang/String;

    .line 109
    const-string v0, "4.0"

    sput-object v0, Lcom/distriqt/extension/gameservices/GameServicesContext;->VERSION:Ljava/lang/String;

    .line 110
    const-string v0, "Android"

    sput-object v0, Lcom/distriqt/extension/gameservices/GameServicesContext;->IMPLEMENTATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->v:Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    .line 132
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 133
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 134
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_listeners:Ljava/util/ArrayList;

    .line 137
    return-void
.end method


# virtual methods
.method public dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/distriqt/extension/gameservices/GameServicesContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    iput-object v1, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_listeners:Ljava/util/ArrayList;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 151
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 152
    iput-object v1, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 154
    :cond_1
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "isSupported"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "version"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/VersionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/VersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "implementation"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/ImplementationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/ImplementationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "vV2"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/VDKFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/VDKFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "isServiceSupported"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/IsServiceSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/IsServiceSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "initialiseService"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/InitialiseServiceFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/InitialiseServiceFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "isSignedIn"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/IsSignedInFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/IsSignedInFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "signIn"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/SignInFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/SignInFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "signOut"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/SignOutFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/SignOutFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "getPlayer"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/GetPlayerFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/GetPlayerFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "loadPlayerIcon"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/LoadPlayerIconFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/LoadPlayerIconFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "players_isSupported"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/players/PlayersIsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/players/PlayersIsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "players_loadPlayerFriends"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/players/LoadPlayerFriendsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/players/LoadPlayerFriendsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "multiplayer_register"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/MultiplayerRegisterFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/MultiplayerRegisterFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "multiplayer_loadInvites"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/MultiplayerLoadInvitesFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/MultiplayerLoadInvitesFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "leaderboards_isSupported"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/leaderboards/LeaderboardsIsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/leaderboards/LeaderboardsIsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "leaderboards_loadLeaderboards"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadLeaderboardsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadLeaderboardsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "leaderboards_loadTopScores"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadTopScoresFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadTopScoresFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "leaderboards_loadScores"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadScoresFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadScoresFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "leaderboards_loadPlayerCenteredScores"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadPlayerCenteredScoresFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadPlayerCenteredScoresFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "leaderboards_loadPlayerScore"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadPlayerScoreFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/leaderboards/LoadPlayerScoreFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "leaderboards_submitScore"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/leaderboards/SubmitScoreFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/leaderboards/SubmitScoreFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "leaderboards_displayLeaderboardUI"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/leaderboards/DisplayLeaderboardUIFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/leaderboards/DisplayLeaderboardUIFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "achievements_isSupported"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementsIsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementsIsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "achievements_loadAchievements"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/achievements/LoadAchievementsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/achievements/LoadAchievementsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "achievements_canResetAchievements"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/achievements/CanResetAchievementsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/achievements/CanResetAchievementsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "achievements_resetAchievements"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/achievements/ResetAchievementsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/achievements/ResetAchievementsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "achievements_achievementReveal"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementRevealFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementRevealFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "achievements_achievementUnlock"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementUnlockFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementUnlockFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "achievements_achievementStepsSet"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementStepsSetFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementStepsSetFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "achievements_achievementStepsIncrement"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementStepsIncrementFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/achievements/AchievementStepsIncrementFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "achievements_displayAchievementsUI"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/achievements/DisplayAchievementsUIFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/achievements/DisplayAchievementsUIFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "savedGames_isSupported"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesIsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesIsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "savedGames_displaySavedGamesUI"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesDisplaySavedGamesUIFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesDisplaySavedGamesUIFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "savedGames_loadSavedGames"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesLoadSavedGamesFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesLoadSavedGamesFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "savedGames_createGame"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesCreateGameFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesCreateGameFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "savedGames_openGame"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesOpenGameFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesOpenGameFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "savedGames_saveGame"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesSaveGameFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesSaveGameFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "savedGames_deleteGame"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesDeleteGameFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesDeleteGameFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "savedGames_resolveConflict"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesResolveConflictFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/savedgames/SavedGamesResolveConflictFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "turnBasedMultiplayer_isSupported"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerIsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerIsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "turnBasedMultiplayer_displayCreateMatchUI"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerDisplayCreateMatchUIFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerDisplayCreateMatchUIFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "turnBasedMultiplayer_createMatch"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerCreateMatchFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerCreateMatchFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "turnBasedMultiplayer_loadMatches"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerLoadMatchesFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerLoadMatchesFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "turnBasedMultiplayer_loadMatch"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerLoadMatchFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerLoadMatchFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "turnBasedMultiplayer_acceptInvitation"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerAcceptInvitationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerAcceptInvitationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "turnBasedMultiplayer_declineInvitation"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerDeclineInvitationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerDeclineInvitationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v1, "turnBasedMultiplayer_dismissInvitation"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerDismissInvitationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerDismissInvitationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "turnBasedMultiplayer_match_takeTurn"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchTakeTurnFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchTakeTurnFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v1, "turnBasedMultiplayer_match_finishMatch"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchFinishMatchFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchFinishMatchFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v1, "turnBasedMultiplayer_match_cancelMatch"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchCancelMatchFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchCancelMatchFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "turnBasedMultiplayer_match_dismissMatch"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchDismissMatchFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchDismissMatchFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "turnBasedMultiplayer_match_leaveMatch"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchLeaveMatchFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchLeaveMatchFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "turnBasedMultiplayer_match_leaveMatchDuringTurn"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchLeaveMatchDuringTurnFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchLeaveMatchDuringTurnFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "turnBasedMultiplayer_match_rematch"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchRematchFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/turnbasedmultiplayer/TurnBasedMultiplayerMatchRematchFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "authUtil_isSupported"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/auth/AuthUtil_IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/auth/AuthUtil_IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "authUtil_getToken"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/auth/AuthUtil_GetTokenFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/auth/AuthUtil_GetTokenFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "authUtil_clearToken"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/auth/AuthUtil_ClearTokenFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/auth/AuthUtil_ClearTokenFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v1, "quests_isSupported"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/quests/QuestsIsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/quests/QuestsIsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "quests_loadQuests"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/quests/QuestsLoadQuestsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/quests/QuestsLoadQuestsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "quests_displayUI"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/quests/QuestsDisplayUIFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/quests/QuestsDisplayUIFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "quests_accept"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/quests/QuestsAcceptFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/quests/QuestsAcceptFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v1, "quests_claim"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/quests/QuestsClaimFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/quests/QuestsClaimFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "quests_listenForCompletion"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/quests/QuestsListenForCompletionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/quests/QuestsListenForCompletionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "quests_loadEvents"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/quests/QuestsLoadEventsFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/quests/QuestsLoadEventsFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "quests_incrementEvent"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/quests/QuestsIncrementEventFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/quests/QuestsIncrementEventFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "screenrecording_isSupported"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/recording/IsSupportedFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/recording/IsSupportedFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "screenrecording_checkAvailability"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/recording/CheckAvailabilityFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/recording/CheckAvailabilityFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "screenrecording_start"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/recording/StartFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/recording/StartFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v1, "screenrecording_stop"

    new-instance v2, Lcom/distriqt/extension/gameservices/functions/recording/StopFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/gameservices/functions/recording/StopFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-object v0
.end method

.method public getManager()Lcom/distriqt/extension/gameservices/services/GameServicesManager;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    .line 268
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_listeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    return-object v0
.end method

.method public listeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/distriqt/core/ActivityStateListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 280
    sget-object v0, Lcom/distriqt/extension/gameservices/GameServicesContext;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult( %d, %d, ... )"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 285
    :cond_0
    return-void
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 2
    .param p1, "state"    # Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/distriqt/extension/gameservices/GameServicesContext$1;->$SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 301
    :pswitch_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    invoke-virtual {v0}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->onStart()V

    goto :goto_0

    .line 305
    :pswitch_1
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    invoke-virtual {v0}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->onStop()V

    goto :goto_0

    .line 309
    :pswitch_2
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    invoke-virtual {v0}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->onPause()V

    goto :goto_0

    .line 313
    :pswitch_3
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    invoke-virtual {v0}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->onRestart()V

    goto :goto_0

    .line 317
    :pswitch_4
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    invoke-virtual {v0}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->onDestroy()V

    goto :goto_0

    .line 321
    :pswitch_5
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/GameServicesContext;->_serviceManager:Lcom/distriqt/extension/gameservices/services/GameServicesManager;

    invoke-virtual {v0}, Lcom/distriqt/extension/gameservices/services/GameServicesManager;->onResume()V

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "paramConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 331
    sget-object v0, Lcom/distriqt/extension/gameservices/GameServicesContext;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    return-void
.end method
