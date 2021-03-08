.class Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;
.super Ljava/lang/Object;
.source "GooglePlayTurnBasedMultiplayer.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->displayCreateMatchUI(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

.field final synthetic val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field final synthetic val$allowAutomatch:Z

.field final synthetic val$maxPlayers:I

.field final synthetic val$minPlayers:I


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;IIZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    iput-object p2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;->val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput p3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;->val$minPlayers:I

    iput p4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;->val$maxPlayers:I

    iput-boolean p5, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;->val$allowAutomatch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->maxMatchDataSize:I

    .line 159
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;->val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getTurnBasedMultiplayerClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/TurnBasedMultiplayerClient;

    move-result-object v0

    iget v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;->val$minPlayers:I

    iget v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;->val$maxPlayers:I

    iget-boolean v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;->val$allowAutomatch:Z

    .line 160
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/games/TurnBasedMultiplayerClient;->getSelectOpponentsIntent(IIZ)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3$1;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3$1;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;)V

    .line 161
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 172
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 153
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/turnbasedmultiplayer/GooglePlayTurnBasedMultiplayer$3;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
