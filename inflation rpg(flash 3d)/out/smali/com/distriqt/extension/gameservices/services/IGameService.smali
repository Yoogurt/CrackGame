.class public interface abstract Lcom/distriqt/extension/gameservices/services/IGameService;
.super Ljava/lang/Object;
.source "IGameService.java"


# virtual methods
.method public abstract achievements()Lcom/distriqt/extension/gameservices/services/IAchievements;
.end method

.method public abstract authUtil()Lcom/distriqt/extension/gameservices/services/IAuthUtil;
.end method

.method public abstract getPlayer()Lcom/distriqt/extension/gameservices/objects/Player;
.end method

.method public abstract initialiseService(Lcom/distriqt/extension/gameservices/services/Service;)Z
.end method

.method public abstract isInitialised()Z
.end method

.method public abstract isSignedIn()Z
.end method

.method public abstract leaderboards()Lcom/distriqt/extension/gameservices/services/ILeaderboards;
.end method

.method public abstract loadInvites()V
.end method

.method public abstract loadPlayerIcon(Lcom/distriqt/extension/gameservices/objects/Player;)Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onRestart()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract players()Lcom/distriqt/extension/gameservices/services/IPlayers;
.end method

.method public abstract quests()Lcom/distriqt/extension/gameservices/services/IQuests;
.end method

.method public abstract recording()Lcom/distriqt/extension/gameservices/services/IScreenRecording;
.end method

.method public abstract register()Z
.end method

.method public abstract savedGames()Lcom/distriqt/extension/gameservices/services/ISavedGames;
.end method

.method public abstract signIn(Z)Z
.end method

.method public abstract signOut()Z
.end method

.method public abstract turnBasedMultiplayer()Lcom/distriqt/extension/gameservices/services/ITurnBasedMultiplayer;
.end method
