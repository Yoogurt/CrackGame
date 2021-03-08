.class Lcom/zf/dsmfj/MaiFangJi$8;
.super Ljava/lang/Object;
.source "MaiFangJi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/MaiFangJi;->DefButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/MaiFangJi;

.field private final synthetic val$bmarket1:Landroid/widget/Button;

.field private final synthetic val$bmarket2:Landroid/widget/Button;

.field private final synthetic val$bmarket3:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$8;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$8;->val$bmarket1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/zf/dsmfj/MaiFangJi$8;->val$bmarket2:Landroid/widget/Button;

    iput-object p4, p0, Lcom/zf/dsmfj/MaiFangJi$8;->val$bmarket3:Landroid/widget/Button;

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 803
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$8;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$8;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$19(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 804
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$8;->val$bmarket1:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 805
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$8;->val$bmarket2:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 806
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$8;->val$bmarket3:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 807
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$8;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$20(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 808
    invoke-static {}, Lcom/zf/dsmfj/Util;->ReadCrazyOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 809
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 810
    .local v0, "r":I
    if-nez v0, :cond_0

    .line 811
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$8;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$21(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 820
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$8;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$4(Lcom/zf/dsmfj/MaiFangJi;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$8;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$5(Lcom/zf/dsmfj/MaiFangJi;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 821
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$8;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v1, v1, Lcom/zf/dsmfj/MaiFangJi;->iad:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-virtual {v1}, Lcom/qq/e/ads/interstitial/InterstitialAD;->loadAD()V

    .line 823
    :cond_1
    return-void

    .line 814
    .end local v0    # "r":I
    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 815
    .restart local v0    # "r":I
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$8;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$22(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$8;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$21(Lcom/zf/dsmfj/MaiFangJi;)V

    .line 817
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$8;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$22(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/zf/dsmfj/MaiFangJi;->access$23(Lcom/zf/dsmfj/MaiFangJi;I)V

    goto :goto_0
.end method
