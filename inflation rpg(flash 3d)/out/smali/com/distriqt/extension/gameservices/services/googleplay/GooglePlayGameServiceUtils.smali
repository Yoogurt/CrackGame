.class public Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;
.super Ljava/lang/Object;
.source "GooglePlayGameServiceUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertLeaderboardCollection(Ljava/lang/String;)I
    .locals 2
    .param p0, "collection"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 124
    sget-object v1, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->COLLECTION_SOCIAL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    const/4 v0, 0x1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    sget-object v1, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->COLLECTION_PUBLIC:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static convertLeaderboardSpan(Ljava/lang/String;)I
    .locals 2
    .param p0, "span"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    .line 111
    sget-object v1, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->TIME_SPAN_DAILY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const/4 v0, 0x0

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    sget-object v1, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->TIME_SPAN_WEEKLY:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :cond_2
    sget-object v1, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->TIME_SPAN_ALL_TIME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 471
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 472
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "code"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 473
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 480
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 476
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 480
    const-string v2, "{}"

    goto :goto_0
.end method

.method public static formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5
    .param p0, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 442
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 443
    .local v2, "jsonObj":Lorg/json/JSONObject;
    if-eqz p0, :cond_1

    .line 445
    instance-of v3, p0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v3, :cond_0

    .line 446
    const-string v4, "code"

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 450
    :goto_0
    const-string v3, "message"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 463
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :goto_2
    return-object v3

    .line 448
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    const-string v3, "code"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 463
    const-string v3, "{}"

    goto :goto_2

    .line 454
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v3, "code"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 455
    const-string v3, "message"

    const-string v4, "Unknown error"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static fromAchievement(Lcom/google/android/gms/games/achievement/Achievement;)Lcom/distriqt/extension/gameservices/objects/Achievement;
    .locals 4
    .param p0, "a"    # Lcom/google/android/gms/games/achievement/Achievement;

    .prologue
    .line 153
    new-instance v0, Lcom/distriqt/extension/gameservices/objects/Achievement;

    invoke-direct {v0}, Lcom/distriqt/extension/gameservices/objects/Achievement;-><init>()V

    .line 156
    .local v0, "achievement":Lcom/distriqt/extension/gameservices/objects/Achievement;
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/distriqt/extension/gameservices/objects/Achievement;->id:Ljava/lang/String;

    .line 157
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/distriqt/extension/gameservices/objects/Achievement;->name:Ljava/lang/String;

    .line 158
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/distriqt/extension/gameservices/objects/Achievement;->description:Ljava/lang/String;

    .line 159
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/distriqt/extension/gameservices/objects/Achievement;->points:I

    .line 161
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v2

    iput v2, v0, Lcom/distriqt/extension/gameservices/objects/Achievement;->type:I

    .line 162
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v2

    iput v2, v0, Lcom/distriqt/extension/gameservices/objects/Achievement;->state:I

    .line 164
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    iput-object v2, v0, Lcom/distriqt/extension/gameservices/objects/Achievement;->iconUnlockedUrl:Ljava/lang/String;

    .line 165
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_1
    iput-object v2, v0, Lcom/distriqt/extension/gameservices/objects/Achievement;->iconLockedUrl:Ljava/lang/String;

    .line 167
    iget v2, v0, Lcom/distriqt/extension/gameservices/objects/Achievement;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 169
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v2

    iput v2, v0, Lcom/distriqt/extension/gameservices/objects/Achievement;->currentSteps:I

    .line 170
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v2

    iput v2, v0, Lcom/distriqt/extension/gameservices/objects/Achievement;->totalSteps:I

    .line 182
    :goto_2
    return-object v0

    .line 164
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 165
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 174
    :cond_2
    const/4 v2, 0x0

    iput v2, v0, Lcom/distriqt/extension/gameservices/objects/Achievement;->currentSteps:I

    .line 175
    const/4 v2, 0x0

    iput v2, v0, Lcom/distriqt/extension/gameservices/objects/Achievement;->totalSteps:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 178
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static fromEvent(Lcom/google/android/gms/games/event/Event;)Lcom/distriqt/extension/gameservices/objects/PlayerEvent;
    .locals 4
    .param p0, "event"    # Lcom/google/android/gms/games/event/Event;

    .prologue
    .line 418
    new-instance v0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;

    invoke-direct {v0}, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;-><init>()V

    .line 420
    .local v0, "e":Lcom/distriqt/extension/gameservices/objects/PlayerEvent;
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->eventId:Ljava/lang/String;

    .line 421
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->name:Ljava/lang/String;

    .line 422
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->description:Ljava/lang/String;

    .line 423
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->iconImageUrl:Ljava/lang/String;

    .line 424
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->value:J

    .line 425
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getFormattedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->formattedValue:Ljava/lang/String;

    .line 426
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->isVisible()Z

    move-result v1

    iput-boolean v1, v0, Lcom/distriqt/extension/gameservices/objects/PlayerEvent;->isVisible:Z

    .line 428
    return-object v0

    .line 423
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/games/event/Event;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static fromInvitation(Lcom/google/android/gms/games/multiplayer/Invitation;)Lcom/distriqt/extension/gameservices/objects/Invitation;
    .locals 4
    .param p0, "gmsInvitation"    # Lcom/google/android/gms/games/multiplayer/Invitation;

    .prologue
    .line 50
    new-instance v0, Lcom/distriqt/extension/gameservices/objects/Invitation;

    invoke-direct {v0}, Lcom/distriqt/extension/gameservices/objects/Invitation;-><init>()V

    .line 51
    .local v0, "invitation":Lcom/distriqt/extension/gameservices/objects/Invitation;
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Invitation;->id:Ljava/lang/String;

    .line 52
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getCreationTimestamp()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/distriqt/extension/gameservices/objects/Invitation;->created:J

    .line 53
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationType()I

    move-result v1

    iput v1, v0, Lcom/distriqt/extension/gameservices/objects/Invitation;->type:I

    .line 54
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInviter()Lcom/google/android/gms/games/multiplayer/Participant;

    move-result-object v1

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromParticipant(Lcom/google/android/gms/games/multiplayer/Participant;)Lcom/distriqt/extension/gameservices/objects/Participant;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Invitation;->inviter:Lcom/distriqt/extension/gameservices/objects/Participant;

    .line 55
    return-object v0
