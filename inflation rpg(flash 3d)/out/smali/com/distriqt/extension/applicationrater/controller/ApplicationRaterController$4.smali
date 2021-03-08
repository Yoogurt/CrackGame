.class Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$4;
.super Ljava/lang/Object;
.source "ApplicationRaterController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->showRateDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$4;->this$0:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$4;->this$0:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    invoke-static {v0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->access$000(Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    sget-object v1, Lcom/distriqt/extension/applicationrater/events/ApplicationRaterEvent;->CANCELLED:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->access$102(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 151
    return-void
.end method
