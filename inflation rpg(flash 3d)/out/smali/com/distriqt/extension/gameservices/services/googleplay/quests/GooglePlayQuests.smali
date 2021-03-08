.class public Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;
.super Lcom/distriqt/core/ActivityStateListener;
.source "GooglePlayQuests.java"

# interfaces
.implements Lcom/distriqt/extension/gameservices/services/IQuests;


# static fields
.field public static final RC_DISPLAY_QUESTS_UI:I = 0x5dfe815

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1
    .param p1, "extensionContext"    # Lcom/distriqt/core/utils/IExtensionContext;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 67
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 1
    .param p0, "x0"    # Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .locals 4
    .param p1, "questId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 111
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->TAG:Ljava/lang/String;

    const-string v1, "accept( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    return v3
.end method

.method public claim(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "questId"    # Ljava/lang/String;
    .param p2, "milestoneId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 119
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->TAG:Ljava/lang/String;

    const-string v1, "claim( %s, %s )"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return v4
.end method

.method public displayUI()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->TAG:Ljava/lang/String;

    const-string v1, "displayUI()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    return v3
.end method

.method public incrementEvent(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "amount"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    sget-object v3, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->TAG:Ljava/lang/String;

    const-string v4, "incrementEvent( %s, %d )"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 190
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 192
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v2}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/games/Games;->getEventsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/EventsClient;

    move-result-object v2

    .line 193
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/games/EventsClient;->increment(Ljava/lang/String;I)V

    .line 196
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public initialise()V
    .locals 3

    .prologue
    .line 88
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->TAG:Ljava/lang/String;

    const-string v1, "initialise()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public listenForCompletion()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->TAG:Ljava/lang/String;

    const-string v1, "listenForCompletion()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    return v3
.end method

.method public loadEvents(Z)Z
    .locals 7
    .param p1, "forceReload"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    sget-object v3, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->TAG:Ljava/lang/String;

    const-string v4, "loadEvents( %b )"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v3, p0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 144
    .local v0, "account":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    if-eqz v0, :cond_0

    .line 146
    iget-object v2, p0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v2}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/games/Games;->getEventsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/EventsClient;

    move-result-object v2

    .line 147
    invoke-virtual {v2, p1}, Lcom/google/android/gms/games/EventsClient;->load(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests$1;

    invoke-direct {v3, p0}, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests$1;-><init>(Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;)V

    .line 148
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 181
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public loadQuests(Z)Z
    .locals 5
    .param p1, "forceReload"    # Z

    .prologue
    const/4 v4, 0x0

    .line 103
    sget-object v0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->TAG:Ljava/lang/String;

    const-string v1, "loadQuests( %b )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/gameservices/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return v4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget-object v0, p0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "quests:ui:closed"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x5dfe815
        :pswitch_0
    .end packed-switch
.end method
