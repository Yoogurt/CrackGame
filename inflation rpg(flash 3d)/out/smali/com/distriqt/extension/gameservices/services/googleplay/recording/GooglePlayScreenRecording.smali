.class public Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;
.super Lcom/distriqt/core/ActivityStateListener;
.source "GooglePlayScreenRecording.java"

# interfaces
.implements Lcom/distriqt/extension/gameservices/services/IScreenRecording;


# static fields
.field public static final RC_SCREEN_RECORDING:I = 0x33e98bc

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private _available:Z

.field private _currentState:Lcom/google/android/gms/games/video/CaptureState;

.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field private _handler:Landroid/os/Handler;

.field private _listener:Lcom/google/android/gms/games/VideosClient$OnCaptureOverlayStateListener;

.field private _task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 2
    .param p1, "extContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_available:Z

    .line 66
    iput-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_currentState:Lcom/google/android/gms/games/video/CaptureState;

    .line 269
    iput-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_handler:Landroid/os/Handler;

    .line 270
    iput-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_task:Ljava/lang/Runnable;

    .line 75
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 77
    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$1;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$1;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_listener:Lcom/google/android/gms/games/VideosClient$OnCaptureOverlayStateListener;

    .line 104
    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->isSupported()Z

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Z
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_available:Z

    return v0
.end method

.method static synthetic access$102(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_available:Z

    return p1
.end method

.method static synthetic access$200(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Lcom/google/android/gms/games/video/CaptureState;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_currentState:Lcom/google/android/gms/games/video/CaptureState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;Lcom/google/android/gms/games/video/CaptureState;)Lcom/google/android/gms/games/video/CaptureState;
    .locals 0
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;
    .param p1, "x1"    # Lcom/google/android/gms/games/video/CaptureState;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_currentState:Lcom/google/android/gms/games/video/CaptureState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_task:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_task:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_handler:Landroid/os/Handler;

    return-object p1
.end method

.method private startTimer()V
    .locals 3

    .prologue
    .line 274
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v1, "startTimer()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_handler:Landroid/os/Handler;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_task:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 278
    new-instance v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$5;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)V

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_task:Ljava/lang/Runnable;

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method


# virtual methods
.method public checkAvailability()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 156
    sget-object v3, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v4, "checkAvailability()"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 160
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 162
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/games/Games;->getVideosClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/VideosClient;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Lcom/google/android/gms/games/VideosClient;->isCaptureSupported()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$3;

    invoke-direct {v4, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$3;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)V

    .line 164
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 180
    iget-boolean v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_available:Z

    .line 195
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :goto_0
    return v2

    .line 184
    .restart local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_available:Z

    .line 185
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v4, "screenrecording:availability:changed"

    iget-boolean v5, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_available:Z

    .line 187
    invoke-static {v5}, Lcom/distriqt/extension/gameservices/events/ScreenRecordingEvent;->formatAvailabilityForEvent(Z)Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-interface {v3, v4, v5}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v2}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 113
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 115
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v2}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/games/Games;->getVideosClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/VideosClient;

    move-result-object v2

    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_listener:Lcom/google/android/gms/games/VideosClient$OnCaptureOverlayStateListener;

    .line 116
    invoke-virtual {v2, v3}, Lcom/google/android/gms/games/VideosClient;->unregisterOnCaptureOverlayStateChangedListener(Lcom/google/android/gms/games/VideosClient$OnCaptureOverlayStateListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$2;

    invoke-direct {v3, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$2;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;)V

    .line 117
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public handleSignIn()V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->isSupported()Z

    .line 139
    return-void
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 368
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult( %d,  %d, ... )"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    packed-switch p1, :pswitch_data_0

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 372
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->startTimer()V

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x33e98bc
        :pswitch_0
    .end packed-switch
.end method

.method public start()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 201
    sget-object v3, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v4, "start()"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :try_start_0
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 205
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 209
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/games/Games;->getVideosClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/VideosClient;

    move-result-object v3

    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->_listener:Lcom/google/android/gms/games/VideosClient$OnCaptureOverlayStateListener;

    .line 210
    invoke-virtual {v3, v4}, Lcom/google/android/gms/games/VideosClient;->registerOnCaptureOverlayStateChangedListener(Lcom/google/android/gms/games/VideosClient$OnCaptureOverlayStateListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;

    invoke-direct {v4, p0, v0}, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording$4;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 211
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const/4 v2, 0x1

    .line 251
    .end local v0    # "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :cond_0
    :goto_0
    return v2

    .line 247
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/distriqt/extension/gameservices/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stop()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 258
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/recording/GooglePlayScreenRecording;->TAG:Ljava/lang/String;

    const-string v1, "stop()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    return v3
.end method
