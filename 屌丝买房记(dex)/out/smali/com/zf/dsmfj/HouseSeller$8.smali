.class Lcom/zf/dsmfj/HouseSeller$8;
.super Ljava/lang/Object;
.source "HouseSeller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/HouseSeller;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/HouseSeller;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/HouseSeller;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iput-object p2, p0, Lcom/zf/dsmfj/HouseSeller$8;->val$dialog:Landroid/app/Dialog;

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 889
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget v6, v6, Lcom/zf/dsmfj/HouseSeller;->s_money:I

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$0(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 890
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 892
    :try_start_0
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x9

    if-lt v5, v6, :cond_2

    .line 893
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$17(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v8

    aget-object v5, v5, v8

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 894
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v8

    aget-object v5, v5, v8

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 895
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v9}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$18(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V

    .line 901
    :goto_0
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$20(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v7}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$21(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V

    .line 902
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->showDialog(I)V

    .line 903
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$22(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 905
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 906
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "gift"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string v5, "imgres"

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$4(Lcom/zf/dsmfj/HouseSeller;)[I

    move-result-object v6

    iget-object v7, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v7}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v7

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 909
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 910
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const v6, 0x7f070095

    invoke-virtual {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 911
    .local v2, "list":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/zf/dsmfj/SpecialAdapter;

    .line 912
    .local v1, "lia":Lcom/zf/dsmfj/SpecialAdapter;
    invoke-virtual {v1}, Lcom/zf/dsmfj/SpecialAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    .end local v1    # "lia":Lcom/zf/dsmfj/SpecialAdapter;
    .end local v2    # "list":Landroid/widget/ListView;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const v6, 0x7f070092

    invoke-virtual {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 965
    .local v4, "tmoney":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u53ef\u7528\u8d44\u91d1\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$17(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$23(Lcom/zf/dsmfj/HouseSeller;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 967
    return-void

    .line 898
    .end local v4    # "tmoney":Landroid/widget/TextView;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$17(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v9}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$19(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V

    .line 899
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const-string v6, "0"

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$18(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 915
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_4

    .line 916
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$17(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v8

    aget-object v5, v5, v8

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    div-long/2addr v8, v10

    const-wide/16 v10, 0x2710

    mul-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 917
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v8

    aget-object v5, v5, v8

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    div-long/2addr v8, v10

    const-wide/16 v10, 0x2710

    mul-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-ltz v5, :cond_3

    .line 918
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v9}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    div-long/2addr v8, v10

    const-wide/16 v10, 0x2710

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$18(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V

    .line 924
    :goto_2
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$20(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v7}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$21(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V

    .line 925
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->showDialog(I)V

    .line 926
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$22(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 928
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 929
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "gift"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v5, "imgres"

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$4(Lcom/zf/dsmfj/HouseSeller;)[I

    move-result-object v6

    iget-object v7, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v7}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v7

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 932
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 933
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const v6, 0x7f070095

    invoke-virtual {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 934
    .restart local v2    # "list":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/zf/dsmfj/SpecialAdapter;

    .line 935
    .restart local v1    # "lia":Lcom/zf/dsmfj/SpecialAdapter;
    invoke-virtual {v1}, Lcom/zf/dsmfj/SpecialAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 921
    .end local v1    # "lia":Lcom/zf/dsmfj/SpecialAdapter;
    .end local v2    # "list":Landroid/widget/ListView;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$17(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v9}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    div-long/2addr v8, v10

    const-wide/16 v10, 0x2710

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$19(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V

    .line 922
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const-string v6, "0"

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$18(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 939
    :cond_4
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$17(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v8

    aget-object v5, v5, v8

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 940
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v8

    aget-object v5, v5, v8

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_5

    .line 941
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v9}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$18(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V

    .line 947
    :goto_3
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$20(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v7}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$21(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V

    .line 948
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->showDialog(I)V

    .line 949
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$22(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 951
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 952
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "gift"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const-string v5, "imgres"

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$4(Lcom/zf/dsmfj/HouseSeller;)[I

    move-result-object v6

    iget-object v7, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v7}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v7

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 955
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 956
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const v6, 0x7f070095

    invoke-virtual {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 957
    .restart local v2    # "list":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/zf/dsmfj/SpecialAdapter;

    .line 958
    .restart local v1    # "lia":Lcom/zf/dsmfj/SpecialAdapter;
    invoke-virtual {v1}, Lcom/zf/dsmfj/SpecialAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 944
    .end local v1    # "lia":Lcom/zf/dsmfj/SpecialAdapter;
    .end local v2    # "list":Landroid/widget/ListView;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$16(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$17(Lcom/zf/dsmfj/HouseSeller;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v9}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$19(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V

    .line 945
    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$8;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const-string v6, "0"

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zf/dsmfj/HouseSeller;->access$18(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3
.end method
