.class Lcom/zf/dsmfj/MaiFangJi$23;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$23;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 976
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$23;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$23;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$17(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 978
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 979
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 980
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 981
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "housenbr"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$23;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$27(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    const-string v2, "soundon"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$23;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$28(Lcom/zf/dsmfj/MaiFangJi;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 983
    const-string v2, "housename"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$23;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$29(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 984
    const-string v2, "houseimgressucc"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$23;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$30(Lcom/zf/dsmfj/MaiFangJi;)[I

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 985
    const-string v2, "housesuccmsg"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$23;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$31(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 986
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 987
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$23;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$6(Lcom/zf/dsmfj/MaiFangJi;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v2

    const-class v3, Lcom/zf/dsmfj/ShowRecord;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 988
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$23;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-virtual {v2, v1}, Lcom/zf/dsmfj/MaiFangJi;->startActivity(Landroid/content/Intent;)V

    .line 989
    return-void
.end method
