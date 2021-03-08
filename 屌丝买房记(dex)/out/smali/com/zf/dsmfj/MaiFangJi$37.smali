.class Lcom/zf/dsmfj/MaiFangJi$37;
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

.field private final synthetic val$bstarthint:Landroid/widget/Button;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/Button;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$37;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$37;->val$bstarthint:Landroid/widget/Button;

    iput-object p3, p0, Lcom/zf/dsmfj/MaiFangJi$37;->val$dialog:Landroid/app/Dialog;

    .line 3088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3092
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$37;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$37;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$17(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3093
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$37;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$57(Lcom/zf/dsmfj/MaiFangJi;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3094
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$37;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1, v3}, Lcom/zf/dsmfj/MaiFangJi;->access$58(Lcom/zf/dsmfj/MaiFangJi;Z)V

    .line 3095
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$37;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1, v3}, Lcom/zf/dsmfj/MaiFangJi;->access$59(Lcom/zf/dsmfj/MaiFangJi;Z)V

    .line 3096
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$37;->val$bstarthint:Landroid/widget/Button;

    const v2, 0x7f0200d2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3111
    :goto_0
    return-void

    .line 3099
    :cond_0
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$37;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$60(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v0

    .line 3100
    .local v0, "hintleft":I
    if-gtz v0, :cond_1

    .line 3101
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$37;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1, v3}, Lcom/zf/dsmfj/MaiFangJi;->access$61(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3102
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$37;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3103
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$37;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto :goto_0

    .line 3106
    :cond_1
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$37;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1, v4}, Lcom/zf/dsmfj/MaiFangJi;->access$58(Lcom/zf/dsmfj/MaiFangJi;Z)V

    .line 3107
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$37;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1, v4}, Lcom/zf/dsmfj/MaiFangJi;->access$59(Lcom/zf/dsmfj/MaiFangJi;Z)V

    .line 3108
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$37;->val$bstarthint:Landroid/widget/Button;

    const v2, 0x7f0200d3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
