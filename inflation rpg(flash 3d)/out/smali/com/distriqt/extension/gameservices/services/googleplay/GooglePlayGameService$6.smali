.class Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$6;
.super Ljava/lang/Object;
.source "GooglePlayGameService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->loadInvites()V
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
        "Lcom/google/android/gms/games/multiplayer/InvitationBuffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$6;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

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
            "Lcom/google/android/gms/games/multiplayer/InvitationBuffer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/AnnotatedData<Lcom/google/android/gms/games/multiplayer/InvitationBuffer;>;>;"
    sget-object v3, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->TAG:Ljava/lang/String;

    const-string v4, "loadInvites():onComplete"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 557
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v2, "invitations":Ljava/util/List;, "Ljava/util/List<Lcom/distriqt/extension/gameservices/objects/Invitation;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v3}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    .line 559
    .local v0, "b":Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
    if-eqz v0, :cond_1

    .line 561
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 563
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromInvitation(Lcom/google/android/gms/games/multiplayer/Invitation;)Lcom/distriqt/extension/gameservices/objects/Invitation;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->release()V

    .line 568
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$6;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->access$100(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v3

    const-string v4, "multiplayer:loadinvites:success"

    .line 570
    invoke-static {v2}, Lcom/distriqt/extension/gameservices/events/MultiplayerEvent;->formatInvitationsForEvent(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 568
    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .end local v0    # "b":Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
    .end local v2    # "invitations":Ljava/util/List;, "Ljava/util/List<Lcom/distriqt/extension/gameservices/objects/Invitation;>;"
    :goto_1
    return-void

    .line 575
    :cond_2
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService$6;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;

    invoke-static {v3}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;->access$100(Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameService;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v3

    const-string v4, "multiplayer:loadinvites:failed"

    .line 577
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-static {v5}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    .line 575
    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
