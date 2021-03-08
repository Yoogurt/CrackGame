.class Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$2;
.super Ljava/lang/Object;
.source "GooglePlaySavedGames.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->displaySavedGamesUI(Ljava/lang/String;ZZI)Z
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
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$2;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$2;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x5dfe81f

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 156
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 151
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/gameservices/services/googleplay/savedgames/GooglePlaySavedGames$2;->onSuccess(Landroid/content/Intent;)V

    return-void
.end method
