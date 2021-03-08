.class public Lcom/distriqt/extension/playservices/base/functions/availability/AttemptResolutionFunction;
.super Ljava/lang/Object;
.source "AttemptResolutionFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final PLAY_SERVICES_REQUESTCODE:I = 0x184de


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 36
    const/4 v4, 0x0

    .line 39
    .local v4, "result":Lcom/adobe/fre/FREObject;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    .line 41
    .local v2, "errorCode":I
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 43
    .local v0, "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x184de

    invoke-virtual {v0, v5, v2, v6}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v3

    .line 44
    .local v3, "resolutionIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v2    # "errorCode":I
    .end local v3    # "resolutionIntent":Landroid/app/PendingIntent;
    :goto_0
    return-object v4

    .line 48
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p1, v1}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
