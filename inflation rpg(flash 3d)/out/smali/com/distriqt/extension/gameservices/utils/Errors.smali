.class public Lcom/distriqt/extension/gameservices/utils/Errors;
.super Ljava/lang/Object;
.source "Errors.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "context"    # Lcom/adobe/fre/FREContext;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method public static handleException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    sget-object v0, Lcom/distriqt/extension/gameservices/GameServicesExtension;->context:Lcom/adobe/fre/FREContext;

    invoke-static {v0, p0}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method
