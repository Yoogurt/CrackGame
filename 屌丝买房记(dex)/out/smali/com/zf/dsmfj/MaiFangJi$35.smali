.class Lcom/zf/dsmfj/MaiFangJi$35;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$35;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$35;->val$dialog:Landroid/app/Dialog;

    .line 3029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 11
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v10, 0x0

    .line 3033
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$35;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v9, "0"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$54(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3034
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$35;->val$dialog:Landroid/app/Dialog;

    const/high16 v9, 0x7f070000

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 3035
    .local v7, "ibg":Landroid/widget/ImageView;
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3036
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$35;->val$dialog:Landroid/app/Dialog;

    const v9, 0x7f070005

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 3037
    .local v5, "bsound":Landroid/widget/Button;
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3038
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$35;->val$dialog:Landroid/app/Dialog;

    const v9, 0x7f07002e

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 3039
    .local v6, "bstarthint":Landroid/widget/Button;
    invoke-virtual {v6, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3040
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$35;->val$dialog:Landroid/app/Dialog;

    const v9, 0x7f070003

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 3041
    .local v4, "bnewgameok":Landroid/widget/Button;
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3042
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$35;->val$dialog:Landroid/app/Dialog;

    const v9, 0x7f070004

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 3043
    .local v3, "bnewgamecancel":Landroid/widget/Button;
    invoke-virtual {v3, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3044
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$35;->val$dialog:Landroid/app/Dialog;

    const v9, 0x7f070033

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 3045
    .local v2, "binccash":Landroid/widget/Button;
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3046
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$35;->val$dialog:Landroid/app/Dialog;

    const v9, 0x7f070031

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 3047
    .local v1, "bdeccash":Landroid/widget/Button;
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3048
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$35;->val$dialog:Landroid/app/Dialog;

    const v9, 0x7f07002a

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3049
    .local v0, "baddvoucher":Landroid/widget/Button;
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3050
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3051
    return-void
.end method
