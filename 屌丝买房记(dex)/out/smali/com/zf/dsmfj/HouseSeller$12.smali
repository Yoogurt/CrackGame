.class Lcom/zf/dsmfj/HouseSeller$12;
.super Ljava/lang/Object;
.source "HouseSeller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/HouseSeller;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/HouseSeller;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$12;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iput-object p2, p0, Lcom/zf/dsmfj/HouseSeller$12;->val$dialog:Landroid/app/Dialog;

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 9
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v8, 0x0

    .line 1010
    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$12;->val$dialog:Landroid/app/Dialog;

    const/high16 v7, 0x7f070000

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1011
    .local v4, "ibg":Landroid/widget/ImageView;
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1012
    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$12;->val$dialog:Landroid/app/Dialog;

    const v7, 0x7f070014

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1013
    .local v5, "isuccimg":Landroid/widget/ImageView;
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1014
    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$12;->val$dialog:Landroid/app/Dialog;

    const v7, 0x7f070003

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1015
    .local v0, "bbuyhok":Landroid/widget/Button;
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1016
    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$12;->val$dialog:Landroid/app/Dialog;

    const v7, 0x7f07000c

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1017
    .local v2, "bsharefriend":Landroid/widget/Button;
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1018
    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$12;->val$dialog:Landroid/app/Dialog;

    const v7, 0x7f07000d

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1019
    .local v3, "bsharetimeline":Landroid/widget/Button;
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1020
    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$12;->val$dialog:Landroid/app/Dialog;

    const v7, 0x7f070006

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1021
    .local v1, "bmoregames":Landroid/widget/Button;
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1022
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1023
    return-void
.end method
