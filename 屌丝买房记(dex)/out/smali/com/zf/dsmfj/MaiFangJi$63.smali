.class Lcom/zf/dsmfj/MaiFangJi$63;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$63;->val$dialog:Landroid/app/Dialog;

    .line 3595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 3597
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$75(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v8

    if-ltz v8, :cond_0

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$75(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_1

    .line 3686
    :cond_0
    :goto_0
    return-void

    .line 3599
    :cond_1
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->val$dialog:Landroid/app/Dialog;

    const v9, 0x7f070001

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 3600
    .local v2, "ebuynbr":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3602
    .local v6, "snbr":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3603
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$76(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3604
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->val$dialog:Landroid/app/Dialog;

    const v9, 0x7f07000a

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3605
    .local v7, "tnote":Landroid/widget/TextView;
    const-string v8, "\u8bf7\u8f93\u5165\u5927\u4e8e0\u7684\u6570\u5b57"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3683
    .end local v7    # "tnote":Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 3684
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3608
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    .line 3609
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$76(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3610
    const-string v8, ""

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3611
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->val$dialog:Landroid/app/Dialog;

    const v9, 0x7f07000a

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3612
    .restart local v7    # "tnote":Landroid/widget/TextView;
    const-string v8, "\u8bf7\u8f93\u5165\u5927\u4e8e0\u7684\u6570\u5b57"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3615
    .end local v7    # "tnote":Landroid/widget/TextView;
    :cond_3
    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$77(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v11}, Lcom/zf/dsmfj/MaiFangJi;->access$75(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v11

    aget-object v10, v10, v11

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    mul-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3616
    .local v5, "moneyneed":Ljava/lang/String;
    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iget-object v12, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v12}, Lcom/zf/dsmfj/MaiFangJi;->access$34(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 3617
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$76(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3618
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$34(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$77(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v11}, Lcom/zf/dsmfj/MaiFangJi;->access$75(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v11

    aget-object v10, v10, v11

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    div-long/2addr v8, v10

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$78(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 3619
    .local v0, "buynbrtoshow":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3620
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->val$dialog:Landroid/app/Dialog;

    const v9, 0x7f07000a

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3621
    .restart local v7    # "tnote":Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u4f60\u7684\u8d44\u91d1\u4e0d\u8db3\uff0c  \u6700\u591a\u53ea\u80fd\u8d2d\u4e70"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u4e2a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3625
    .end local v0    # "buynbrtoshow":Ljava/lang/String;
    .end local v7    # "tnote":Landroid/widget/TextView;
    :cond_4
    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$78(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    .line 3626
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$76(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3627
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$78(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3628
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->val$dialog:Landroid/app/Dialog;

    const v9, 0x7f07000a

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3629
    .restart local v7    # "tnote":Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u4ed3\u5e93\u7a7a\u95f4\u4e0d\u8db3\uff0c \u4ed3\u5e93\u6700\u591a\u8fd8\u80fd\u5b58\u653e"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$78(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u4e2a\u8d27\u7269"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3633
    .end local v7    # "tnote":Landroid/widget/TextView;
    :cond_5
    const/4 v3, 0x0

    .line 3635
    .local v3, "found":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/4 v8, 0x5

    if-lt v4, v8, :cond_7

    .line 3643
    :cond_6
    :goto_2
    const/4 v8, 0x5

    if-lt v4, v8, :cond_9

    .line 3644
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$76(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3645
    const-string v8, "0"

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3646
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->val$dialog:Landroid/app/Dialog;

    const v9, 0x7f07000a

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3647
    .restart local v7    # "tnote":Landroid/widget/TextView;
    const-string v8, "\u4ed3\u5e93\u6700\u591a\u53ea\u80fd\u5b58\u653e5\u79cd\u8d27\u7269"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3636
    .end local v7    # "tnote":Landroid/widget/TextView;
    :cond_7
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$79(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v4

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 3638
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$79(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$80(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$75(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3639
    const/4 v3, 0x1

    .line 3640
    goto :goto_2

    .line 3635
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3650
    :cond_9
    if-eqz v3, :cond_b

    .line 3651
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$81(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3653
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    .line 3654
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$82(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3660
    :goto_3
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$84(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$84(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    mul-int/2addr v9, v10

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-static {v10}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    div-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 3661
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 3662
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 3663
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$86(Lcom/zf/dsmfj/MaiFangJi;)V

    goto/16 :goto_0

    .line 3656
    :cond_a
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$34(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$83(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3657
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v9, "0"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$82(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3666
    :cond_b
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$81(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3668
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_c

    .line 3669
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$82(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3675
    :goto_4
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$79(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$80(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$75(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v10

    aget-object v9, v9, v10

    aput-object v9, v8, v4

    .line 3676
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$84(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$77(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$75(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v10

    aget-object v9, v9, v10

    aput-object v9, v8, v4

    .line 3677
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$87(Lcom/zf/dsmfj/MaiFangJi;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$88(Lcom/zf/dsmfj/MaiFangJi;)[I

    move-result-object v9

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$75(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v10

    aget v9, v9, v10

    aput v9, v8, v4

    .line 3678
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$89(Lcom/zf/dsmfj/MaiFangJi;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$90(Lcom/zf/dsmfj/MaiFangJi;)[I

    move-result-object v9

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$75(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v10

    aget v9, v9, v10

    aput v9, v8, v4

    .line 3679
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 3680
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 3681
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$86(Lcom/zf/dsmfj/MaiFangJi;)V

    goto/16 :goto_0

    .line 3671
    :cond_c
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$34(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$83(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3672
    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$63;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v9, "0"

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zf/dsmfj/MaiFangJi;->access$82(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method
