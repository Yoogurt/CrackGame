.class Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements$1;
.super Ljava/lang/Object;
.source "GooglePlayAcheivements.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->loadAchievements(Ljava/lang/Boolean;)V
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
        "Lcom/google/android/gms/games/achievement/AchievementBuffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 7
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
            "Lcom/google/android/gms/games/achievement/AchievementBuffer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/AnnotatedData<Lcom/google/android/gms/games/achievement/AchievementBuffer;>;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "achievements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/Achievement;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v4}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/achievement/AchievementBuffer;

    .line 85
    .local v2, "googleAchievements":Lcom/google/android/gms/games/achievement/AchievementBuffer;
    invoke-virtual {v2}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 86
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/gms/games/achievement/Achievement;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/achievement/Achievement;

    .line 90
    .local v0, "a":Lcom/google/android/gms/games/achievement/Achievement;
    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromAchievement(Lcom/google/android/gms/games/achievement/Achievement;)Lcom/distriqt/extension/gameservices/objects/Achievement;

    move-result-object v4

    .line 89
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v0    # "a":Lcom/google/android/gms/games/achievement/Achievement;
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/games/achievement/AchievementBuffer;->release()V

    .line 95
    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;

    invoke-static {v4}, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v4

    const-string v5, "achievements:loaded"

    .line 97
    invoke-static {v1}, Lcom/distriqt/extension/gameservices/events/AchievementsEvent;->formatAchievementsForEvent(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-interface {v4, v5, v6}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v1    # "achievements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/Achievement;>;"
    .end local v2    # "googleAchievements":Lcom/google/android/gms/games/achievement/AchievementBuffer;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/gms/games/achievement/Achievement;>;"
    :goto_1
    return-void

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;

    invoke-static {v4}, Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/achievements/GooglePlayAcheivements;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v4

    const-string v5, "achievements:error"

    .line 103
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-static {v6}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-interface {v4, v5, v6}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
