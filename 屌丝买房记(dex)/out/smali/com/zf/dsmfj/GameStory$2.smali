.class Lcom/zf/dsmfj/GameStory$2;
.super Ljava/lang/Object;
.source "GameStory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/GameStory;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/GameStory;

.field private final synthetic val$ani:Landroid/view/animation/Animation;

.field private final synthetic val$bnext:Landroid/widget/Button;

.field private final synthetic val$bstart:Landroid/widget/Button;

.field private final synthetic val$ttext:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/GameStory;Landroid/widget/TextView;Landroid/view/animation/Animation;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/GameStory$2;->this$0:Lcom/zf/dsmfj/GameStory;

    iput-object p2, p0, Lcom/zf/dsmfj/GameStory$2;->val$ttext:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/zf/dsmfj/GameStory$2;->val$ani:Landroid/view/animation/Animation;

    iput-object p4, p0, Lcom/zf/dsmfj/GameStory$2;->val$bnext:Landroid/widget/Button;

    iput-object p5, p0, Lcom/zf/dsmfj/GameStory$2;->val$bstart:Landroid/widget/Button;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory$2;->this$0:Lcom/zf/dsmfj/GameStory;

    invoke-static {v0}, Lcom/zf/dsmfj/GameStory;->access$0(Lcom/zf/dsmfj/GameStory;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/GameStory;->access$1(Lcom/zf/dsmfj/GameStory;I)V

    .line 73
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory$2;->this$0:Lcom/zf/dsmfj/GameStory;

    invoke-static {v0}, Lcom/zf/dsmfj/GameStory;->access$0(Lcom/zf/dsmfj/GameStory;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory$2;->val$ttext:Landroid/widget/TextView;

    const-string v1, "    \u6765\u5230\u8fd9\u4e2a\u57ce\u5e02\u56db\u5e74\u4e86\uff0c \u5408\u79df\u3001\u6708\u5149\u7684\u6807\u7b7e\u7c98\u7740\u6211\u6325\u4e4b\u4e0d\u53bb\uff0c \u96be\u9053\u8fd9\u5c31\u662f\u6211\u7684\u751f\u6d3b\uff1f \u4e70\u623f\u7684\u68a6\u60f3\u5c31\u90a3\u4e48\u9065\u4e0d\u53ef\u53ca\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory$2;->val$ttext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zf/dsmfj/GameStory$2;->val$ani:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory$2;->val$ttext:Landroid/widget/TextView;

    const-string v1, "    \u95e8\u5916\u5408\u79df\u7684\u5f20XX\u5df2\u7ecf\u6349\u6025\u5730\u5728\u50ac\u4fc3\u4e86\uff0c \u800c\u6211\u5374\u9677\u5165\u4e86\u6df1\u6df1\u7684\u601d\u8003\u4e2d\u2026\u2026\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory$2;->val$ttext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zf/dsmfj/GameStory$2;->val$ani:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory$2;->val$ttext:Landroid/widget/TextView;

    const-string v1, "    \u54fc~ \u6709\u5fd7\u8005\u4e8b\u7adf\u6210\uff01 \u6211\u8981\u7528\u4e00\u5e74\u65f6\u95f4\u6539\u53d8\u4eba\u751f\u8f68\u8ff9\uff01 \u6211\u8981\u5b8c\u6210\u522b\u4eba\u505a\u4e0d\u5230\u7684\u4e8b\uff01 \u7b49\u6211\u6765\u5427\uff0c \u68a6\u4e2d\u7684\u5bb6\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory$2;->val$ttext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zf/dsmfj/GameStory$2;->val$ani:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 90
    :pswitch_3
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory$2;->val$ttext:Landroid/widget/TextView;

    const-string v1, "    \u63a5\u4e0b\u53bb\u7684\u4e00\u5e74\u65f6\u95f4\u91cc\uff0c \u4f60\u8981\u7528\u8eab\u4e0a\u4ec5\u6709\u76843000\u5757\u94b1\uff0c \u8d5a\u5230\u51e0\u767e\u4e07\u751a\u81f3\u4e0a\u5343\u4e07\uff0c \u4e70\u5230\u7406\u60f3\u4e2d\u7684\u623f\u5b50\uff01 \u4f60\u80fd\u5b8c\u6210\u8fd9\u4e2a\u6311\u6218\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory$2;->val$ttext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zf/dsmfj/GameStory$2;->val$ani:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory$2;->val$bnext:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/zf/dsmfj/GameStory$2;->val$bstart:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
