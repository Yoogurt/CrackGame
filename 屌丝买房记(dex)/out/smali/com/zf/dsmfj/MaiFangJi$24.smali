.class Lcom/zf/dsmfj/MaiFangJi$24;
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
    iput-object p1, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 995
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$17(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/zf/dsmfj/MaiFangJi;->access$18(Lcom/zf/dsmfj/MaiFangJi;I)V

    .line 1002
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1003
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1004
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1005
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "housenbr"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$27(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1006
    const-string v2, "selhouse"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$32(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1007
    const-string v2, "cash"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$33(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    const-string v2, "deposit"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$34(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string v2, "reputation"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$35(Lcom/zf/dsmfj/MaiFangJi;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    const-string v2, "reputationinfectset"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$36(Lcom/zf/dsmfj/MaiFangJi;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1011
    const-string v2, "gamestatus"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$37(Lcom/zf/dsmfj/MaiFangJi;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1012
    const-string v2, "soundon"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$28(Lcom/zf/dsmfj/MaiFangJi;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1013
    const-string v2, "housename"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$29(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1014
    const-string v2, "housepricec"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$38(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1015
    const-string v2, "houseinfo"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$39(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1016
    const-string v2, "houseimgres"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$40(Lcom/zf/dsmfj/MaiFangJi;)[I

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1017
    const-string v2, "houseimgressucc"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$30(Lcom/zf/dsmfj/MaiFangJi;)[I

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1018
    const-string v2, "housesuccmsg"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$31(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1019
    const-string v2, "reputationinfect"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$41(Lcom/zf/dsmfj/MaiFangJi;)[Z

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 1020
    const-string v2, "housefirstbuygift"

    iget-object v3, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v3}, Lcom/zf/dsmfj/MaiFangJi;->access$42(Lcom/zf/dsmfj/MaiFangJi;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1022
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    invoke-static {v2}, Lcom/zf/dsmfj/MaiFangJi;->access$6(Lcom/zf/dsmfj/MaiFangJi;)Lcom/zf/dsmfj/MaiFangJi;

    move-result-object v2

    const-class v3, Lcom/zf/dsmfj/HouseSeller;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1023
    iget-object v2, p0, Lcom/zf/dsmfj/MaiFangJi$24;->this$0:Lcom/zf/dsmfj/MaiFangJi;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/zf/dsmfj/MaiFangJi;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1024
    return-void
.end method
