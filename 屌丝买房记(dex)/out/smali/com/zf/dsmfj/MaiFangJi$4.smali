.class Lcom/zf/dsmfj/MaiFangJi$4;
.super Ljava/lang/Object;
.source "MaiFangJi.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/MaiFangJi;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/MaiFangJi;

.field private final synthetic val$istart1:Landroid/widget/ImageView;

.field private final synthetic val$istart2:Landroid/widget/ImageView;

.field private final synthetic val$istart3:Landroid/widget/ImageView;

.field private final synthetic val$rstartpage:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$4;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$4;->val$rstartpage:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/zf/dsmfj/MaiFangJi$4;->val$istart1:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/zf/dsmfj/MaiFangJi$4;->val$istart2:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/zf/dsmfj/MaiFangJi$4;->val$istart3:Landroid/widget/ImageView;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 306
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$4;->val$rstartpage:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$4;->val$istart1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 308
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$4;->val$istart2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 309
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$4;->val$istart3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 310
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 311
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$4;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$13(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 312
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$4;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$14(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 313
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$4;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$15(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 314
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$4;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$16(Lcom/zf/dsmfj/MaiFangJi;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$4;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$6(Lcom/zf/dsmfj/MaiFangJi;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v1

    const-class v2, Lcom/zf/dsmfj/GameStory;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 317
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$4;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/zf/dsmfj/MaiFangJi;->startActivityForResult(Landroid/content/Intent;I)V

    .line 319
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 323
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$4;->val$rstartpage:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 303
    return-void
.end method
