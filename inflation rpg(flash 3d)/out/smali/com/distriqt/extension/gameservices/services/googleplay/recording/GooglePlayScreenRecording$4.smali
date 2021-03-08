.class Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;
.super Ljava/lang/Object;
.source "GooglePlayScreenRecording.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->start()Z
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

.field final synthetic val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    iput-object p2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;->val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/Void;>;"
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v1, "start()::registerOnCaptureOverlayStateChangedListener::onComplete()[%b]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;->val$account:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/Games;->getVideosClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/VideosClient;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/games/VideosClient;->getCaptureOverlayIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4$2;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4$2;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;)V

    .line 220
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4$1;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4$1;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;)V

    .line 229
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 242
    return-void
.end method
