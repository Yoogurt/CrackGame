.class Lcom/zf/dsmfj/Help$2;
.super Ljava/lang/Object;
.source "Help.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/Help;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/Help;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/Help;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/Help$2;->this$0:Lcom/zf/dsmfj/Help;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/zf/dsmfj/Help$2;->this$0:Lcom/zf/dsmfj/Help;

    invoke-virtual {v0}, Lcom/zf/dsmfj/Help;->ShowStep()V

    .line 216
    return-void
.end method
