.class Lcom/zf/dsmfj/MaiFangJi$6;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$6;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$6;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$6;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v1}, Lcom/zf/dsmfj/MaiFangJi;->access$17(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 769
    iget-object v0, p0, Lcom/zf/dsmfj/MaiFangJi$6;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zf/dsmfj/MaiFangJi;->showDialog(I)V

    .line 770
    return-void
.end method
