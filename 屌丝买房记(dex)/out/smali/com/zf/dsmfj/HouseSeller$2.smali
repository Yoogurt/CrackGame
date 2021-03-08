.class Lcom/zf/dsmfj/HouseSeller$2;
.super Ljava/lang/Object;
.source "HouseSeller.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/HouseSeller;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/HouseSeller;

.field private final synthetic val$lia:Lcom/zf/dsmfj/SpecialAdapter;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/HouseSeller;Lcom/zf/dsmfj/SpecialAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iput-object p2, p0, Lcom/zf/dsmfj/HouseSeller$2;->val$lia:Lcom/zf/dsmfj/SpecialAdapter;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v9, 0x7f020118

    .line 179
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v4

    if-ne p3, v4, :cond_0

    .line 234
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget v5, v5, Lcom/zf/dsmfj/HouseSeller;->s_selgoods:I

    invoke-static {v4, v5}, Lcom/zf/dsmfj/HouseSeller;->access$0(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 182
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 186
    .local v1, "isuccnbr":I
    :try_start_0
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$3(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 190
    :goto_1
    if-lez v1, :cond_2

    .line 191
    const-string v4, "imgres"

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$4(Lcom/zf/dsmfj/HouseSeller;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v4, "gift"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :goto_2
    const-string v4, "name"

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$6(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v4, "des"

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$7(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v4, "price"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u552e\u4ef7\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v7, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v7}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v8}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Lcom/zf/dsmfj/HouseSeller;->access$9(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v4, "sel"

    const v5, 0x7f020023

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 204
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 205
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 207
    .local v3, "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 209
    :try_start_1
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$3(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p3

    invoke-static {v4}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 213
    :goto_3
    if-lez v1, :cond_3

    .line 214
    const-string v4, "imgres"

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$4(Lcom/zf/dsmfj/HouseSeller;)[I

    move-result-object v5

    aget v5, v5, p3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v4, "gift"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :goto_4
    const-string v4, "name"

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$6(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p3

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v4, "des"

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$7(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p3

    invoke-static {v5}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v4, "price"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u552e\u4ef7\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    iget-object v7, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v7}, Lcom/zf/dsmfj/HouseSeller;->access$8(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, p3

    invoke-static {v6, v7}, Lcom/zf/dsmfj/HouseSeller;->access$9(Lcom/zf/dsmfj/HouseSeller;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v4, "sel"

    iget-object v5, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v5}, Lcom/zf/dsmfj/HouseSeller;->access$11(Lcom/zf/dsmfj/HouseSeller;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$12(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v6

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$12(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/zf/dsmfj/HouseSeller;->access$13(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 227
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$12(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    .line 228
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/zf/dsmfj/HouseSeller;->access$13(Lcom/zf/dsmfj/HouseSeller;I)V

    .line 230
    :cond_1
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 231
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4}, Lcom/zf/dsmfj/HouseSeller;->access$10(Lcom/zf/dsmfj/HouseSeller;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 232
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$2;->val$lia:Lcom/zf/dsmfj/SpecialAdapter;

    invoke-virtual {v4}, Lcom/zf/dsmfj/SpecialAdapter;->notifyDataSetChanged()V

    .line 233
    iget-object v4, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v4, p3}, Lcom/zf/dsmfj/HouseSeller;->access$14(Lcom/zf/dsmfj/HouseSeller;I)V

    goto/16 :goto_0

    .line 187
    .end local v3    # "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, "imgres"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v4, "gift"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$5(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v7}, Lcom/zf/dsmfj/HouseSeller;->access$2(Lcom/zf/dsmfj/HouseSeller;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u4e07\u4e70\u623f\u4ee3\u91d1\u5238"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 210
    .restart local v3    # "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v0

    .line 211
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "imgres"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v4, "gift"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zf/dsmfj/HouseSeller$2;->this$0:Lcom/zf/dsmfj/HouseSeller;

    invoke-static {v6}, Lcom/zf/dsmfj/HouseSeller;->access$5(Lcom/zf/dsmfj/HouseSeller;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p3

    invoke-static {v6}, Lcom/zf/dsmfj/Util;->Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u4e07\u4e70\u623f\u4ee3\u91d1\u5238"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4
.end method
