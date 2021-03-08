.class Lcom/zf/dsmfj/MaiFangJi$83;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$83;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$83;->val$dialog:Landroid/app/Dialog;

    .line 4196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 4200
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$83;->val$dialog:Landroid/app/Dialog;

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4201
    .local v1, "ibg":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4202
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 4203
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$83;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$93(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 4206
    :try_start_0
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$83;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$48(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$83;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$49(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$83;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$50(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 4207
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$83;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4211
    :cond_0
    :goto_0
    return-void

    .line 4208
    :catch_0
    move-exception v0

    .line 4209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
