.class Lcom/zf/dsmfj/GameStory$1;
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


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/GameStory;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/GameStory$1;->this$0:Lcom/zf/dsmfj/GameStory;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, "resultintent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/zf/dsmfj/GameStory$1;->this$0:Lcom/zf/dsmfj/GameStory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/zf/dsmfj/GameStory;->setResult(ILandroid/content/Intent;)V

    .line 64
    iget-object v1, p0, Lcom/zf/dsmfj/GameStory$1;->this$0:Lcom/zf/dsmfj/GameStory;

    invoke-virtual {v1}, Lcom/zf/dsmfj/GameStory;->finish()V

    .line 65
    return-void
.end method
