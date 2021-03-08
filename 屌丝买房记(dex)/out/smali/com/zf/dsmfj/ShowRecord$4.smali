.class Lcom/zf/dsmfj/ShowRecord$4;
.super Ljava/lang/Object;
.source "ShowRecord.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/ShowRecord;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/ShowRecord;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/ShowRecord;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/ShowRecord$4;->this$0:Lcom/zf/dsmfj/ShowRecord;

    iput-object p2, p0, Lcom/zf/dsmfj/ShowRecord$4;->val$dialog:Landroid/app/Dialog;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v7, 0x0

    .line 304
    iget-object v5, p0, Lcom/zf/dsmfj/ShowRecord$4;->val$dialog:Landroid/app/Dialog;

    const/high16 v6, 0x7f070000

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 305
    .local v3, "ibg":Landroid/widget/ImageView;
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 306
    iget-object v5, p0, Lcom/zf/dsmfj/ShowRecord$4;->val$dialog:Landroid/app/Dialog;

    const v6, 0x7f070014

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 307
    .local v4, "isuccimg":Landroid/widget/ImageView;
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 308
    iget-object v5, p0, Lcom/zf/dsmfj/ShowRecord$4;->val$dialog:Landroid/app/Dialog;

    const v6, 0x7f070003

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 309
    .local v0, "bbuyhok":Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v5, p0, Lcom/zf/dsmfj/ShowRecord$4;->val$dialog:Landroid/app/Dialog;

    const v6, 0x7f07000c

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 311
    .local v1, "bsharefriend":Landroid/widget/Button;
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    iget-object v5, p0, Lcom/zf/dsmfj/ShowRecord$4;->val$dialog:Landroid/app/Dialog;

    const v6, 0x7f07000d

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 313
    .local v2, "bsharetimeline":Landroid/widget/Button;
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 315
    return-void
.end method
