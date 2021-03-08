.class Lcom/zf/dsmfj/MaiFangJi$84;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$84;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$84;->val$dialog:Landroid/app/Dialog;

    .line 4246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zf/dsmfj/MaiFangJi$84;)Lcom/zf/dsmfj/MaiFangJi;
    .locals 1

    .prologue
    .line 4246
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$84;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 10
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v7, 0x0

    const v9, 0x7f070006

    const/high16 v8, 0x7f070000

    .line 4250
    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$84;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4251
    .local v2, "ibg":Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4252
    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$84;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 4253
    .local v1, "dbmoregames":Landroid/widget/Button;
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4254
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4255
    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$84;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f07007b

    invoke-virtual {v6, v7}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 4256
    .local v4, "rgameover":Landroid/widget/RelativeLayout;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4257
    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$84;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-virtual {v6, v8}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 4258
    .local v3, "ibg1":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$84;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v6}, Lcom/zf/dsmfj/MaiFangJi;->access$6(Lcom/zf/dsmfj/MaiFangJi;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v6

    const v7, 0x7f02001c

    invoke-static {v6, v7}, Lcom/zf/dsmfj/MaiFangJi;->access$103(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4259
    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$84;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const v7, 0x7f07007c

    invoke-virtual {v6, v7}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4260
    .local v5, "tgameovernote":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$84;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v6}, Lcom/zf/dsmfj/MaiFangJi;->access$45(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4261
    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$84;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v6}, Lcom/zf/dsmfj/MaiFangJi;->access$104(Lcom/zf/dsmfj/MaiFangJi;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4262
    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$84;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-virtual {v6, v9}, Lcom/zf/dsmfj/MaiFangJi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4263
    .local v0, "bmoregames":Landroid/widget/Button;
    const v6, 0x7f020045

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 4264
    new-instance v6, Lcom/zf/dsmfj/MaiFangJi$84$1;

    invoke-direct {v6, p0}, Lcom/zf/dsmfj/MaiFangJi$84$1;-><init>(Lcom/zf/dsmfj/MaiFangJi$84;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4277
    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$84;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v6}, Lcom/zf/dsmfj/MaiFangJi;->access$21(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 4278
    return-void
.end method
