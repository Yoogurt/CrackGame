.class public Lcom/distriqt/extension/playservices/base/functions/availability/IsGooglePlayServicesAvailableFunction;
.super Ljava/lang/Object;
.source "IsGooglePlayServicesAvailableFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 31
    const/4 v3, 0x0

    .line 34
    .local v3, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 36
    .local v0, "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 38
    .local v1, "connectionResult":I
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 44
    .end local v0    # "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v1    # "connectionResult":I
    :goto_0
    return-object v3

    .line 40
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v2}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
