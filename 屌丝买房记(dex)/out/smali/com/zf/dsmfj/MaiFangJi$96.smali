.class Lcom/zf/dsmfj/MaiFangJi$96;
.super Ljava/lang/Object;
.source "MaiFangJi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/MaiFangJi;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/MaiFangJi;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$96;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    .line 4502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 4506
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$96;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$96;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$17(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 4507
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4508
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "50"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4509
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$96;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$6(Lcom/zf/dsmfj/MaiFangJi;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v1

    const-class v2, Lcom/zf/dsmfj/OnePayActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4510
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$96;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-virtual {v1, v0}, Lcom/zf/dsmfj/MaiFangJi;->startActivity(Landroid/content/Intent;)V

    .line 4511
    return-void
.end method
