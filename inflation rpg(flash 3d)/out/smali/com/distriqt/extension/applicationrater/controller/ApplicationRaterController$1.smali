.class Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$1;
.super Ljava/lang/Object;
.source "ApplicationRaterController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$store:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$1;->this$0:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    iput-object p2, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$1;->val$store:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$1;->this$0:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    iget-object v1, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$1;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$1;->val$store:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->rate(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$1;->this$0:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    invoke-static {v0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->access$000(Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    sget-object v1, Lcom/distriqt/extension/applicationrater/events/ApplicationRaterEvent;->SELECTED_RATE:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$1;->this$0:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    invoke-virtual {v0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->dismissRateDialog()V

    .line 109
    return-void
.end method
