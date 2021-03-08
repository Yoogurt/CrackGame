.class Lcom/zf/dsmfj/HouseSeller$7;
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
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$7;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iput-object p2, p0, Lcom/zf/dsmfj/HouseSeller$7;->val$dialog:Landroid/app/Dialog;

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v5, 0x0

    .line 871
    iget-object v3, p0, Lcom/zf/dsmfj/HouseSeller$7;->val$dialog:Landroid/app/Dialog;

    const/high16 v4, 0x7f070000

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 872
    .local v2, "ibg":Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 873
    iget-object v3, p0, Lcom/zf/dsmfj/HouseSeller$7;->val$dialog:Landroid/app/Dialog;

    const v4, 0x7f070003

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 874
    .local v1, "bbuyhok":Landroid/widget/Button;
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 875
    iget-object v3, p0, Lcom/zf/dsmfj/HouseSeller$7;->val$dialog:Landroid/app/Dialog;

    const v4, 0x7f070004

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 876
    .local v0, "bbuyhcancel":Landroid/widget/Button;
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 877
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 878
    return-void
.end method
