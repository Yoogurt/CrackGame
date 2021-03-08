.class Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction$1;
.super Ljava/lang/Object;
.source "ShowErrorDialogFunction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction$1;->this$0:Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 50
    sget-object v0, Lcom/distriqt/extension/playservices/base/BaseExtension;->ID:Ljava/lang/String;

    sget-object v1, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;->TAG:Ljava/lang/String;

    const-string v2, "onCancel"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method
