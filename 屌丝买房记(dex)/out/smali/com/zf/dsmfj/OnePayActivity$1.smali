.class Lcom/zf/dsmfj/OnePayActivity$1;
.super Ljava/lang/Object;
.source "OnePayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/OnePayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/OnePayActivity;

.field private final synthetic val$balipay:Landroid/widget/Button;

.field private final synthetic val$bwx:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/OnePayActivity;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/OnePayActivity$1;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    iput-object p2, p0, Lcom/zf/dsmfj/OnePayActivity$1;->val$balipay:Landroid/widget/Button;

    iput-object p3, p0, Lcom/zf/dsmfj/OnePayActivity$1;->val$bwx:Landroid/widget/Button;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const v1, -0x666667

    .line 86
    iget-object v0, p0, Lcom/zf/dsmfj/OnePayActivity$1;->val$balipay:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/zf/dsmfj/OnePayActivity$1;->val$bwx:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/zf/dsmfj/OnePayActivity$1;->val$balipay:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 89
    iget-object v0, p0, Lcom/zf/dsmfj/OnePayActivity$1;->val$bwx:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 90
    iget-object v0, p0, Lcom/zf/dsmfj/OnePayActivity$1;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    iget-object v1, p0, Lcom/zf/dsmfj/OnePayActivity$1;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    invoke-static {v1}, Lcom/zf/dsmfj/OnePayActivity;->access$2(Lcom/zf/dsmfj/OnePayActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "alipay"

    invoke-static {v0, v1, v2}, Lcom/zf/dsmfj/OnePayActivity;->access$3(Lcom/zf/dsmfj/OnePayActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
