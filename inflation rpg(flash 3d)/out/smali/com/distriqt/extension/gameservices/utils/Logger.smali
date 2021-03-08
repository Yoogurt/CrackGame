.class public Lcom/distriqt/extension/gameservices/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 26
    sget-object v0, Lcom/distriqt/extension/gameservices/GameServicesExtension;->ID:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 36
    sget-object v0, Lcom/distriqt/extension/gameservices/GameServicesExtension;->ID:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/distriqt/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method
