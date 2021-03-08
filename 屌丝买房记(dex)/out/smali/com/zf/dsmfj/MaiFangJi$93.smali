.class Lcom/zf/dsmfj/MaiFangJi$93;
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

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$93;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$93;->val$dialog:Landroid/app/Dialog;

    .line 4464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 4468
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$93;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4469
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$93;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi;->access$0(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4470
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$93;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 4475
    :cond_0
    :goto_0
    return-void

    .line 4471
    :cond_1
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$93;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi;->access$0(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4472
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$93;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto :goto_0

    .line 4473
    :cond_2
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$93;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v0}, Lcom/zf/dsmfj/MaiFangJi;->access$0(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4474
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$93;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto :goto_0
.end method
