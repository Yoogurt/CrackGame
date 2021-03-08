.class Lcom/zf/dsmfj/MaiFangJi$69;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$69;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$69;->val$dialog:Landroid/app/Dialog;

    .line 3904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v6, 0x0

    .line 3908
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$69;->val$dialog:Landroid/app/Dialog;

    const/high16 v5, 0x7f070000

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3909
    .local v3, "ibg":Landroid/widget/ImageView;
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3910
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$69;->val$dialog:Landroid/app/Dialog;

    const v5, 0x7f07000f

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 3911
    .local v2, "bsavemoney":Landroid/widget/Button;
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3912
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$69;->val$dialog:Landroid/app/Dialog;

    const v5, 0x7f070010

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 3913
    .local v1, "bgetmoney":Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3914
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$69;->val$dialog:Landroid/app/Dialog;

    const v5, 0x7f070011

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3915
    .local v0, "bexit":Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3916
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3917
    return-void
.end method
