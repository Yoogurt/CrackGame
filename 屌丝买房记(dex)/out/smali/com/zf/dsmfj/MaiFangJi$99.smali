.class Lcom/zf/dsmfj/MaiFangJi$99;
.super Ljava/lang/Object;
.source "MaiFangJi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$99;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$99;->val$dialog:Landroid/app/Dialog;

    .line 4633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4637
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$99;->val$dialog:Landroid/app/Dialog;

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4638
    .local v1, "ibg":Landroid/widget/ImageView;
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4639
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$99;->val$dialog:Landroid/app/Dialog;

    const v3, 0x7f07001d

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4640
    .local v0, "bbuyvclose":Landroid/widget/Button;
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4641
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4642
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$99;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$0(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 4643
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$99;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-virtual {v2, v4}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 4648
    :cond_0
    :goto_0
    return-void

    .line 4644
    :cond_1
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$99;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$0(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 4645
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$99;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto :goto_0

    .line 4646
    :cond_2
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$99;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$0(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 4647
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$99;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto :goto_0
.end method
