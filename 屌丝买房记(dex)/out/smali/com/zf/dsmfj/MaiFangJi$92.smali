.class Lcom/zf/dsmfj/MaiFangJi$92;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$92;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$92;->val$dialog:Landroid/app/Dialog;

    .line 4439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 10
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v9, 0x0

    .line 4443
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$92;->val$dialog:Landroid/app/Dialog;

    const/high16 v8, 0x7f070000

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 4444
    .local v5, "ibg":Landroid/widget/ImageView;
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4445
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$92;->val$dialog:Landroid/app/Dialog;

    const v8, 0x7f070002

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 4446
    .local v6, "inote":Landroid/widget/ImageView;
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4447
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$92;->val$dialog:Landroid/app/Dialog;

    const v8, 0x7f07000e

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4448
    .local v0, "bclose":Landroid/widget/Button;
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4449
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$92;->val$dialog:Landroid/app/Dialog;

    const v8, 0x7f070016

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 4450
    .local v1, "bvoucher1":Landroid/widget/Button;
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4451
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$92;->val$dialog:Landroid/app/Dialog;

    const v8, 0x7f070017

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 4452
    .local v2, "bvoucher10":Landroid/widget/Button;
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4453
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$92;->val$dialog:Landroid/app/Dialog;

    const v8, 0x7f070018

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 4454
    .local v3, "bvoucher50":Landroid/widget/Button;
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4455
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$92;->val$dialog:Landroid/app/Dialog;

    const v8, 0x7f070019

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 4456
    .local v4, "bvoucher98":Landroid/widget/Button;
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4457
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4458
    return-void
.end method
