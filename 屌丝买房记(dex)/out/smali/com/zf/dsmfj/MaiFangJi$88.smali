.class Lcom/zf/dsmfj/MaiFangJi$88;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$88;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iput-object p2, p0, Lcom/zf/dsmfj/MaiFangJi$88;->val$dialog:Landroid/app/Dialog;

    .line 4343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 4347
    iget-object v1, p0, Lcom/zf/dsmfj/MaiFangJi$88;->val$dialog:Landroid/app/Dialog;

    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 4348
    .local v0, "r":Landroid/widget/RelativeLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4349
    return-void
.end method
