.class Lcom/zf/dsmfj/HouseSeller$17;
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
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$17;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iput-object p2, p0, Lcom/zf/dsmfj/HouseSeller$17;->val$dialog:Landroid/app/Dialog;

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v6, 0x0

    .line 1174
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$17;->val$dialog:Landroid/app/Dialog;

    const/high16 v5, 0x7f070000

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1175
    .local v3, "ibg":Landroid/widget/ImageView;
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1176
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$17;->val$dialog:Landroid/app/Dialog;

    const v5, 0x7f07000c

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1177
    .local v1, "bsharefriend":Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1178
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$17;->val$dialog:Landroid/app/Dialog;

    const v5, 0x7f07000d

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1179
    .local v2, "bsharetimeline":Landroid/widget/Button;
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1180
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$17;->val$dialog:Landroid/app/Dialog;

    const v5, 0x7f07000e

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1181
    .local v0, "bclose":Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1182
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1183
    return-void
.end method
