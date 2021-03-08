.class Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$2;
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


# direct methods
.method constructor <init>(Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$2;->this$0:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$2;->this$0:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    invoke-static {v0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->access$000(Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    sget-object v1, Lcom/distriqt/extension/applicationrater/events/ApplicationRaterEvent;->SELECTED_LATER:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController$2;->this$0:Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;

    invoke-virtual {v0}, Lcom/distriqt/extension/applicationrater/controller/ApplicationRaterController;->dismissRateDialog()V

    .line 121
    return-void
.end method
