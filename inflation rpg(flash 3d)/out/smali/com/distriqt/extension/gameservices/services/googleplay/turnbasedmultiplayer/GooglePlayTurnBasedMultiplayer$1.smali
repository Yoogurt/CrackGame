.class Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$1;
.super Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchUpdateCallback;
.source "GooglePlayTurnBasedMultiplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchUpdateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTurnBasedMatchReceived(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V
    .locals 5
    .param p1, "match"    # Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v1, "onTurnBasedMatchReceived( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->getMatchId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "turnbasedmultiplayer:match:updated"

    .line 97
    invoke-static {p1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromMatch(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;

    move-result-object v2

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/events/TurnBasedMatchEvent;->formatMatchForEvent(Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onTurnBasedMatchRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "matchId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 103
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->TAG:Ljava/lang/String;

    const-string v1, "onTurnBasedMatchRemoved( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "turnbasedmultiplayer:match:removed"

    const-string v2, ""

    .line 106
    invoke-static {p1, v2}, Lcom/distriqt/extension/gameservices/events/TurnBasedMatchEvent;->formatMessageForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method
