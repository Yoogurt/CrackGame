.class Lcom/zf/dsmfj/MaiFangJi$67;
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

.field private final synthetic val$fflag:Z


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;Landroid/app/Dialog;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$67;->val$dialog:Landroid/app/Dialog;

    iput-boolean p3, p0, Lcom/zf/dsmfj/MaiFangJi$67;->val$fflag:Z

    .line 3804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x4

    .line 3806
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$91(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v7

    if-ltz v7, :cond_0

    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$91(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v7

    if-le v7, v10, :cond_1

    .line 3881
    :cond_0
    :goto_0
    return-void

    .line 3808
    :cond_1
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$79(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$91(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v8

    aget-object v3, v7, v8

    .line 3809
    .local v3, "selgoods":Ljava/lang/String;
    const-string v5, ""

    .line 3810
    .local v5, "sprice":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v7, 0x5

    if-lt v2, v7, :cond_3

    .line 3816
    :goto_2
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->val$dialog:Landroid/app/Dialog;

    const v8, 0x7f070001

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3817
    .local v1, "esellnbr":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3819
    .local v4, "snbr":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->val$dialog:Landroid/app/Dialog;

    const v8, 0x7f07000a

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 3820
    .local v6, "tnote":Landroid/widget/TextView;
    iget-boolean v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->val$fflag:Z

    if-nez v7, :cond_5

    .line 3821
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$76(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3822
    const-string v7, "\u5e02\u573a\u4e2d\u6ca1\u6709\u8fd9\u79cd\u8d27\u7269\uff0c \u4f60\u65e0\u6cd5\u51fa\u552e"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3823
    const-string v7, "0"

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3861
    .end local v6    # "tnote":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 3862
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3864
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    .line 3867
    :try_start_1
    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u5730\u6c9f\u6cb9"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3868
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$35(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$92(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3869
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v8, "    \u5012\u5356\u5730\u6c9f\u6cb9\u6bd2\u5bb3\u65e0\u8f9c\u7fa4\u4f17\u5065\u5eb7\uff0c \u6211\u7684\u540d\u58f0\u53d8\u5dee\u4e86\uff01"

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$44(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3870
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v8, 0x16

    invoke-virtual {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3880
    :cond_2
    :goto_4
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$86(Lcom/zf/dsmfj/MaiFangJi;)V

    goto/16 :goto_0

    .line 3811
    .end local v1    # "esellnbr":Landroid/widget/EditText;
    .end local v4    # "snbr":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$80(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-static {v7}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$79(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$91(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3812
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$77(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-static {v7}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3813
    goto/16 :goto_2

    .line 3810
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 3826
    .restart local v1    # "esellnbr":Landroid/widget/EditText;
    .restart local v4    # "snbr":Ljava/lang/String;
    .restart local v6    # "tnote":Landroid/widget/TextView;
    :cond_5
    :try_start_2
    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3827
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$76(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3828
    const-string v7, "\u8bf7\u8f93\u5165\u5927\u4e8e0\u7684\u6570\u5b57"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3831
    :cond_6
    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gtz v7, :cond_7

    .line 3832
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$76(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3833
    const-string v7, "\u8bf7\u8f93\u5165\u5927\u4e8e0\u7684\u6570\u5b57"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3836
    :cond_7
    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$91(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v7, v8, :cond_8

    .line 3837
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$76(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3838
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$91(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3839
    const-string v7, "\u4f60\u7684\u5e93\u5b58\u4e0d\u8db3\uff0c \u8bf7\u6b63\u786e\u586b\u5199\u8981\u51fa\u552e\u7684\u6570\u91cf"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3842
    :cond_8
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$81(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3843
    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$91(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_a

    .line 3844
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$91(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v2

    :goto_5
    if-lt v2, v10, :cond_9

    .line 3851
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$79(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    const-string v9, ""

    aput-object v9, v7, v8

    .line 3852
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$84(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    const-string v9, ""

    aput-object v9, v7, v8

    .line 3853
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    const-string v9, ""

    aput-object v9, v7, v8

    .line 3854
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/4 v8, -0x1

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$26(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 3860
    :goto_6
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$82(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3845
    :cond_9
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$79(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$79(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    aget-object v8, v8, v9

    aput-object v8, v7, v2

    .line 3846
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$84(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$84(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    aget-object v8, v8, v9

    aput-object v8, v7, v2

    .line 3847
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    aget-object v8, v8, v9

    aput-object v8, v7, v2

    .line 3848
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$87(Lcom/zf/dsmfj/MaiFangJi;)[I

    move-result-object v7

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$87(Lcom/zf/dsmfj/MaiFangJi;)[I

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    aput v8, v7, v2

    .line 3849
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$89(Lcom/zf/dsmfj/MaiFangJi;)[I

    move-result-object v7

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$89(Lcom/zf/dsmfj/MaiFangJi;)[I

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    aput v8, v7, v2

    .line 3844
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 3857
    :cond_a
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v7}, Lcom/zf/dsmfj/MaiFangJi;->access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$91(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v8

    iget-object v9, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v9}, Lcom/zf/dsmfj/MaiFangJi;->access$85(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v10}, Lcom/zf/dsmfj/MaiFangJi;->access$91(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 3872
    .end local v6    # "tnote":Landroid/widget/TextView;
    :cond_b
    :try_start_3
    invoke-static {v3}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u80be\u724c\u624b\u673a"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3873
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$35(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$92(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3874
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v8, "    \u9500\u552e\u80be\u724c\u624b\u673a\u86ca\u60d1\u61f5\u61c2\u9752\u5e74\u5356\u80be\uff0c \u6211\u7684\u540d\u58f0\u53d8\u5dee\u4e86\uff01"

    invoke-static {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->access$44(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 3875
    iget-object v7, p0, Lcom/zf/dsmfj/MaiFangJi$67;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/16 v8, 0x16

    invoke-virtual {v7, v8}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 3877
    :catch_1
    move-exception v0

    .line 3878
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method
