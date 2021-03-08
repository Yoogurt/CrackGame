.class Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$5;
.super Ljava/lang/Object;
.source "GooglePlayTurnBasedMultiplayer.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->loadMatches([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener",
        "<",
        "Lcom/google/android/gms/games/AnnotatedData",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/android/gms/games/AnnotatedData",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/AnnotatedData<Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;>;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v1, "invitations":Ljava/util/List;, "Ljava/util/List<Lcom/distriqt/extension/gameservices/objects/Invitation;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getCompletedMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getCompletedMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getCompletedMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromMatch(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getMyTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 285
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getMyTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 286
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getMyTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromMatch(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 288
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getTheirTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 289
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getTheirTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 290
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getTheirTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromMatch(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 292
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 293
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 294
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v3}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromInvitation(Lcom/google/android/gms/games/multiplayer/Invitation;)Lcom/distriqt/extension/gameservices/objects/Invitation;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 296
    .end local v0    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v3

    const-string v4, "turnbasedmultiplayer:loadmatches:success"

    .line 298
    invoke-static {v2, v1}, Lcom/distriqt/extension/gameservices/events/TurnBasedMultiplayerEvent;->formatMatchesForEvent(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .end local v1    # "invitations":Ljava/util/List;, "Ljava/util/List<Lcom/distriqt/extension/gameservices/objects/Invitation;>;"
    .end local v2    # "matches":Ljava/util/List;, "Ljava/util/List<Lcom/distriqt/extension/gameservices/objects/TurnBasedMatch;>;"
    :goto_4
    return-void

    .line 302
    :cond_4
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$5;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v3

    const-string v4, "turnbasedmultiplayer:loadmatches:failed"

    .line 304
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-static {v5}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    .line 302
    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
