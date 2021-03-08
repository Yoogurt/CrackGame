.class public interface abstract Lcom/distriqt/extension/gameservices/services/ISavedGames;
.super Ljava/lang/Object;
.source "ISavedGames.java"


# virtual methods
.method public abstract createGame(Ljava/lang/String;)V
.end method

.method public abstract deleteGame(Lcom/distriqt/extension/gameservices/objects/SavedGame;)V
.end method

.method public abstract displaySavedGamesUI(Ljava/lang/String;ZZI)Z
.end method

.method public abstract isSupported()Z
.end method

.method public abstract loadSavedGames(Z)V
.end method

.method public abstract openGame(Lcom/distriqt/extension/gameservices/objects/SavedGame;)V
.end method

.method public abstract resolveConflict(Ljava/lang/String;Lcom/distriqt/extension/gameservices/objects/SavedGame;)V
.end method

.method public abstract saveGame(Lcom/distriqt/extension/gameservices/objects/SavedGame;)V
.end method
