.class Lcom/zf/dsmfj/MaiFangJi$55;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$55;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$55;->val$dialog:Landroid/app/Dialog;

    .line 3427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v7, 0x0

    .line 3431
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$55;->val$dialog:Landroid/app/Dialog;

    const/high16 v6, 0x7f070000

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 3432
    .local v4, "ibg":Landroid/widget/ImageView;
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3433
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$55;->val$dialog:Landroid/app/Dialog;

    const v6, 0x7f070005

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 3434
    .local v3, "bsound_quit":Landroid/widget/Button;
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3435
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$55;->val$dialog:Landroid/app/Dialog;

    const v6, 0x7f070003

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 3436
    .local v2, "bquitok":Landroid/widget/Button;
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3437
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$55;->val$dialog:Landroid/app/Dialog;

    const v6, 0x7f070004

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 3438
    .local v1, "bquitcancel":Landroid/widget/Button;
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3439
    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$55;->val$dialog:Landroid/app/Dialog;

    const v6, 0x7f070006

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3440
    .local v0, "bmoregames":Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3441
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3442
    return-void
.end method
