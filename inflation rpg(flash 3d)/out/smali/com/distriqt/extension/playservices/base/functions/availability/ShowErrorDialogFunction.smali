.class public Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;
.super Ljava/lang/Object;
.source "ShowErrorDialogFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final PLAY_SERVICES_REQUESTCODE:I = 0x184de

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 39
    const/4 v3, 0x0

    .line 42
    .local v3, "result":Lcom/adobe/fre/FREObject;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    .line 44
    .local v2, "errorCode":I
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 45
    .local v0, "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x184de

    new-instance v6, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction$1;

    invoke-direct {v6, p0}, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction$1;-><init>(Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;)V

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v4

    .line 52
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "apiAvailability":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v2    # "errorCode":I
    :goto_0
    return-object v3

    .line 54
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p1, v1}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