.end method

.method public static fromLeaderboard(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Lcom/distriqt/extension/gameservices/objects/Leaderboard;
    .locals 3
    .param p0, "googleBoard"    # Lcom/google/android/gms/games/leaderboard/Leaderboard;

    .prologue
    .line 97
    new-instance v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;

    invoke-direct {v0}, Lcom/distriqt/extension/gameservices/objects/Leaderboard;-><init>()V

    .line 99
    .local v0, "board":Lcom/distriqt/extension/gameservices/objects/Leaderboard;
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->id:Ljava/lang/String;

    .line 100
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->displayName:Ljava/lang/String;

    .line 101
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->SCORE_ORDER_LARGEST_FIRST:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->scoreOrder:Ljava/lang/String;

    .line 105
    return-object v0

    .line 101
    :cond_0
    sget-object v1, Lcom/distriqt/extension/gameservices/objects/Leaderboard;->SCORE_ORDER_SMALLEST_FIRST:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromLeaderboardScore(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;
    .locals 4
    .param p0, "googleScore"    # Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    .prologue
    .line 135
    new-instance v0, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;

    invoke-direct {v0}, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;-><init>()V

    .line 137
    .local v0, "score":Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getScoreHolder()Lcom/google/android/gms/games/Player;

    move-result-object v1

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromPlayer(Lcom/google/android/gms/games/Player;)Lcom/distriqt/extension/gameservices/objects/Player;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;->player:Lcom/distriqt/extension/gameservices/objects/Player;

    .line 138
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayRank()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;->displayRank:Ljava/lang/String;

    .line 139
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getDisplayScore()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;->displayScore:Ljava/lang/String;

    .line 140
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRank()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;->rank:J

    .line 141
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->getRawScore()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/distriqt/extension/gameservices/objects/LeaderboardScore;->rawScore:J

    .line 143
    return-object v0
.end method

.method public static fromMatch(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;
    .locals 5
    .param p0, "gmsMatch"    # Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    .prologue
    .line 240
    new-instance v1, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;

    invoke-direct {v1}, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;-><init>()V

    .line 242
    .local v1, "match":Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->matchId:Ljava/lang/String;

    .line 243
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->canRematch()Z

    move-result v2

    iput-boolean v2, v1, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->canRematch:Z

    .line 244
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getCreationTimestamp()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->created:J

    .line 245
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getData()[B

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->data:[B

    .line 246
    sget v2, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->maxMatchDataSize:I

    iput v2, v1, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->dataMaxSize:I

    .line 247
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->matchDescription:Ljava/lang/String;

    .line 249
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getStatus()I

    move-result v2

    iput v2, v1, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->status:I

    .line 250
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getTurnStatus()I

    move-result v2

    iput v2, v1, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->turnStatus:I

    .line 251
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getVariant()I

    move-result v2

    iput v2, v1, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->variant:I

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->participants:Ljava/util/ArrayList;

    .line 254
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getParticipants()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Participant;

    .line 256
    .local v0, "gmsParticipant":Lcom/google/android/gms/games/multiplayer/Participant;
    iget-object v3, v1, Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;->participants:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromParticipant(Lcom/google/android/gms/games/multiplayer/Participant;)Lcom/distriqt/extension/gameservices/objects/Participant;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    .end local v0    # "gmsParticipant":Lcom/google/android/gms/games/multiplayer/Participant;
    :cond_0
    return-object v1
.end method

.method public static fromParticipant(Lcom/google/android/gms/games/multiplayer/Participant;)Lcom/distriqt/extension/gameservices/objects/Participant;
    .locals 2
    .param p0, "gmsParticipant"    # Lcom/google/android/gms/games/multiplayer/Participant;

    .prologue
    .line 61
    new-instance v0, Lcom/distriqt/extension/gameservices/objects/Participant;

    invoke-direct {v0}, Lcom/distriqt/extension/gameservices/objects/Participant;-><init>()V

    .line 62
    .local v0, "participant":Lcom/distriqt/extension/gameservices/objects/Participant;
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Participant;->participantId:Ljava/lang/String;

    .line 63
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Participant;->displayName:Ljava/lang/String;

    .line 64
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v1

    invoke-static {v1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromPlayer(Lcom/google/android/gms/games/Player;)Lcom/distriqt/extension/gameservices/objects/Player;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Participant;->player:Lcom/distriqt/extension/gameservices/objects/Player;

    .line 65
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getStatus()I

    move-result v1

    iput v1, v0, Lcom/distriqt/extension/gameservices/objects/Participant;->status:I

    .line 66
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Participant;->iconUrl:Ljava/lang/String;

    .line 67
    invoke-interface {p0}, Lcom/google/android/gms/games/multiplayer/Participant;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Participant;->imageUrl:Ljava/lang/String;

    .line 68
    return-object v0
.end method

.method public static fromPlayer(Lcom/google/android/gms/games/Player;)Lcom/distriqt/extension/gameservices/objects/Player;
    .locals 4
    .param p0, "googlePlayer"    # Lcom/google/android/gms/games/Player;

    .prologue
    .line 74
    new-instance v0, Lcom/distriqt/extension/gameservices/objects/Player;

    invoke-direct {v0}, Lcom/distriqt/extension/gameservices/objects/Player;-><init>()V

    .line 75
    .local v0, "player":Lcom/distriqt/extension/gameservices/objects/Player;
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Player;->id:Ljava/lang/String;

    .line 76
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Player;->displayName:Ljava/lang/String;

    .line 77
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Player;->alias:Ljava/lang/String;

    .line 78
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Player;->title:Ljava/lang/String;

    .line 80
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Player;->iconUrl:Ljava/lang/String;

    .line 81
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/gameservices/objects/Player;->imageUrl:Ljava/lang/String;

    .line 83
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLastPlayedWithTimestamp()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/distriqt/extension/gameservices/objects/Player;->lastPlayedWithTimestamp:J

    .line 84
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/distriqt/extension/gameservices/objects/Player;->modifiedTimestamp:J

    .line 86
    return-object v0
.end method

.method public static fromSnapshot(Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/distriqt/extension/gameservices/objects/SavedGame;
    .locals 3
    .param p0, "snapshot"    # Lcom/google/android/gms/games/snapshot/Snapshot;

    .prologue
    .line 217
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v2

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromSnapshotMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/distriqt/extension/gameservices/objects/SavedGame;

    move-result-object v1

    .line 223
    .local v1, "savedGame":Lcom/distriqt/extension/gameservices/objects/SavedGame;
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->readFully()[B

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-object v1

    .line 225
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static fromSnapshotMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/distriqt/extension/gameservices/objects/SavedGame;
    .locals 7
    .param p0, "snapshotMetadata"    # Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    .prologue
    .line 192
    new-instance v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;

    invoke-direct {v1}, Lcom/distriqt/extension/gameservices/objects/SavedGame;-><init>()V

    .line 195
    .local v1, "savedGame":Lcom/distriqt/extension/gameservices/objects/SavedGame;
    :try_start_0
    sget-object v2, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->TAG:Ljava/lang/String;

    const-string v3, "fromSnapshotMetadata(): %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getOwner()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromPlayer(Lcom/google/android/gms/games/Player;)Lcom/distriqt/extension/gameservices/objects/Player;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->owner:Lcom/distriqt/extension/gameservices/objects/Player;

    .line 199
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->uniqueName:Ljava/lang/String;

    .line 200
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->description:Ljava/lang/String;

    .line 201
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->lastModifiedTimestamp:J

    .line 202
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->playedTime:J

    .line 204
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageAspectRatio()F

    move-result v2

    iput v2, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->coverImageAspectRatio:F

    .line 205
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    iput-object v2, v1, Lcom/distriqt/extension/gameservices/objects/SavedGame;->coverImageUrl:Ljava/lang/String;

    .line 211
    :goto_1
    return-object v1

    .line 205
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
