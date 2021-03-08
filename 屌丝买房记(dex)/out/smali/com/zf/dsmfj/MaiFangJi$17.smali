.class Lcom/zf/dsmfj/MaiFangJi$17;
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


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/MaiFangJi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$17;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 929
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$17;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$17;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$24(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 930
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$17;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$26(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 931
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$17;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 932
    return-void
.end method
