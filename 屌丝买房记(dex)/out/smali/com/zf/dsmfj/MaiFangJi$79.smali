.class Lcom/zf/dsmfj/MaiFangJi$79;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$79;->val$dialog:Landroid/app/Dialog;

    .line 4098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const-wide/16 v10, 0x2710

    .line 4100
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->val$dialog:Landroid/app/Dialog;

    const v5, 0x7f070001

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 4101
    .local v1, "eagentnbr":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4103
    .local v2, "snbr":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$96(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 4104
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v4}, Lcom/zf/dsmfj/MaiFangJi;->access$97(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v4

    if-gtz v4, :cond_0

    .line 4105
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v5}, Lcom/zf/dsmfj/MaiFangJi;->access$76(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 4106
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->val$dialog:Landroid/app/Dialog;

    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4107
    .local v3, "tnote":Landroid/widget/TextView;
    const-string v4, "\u8bf7\u8f93\u5165\u5927\u4e8e0\u7684\u6570\u5b57"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4136
    .end local v3    # "tnote":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 4110
    :catch_0
    move-exception v0

    .line 4111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v4}, Lcom/zf/dsmfj/MaiFangJi;->access$97(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v10

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v6}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v8}, Lcom/zf/dsmfj/MaiFangJi;->access$34(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 4115
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v5}, Lcom/zf/dsmfj/MaiFangJi;->access$76(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4133
    :catch_1
    move-exception v0

    .line 4134
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4118
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v5}, Lcom/zf/dsmfj/MaiFangJi;->access$81(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 4119
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v4}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v6}, Lcom/zf/dsmfj/MaiFangJi;->access$97(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v6, v10

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 4120
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v5}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v5}, Lcom/zf/dsmfj/MaiFangJi;->access$97(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v5

    int-to-long v8, v5

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$82(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 4121
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v5}, Lcom/zf/dsmfj/MaiFangJi;->access$98(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v6}, Lcom/zf/dsmfj/MaiFangJi;->access$97(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$99(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 4122
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v5}, Lcom/zf/dsmfj/MaiFangJi;->access$78(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v6}, Lcom/zf/dsmfj/MaiFangJi;->access$97(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$100(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 4130
    :goto_1
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 4131
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v4}, Lcom/zf/dsmfj/MaiFangJi;->access$86(Lcom/zf/dsmfj/MaiFangJi;)V

    goto/16 :goto_0

    .line 4125
    :cond_2
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v5}, Lcom/zf/dsmfj/MaiFangJi;->access$34(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v5}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v5}, Lcom/zf/dsmfj/MaiFangJi;->access$97(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v5

    int-to-long v8, v5

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$83(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 4126
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const-string v5, "0"

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$82(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 4127
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v5}, Lcom/zf/dsmfj/MaiFangJi;->access$98(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v6}, Lcom/zf/dsmfj/MaiFangJi;->access$97(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$99(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V

    .line 4128
    iget-object v4, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v5, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v5}, Lcom/zf/dsmfj/MaiFangJi;->access$78(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/zf/dsmfj/MaiFangJi$79;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v6}, Lcom/zf/dsmfj/MaiFangJi;->access$97(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zf/dsmfj/MaiFangJi;->access$100(Lcom/zf/dsmfj/MaiFangJi;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method
