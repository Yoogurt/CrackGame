.class Lcom/zf/dsmfj/HouseSeller$5;
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
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$5;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iput-object p2, p0, Lcom/zf/dsmfj/HouseSeller$5;->val$dialog:Landroid/app/Dialog;

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, 0x0

    .line 844
    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$5;->val$dialog:Landroid/app/Dialog;

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 845
    .local v1, "ibg":Landroid/widget/ImageView;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 846
    iget-object v2, p0, Lcom/zf/dsmfj/HouseSeller$5;->val$dialog:Landroid/app/Dialog;

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 847
    .local v0, "bbuyhok":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 848
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 849
    return-void
.end method
