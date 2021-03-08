.class Lcom/zf/dsmfj/MaiFangJi$106;
.super Ljava/lang/Object;
.source "MaiFangJi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$106;->val$dialog:Landroid/app/Dialog;

    .line 4749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4753
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v4}, Lcom/zf/dsmfj/MaiFangJi;->access$17(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 4754
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 4756
    const/4 v1, 0x0

    .line 4758
    .local v1, "iv":I
    :try_start_0
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$105(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4763
    :goto_0
    const/16 v3, 0x2710

    if-ge v1, v3, :cond_1

    .line 4764
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/zf/dsmfj/MaiFangJi;->access$72(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 4765
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 4766
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$6(Lcom/zf/dsmfj/MaiFangJi;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v3

    const-string v4, "\u4f60\u7684\u4e70\u623f\u4ee3\u91d1\u5238\u4f59\u989d\u4e0d\u8db3\uff0c\u8bf7\u9009\u62e9\u4f60\u8981\u8d2d\u4e70\u7684\u4ee3\u91d1\u5238\u6570\u91cf"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 4767
    .local v2, "t":Landroid/widget/Toast;
    const/16 v3, 0x11

    invoke-virtual {v2, v3, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 4768
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4782
    .end local v2    # "t":Landroid/widget/Toast;
    :cond_0
    :goto_1
    return-void

    .line 4759
    :catch_0
    move-exception v0

    .line 4760
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4761
    const/4 v1, 0x0

    goto :goto_0

    .line 4771
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v3, -0xa

    invoke-static {v3}, Lcom/zf/dsmfj/Util;->ChangeVoucher(I)Z

    .line 4772
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$70(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 4773
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$58(Lcom/zf/dsmfj/MaiFangJi;Z)V

    .line 4774
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$59(Lcom/zf/dsmfj/MaiFangJi;Z)V

    .line 4775
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$108(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v3

    if-nez v3, :cond_2

    .line 4776
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-virtual {v3, v5}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto :goto_1

    .line 4777
    :cond_2
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$108(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 4778
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto :goto_1

    .line 4779
    :cond_3
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$108(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 4780
    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$106;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    goto :goto_1
.end method
