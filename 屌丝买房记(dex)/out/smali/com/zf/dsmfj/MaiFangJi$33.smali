.class Lcom/zf/dsmfj/MaiFangJi$33;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$33;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$33;->val$dialog:Landroid/app/Dialog;

    .line 2933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 14
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 2937
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi$33;->val$dialog:Landroid/app/Dialog;

    const/high16 v13, 0x7f070000

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2938
    .local v1, "ibg":Landroid/widget/ImageView;
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2939
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi$33;->val$dialog:Landroid/app/Dialog;

    const v13, 0x7f07001e

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2940
    .local v2, "img1":Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi$33;->val$dialog:Landroid/app/Dialog;

    const v13, 0x7f07001f

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2941
    .local v4, "img2":Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi$33;->val$dialog:Landroid/app/Dialog;

    const v13, 0x7f070020

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2942
    .local v5, "img3":Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi$33;->val$dialog:Landroid/app/Dialog;

    const v13, 0x7f070021

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 2943
    .local v6, "img4":Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi$33;->val$dialog:Landroid/app/Dialog;

    const v13, 0x7f070022

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 2944
    .local v7, "img5":Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi$33;->val$dialog:Landroid/app/Dialog;

    const v13, 0x7f070023

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 2945
    .local v8, "img6":Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi$33;->val$dialog:Landroid/app/Dialog;

    const v13, 0x7f070024

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2946
    .local v9, "img7":Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi$33;->val$dialog:Landroid/app/Dialog;

    const v13, 0x7f070025

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 2947
    .local v10, "img8":Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi$33;->val$dialog:Landroid/app/Dialog;

    const v13, 0x7f070026

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 2948
    .local v11, "img9":Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi$33;->val$dialog:Landroid/app/Dialog;

    const v13, 0x7f070027

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2949
    .local v3, "img10":Landroid/widget/ImageView;
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2950
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2951
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2952
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2953
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2954
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2955
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2956
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2957
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2958
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2959
    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi$33;->val$dialog:Landroid/app/Dialog;

    const v13, 0x7f070004

    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2960
    .local v0, "bclose":Landroid/widget/Button;
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2961
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2962
    return-void
.end method
