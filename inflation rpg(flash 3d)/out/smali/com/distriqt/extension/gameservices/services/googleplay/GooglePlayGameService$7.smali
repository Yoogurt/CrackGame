.class Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$7;
.super Lcom/google/android/gms/games/multiplayer/InvitationCallback;
.source "GooglePlayGameService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$7;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/InvitationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvitationReceived(Lcom/google/android/gms/games/multiplayer/Invitation;)V
    .locals 5
    .param p1, "invitation"    # Lcom/google/android/gms/games/multiplayer/Invitation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 720
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v1, "onInvitationReceived( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$7;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->access$100(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "multiplayer:invitation:received"

    .line 723
    invoke-static {p1}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromInvitation(Lcom/google/android/gms/games/multiplayer/Invitation;)Lcom/distriqt/extension/gameservices/objects/Invitation;

    move-result-object v2

    invoke-static {v2}, Lcom/distriqt/extension/gameservices/events/MultiplayerEvent;->formatInvitationForEvent(Lcom/distriqt/extension/gameservices/objects/Invitation;)Ljava/lang/String;

    move-result-object v2

    .line 721
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public onInvitationRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "invitationId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 729
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v1, "onInvitationRemoved( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$7;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->access$100(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "multiplayer:invitation:removed"

    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return-void
.end method
