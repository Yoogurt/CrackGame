.class Lcom/zf/dsmfj/MaiFangJi$108;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$108;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$108;->val$dialog:Landroid/app/Dialog;

    .line 4802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v5, 0x0

    .line 4806
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$108;->val$dialog:Landroid/app/Dialog;

    const/high16 v4, 0x7f070000

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4807
    .local v2, "ibg":Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4808
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$108;->val$dialog:Landroid/app/Dialog;

    const v4, 0x7f070003

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 4809
    .local v1, "bok":Landroid/widget/Button;
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4810
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$108;->val$dialog:Landroid/app/Dialog;

    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4811
    .local v0, "bclose":Landroid/widget/Button;
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4812
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4813
    return-void
.end method
