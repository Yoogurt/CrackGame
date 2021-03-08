.class Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests$1;
.super Ljava/lang/Object;
.source "GooglePlayQuests.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->loadEvents(Z)Z
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
        "Lcom/google/android/gms/games/event/EventBuffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;

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
            "Lcom/google/android/gms/games/event/EventBuffer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/android/gms/games/AnnotatedData<Lcom/google/android/gms/games/event/EventBuffer;>;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/PlayerEvent;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {v4}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/event/EventBuffer;

    .line 157
    .local v1, "eb":Lcom/google/android/gms/games/event/EventBuffer;
    invoke-virtual {v1}, Lcom/google/android/gms/games/event/EventBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 158
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/gms/games/event/Event;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/event/Event;

    .line 161
    .local v0, "e":Lcom/google/android/gms/games/event/Event;
    invoke-static {v0}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->fromEvent(Lcom/google/android/gms/games/event/Event;)Lcom/distriqt/extension/gameservices/objects/PlayerEvent;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v0    # "e":Lcom/google/android/gms/games/event/Event;
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/event/EventBuffer;->release()V

    .line 165
    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;

    invoke-static {v4}, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v4

    const-string v5, "events:load:success"

    .line 167
    invoke-static {v2}, Lcom/distriqt/extension/gameservices/events/PlayerEventEvent;->formatEventsForEvent(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    .line 165
    invoke-interface {v4, v5, v6}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v1    # "eb":Lcom/google/android/gms/games/event/EventBuffer;
    .end local v2    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/distriqt/extension/gameservices/objects/PlayerEvent;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/gms/games/event/Event;>;"
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests$1;->this$0:Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;

    invoke-static {v4}, Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;->access$000(Lcom/distriqt/extension/gameservices/services/googleplay/quests/GooglePlayQuests;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v4

    const-string v5, "events:load:error"

    .line 174
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-static {v6}, Lcom/distriqt/extension/gameservices/services/googleplay/GooglePlayGameServiceUtils;->formatErrorForEvent(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-interface {v4, v5, v6}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
