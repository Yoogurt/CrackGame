.class Lcom/zf/dsmfj/MaiFangJi$36;
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

.field private final synthetic val$bsound:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$36;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$36;->val$bsound:Landroid/widget/Button;

    .line 3067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$36;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi;->access$55(Lcom/zf/dsmfj/MaiFangJi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3070
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$36;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$56(Lcom/zf/dsmfj/MaiFangJi;Z)V

    .line 3071
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$36;->val$bsound:Landroid/widget/Button;

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3078
    :goto_0
    return-void

    .line 3074
    :cond_0
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$36;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$56(Lcom/zf/dsmfj/MaiFangJi;Z)V

    .line 3075
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$36;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$36;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$17(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3076
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$36;->val$bsound:Landroid/widget/Button;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
