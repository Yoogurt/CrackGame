.class public interface abstract Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;
.super Ljava/lang/Object;
.source "ITurnBasedMultiplayer.java"


# virtual methods
.method public abstract acceptInvitation(Ljava/lang/String;)V
.end method

.method public abstract cancelMatch(Ljava/lang/String;)V
.end method

.method public abstract createMatch(IIILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract declineInvitation(Ljava/lang/String;)V
.end method

.method public abstract dismissInvitation(Ljava/lang/String;)V
.end method

.method public abstract dismissMatch(Ljava/lang/String;)V
.end method

.method public abstract displayCreateMatchUI(IIZ)V
.end method

.method public abstract finishMatch(Ljava/lang/String;)V
.end method

.method public abstract finishMatch(Ljava/lang/String;II[BLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II[B",
            "Ljava/util/List",
            "<",
            "Lcom/distriqt/extension/gameservices/objects/ParticipantResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isSupported()Z
.end method

.method public abstract leaveMatch(Ljava/lang/String;)V
.end method

.method public abstract leaveMatchDuringTurn(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadMatch(Ljava/lang/String;)V
.end method

.method public abstract loadMatches([I)V
.end method

.method public abstract rematch(Ljava/lang/String;)V
.end method

.method public abstract takeTurn(Ljava/lang/String;[BLjava/lang/String;)V
.end method
