.class Lcom/zf/dsmfj/OnePayActivity$4;
.super Landroid/os/Handler;
.source "OnePayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zf/dsmfj/OnePayActivity;->BuyVoucher(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zf/dsmfj/OnePayActivity;


# direct methods
.method constructor <init>(Lcom/zf/dsmfj/OnePayActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zf/dsmfj/OnePayActivity$4;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    .line 116
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 119
    .local v2, "b":Landroid/os/Bundle;
    const-string v12, "appid"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "appid":Ljava/lang/String;
    const-string v12, "partnerid"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "partnerid":Ljava/lang/String;
    const-string v12, "prepayid"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "prepayid":Ljava/lang/String;
    const-string v12, "packageValue"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "packageValue":Ljava/lang/String;
    const-string v12, "noncestr"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "noncestr":Ljava/lang/String;
    const-string v12, "timestamp"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, "timestamp":Ljava/lang/String;
    const-string v12, "sign"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "sign":Ljava/lang/String;
    const-string v12, "orderNo"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "orderNo":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 128
    iget-object v12, p0, Lcom/zf/dsmfj/OnePayActivity$4;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 129
    .local v0, "api":Lcom/tencent/mm/sdk/openapi/IWXAPI;
    const-string v12, "wxc79e0b0d12c90ae1"

    invoke-interface {v0, v12}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 130
    new-instance v9, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v9}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 131
    .local v9, "req":Lcom/tencent/mm/sdk/modelpay/PayReq;
    iput-object v1, v9, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 132
    iput-object v6, v9, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 133
    iput-object v7, v9, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 134
    iput-object v3, v9, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 135
    iput-object v11, v9, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 136
    iput-object v5, v9, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 137
    iput-object v10, v9, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 138
    const-string v12, "buddy"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "------------\n"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-interface {v0, v9}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 140
    invoke-static {v4}, Lcom/zf/dsmfj/Util;->SaveWXOrderNo(Ljava/lang/String;)V

    .line 145
    .end local v0    # "api":Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .end local v9    # "req":Lcom/tencent/mm/sdk/modelpay/PayReq;
    :goto_0
    iget-object v12, p0, Lcom/zf/dsmfj/OnePayActivity$4;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    const v13, 0x7f070007

    invoke-virtual {v12, v13}, Lcom/zf/dsmfj/OnePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 146
    .local v8, "r2":Landroid/widget/RelativeLayout;
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    return-void

    .line 143
    .end local v8    # "r2":Landroid/widget/RelativeLayout;
    :cond_0
    iget-object v12, p0, Lcom/zf/dsmfj/OnePayActivity$4;->this$0:Lcom/zf/dsmfj/OnePayActivity;

    const-string v13, "\u53d1\u8d77\u652f\u4ed8\u8bf7\u6c42\u5931\u8d25"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
