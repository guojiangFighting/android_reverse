.class public Lcom/dodonew/online/wxapi/WXEntryActivity;
.super Lcn/sharesdk/wechat/utils/WechatHandlerActivity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# instance fields
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 37
    const-string v0, "wxe759af68c4898c4a"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 38
    iget-object v0, p0, Lcom/dodonew/online/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/dodonew/online/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 39
    return-void
.end method

.method public onGetMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .locals 3
    .param p1, "msg"    # Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/dodonew/online/wxapi/WXEntryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dodonew/online/wxapi/WXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, "iLaunchMyself":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dodonew/online/wxapi/WXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/dodonew/online/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 111
    invoke-virtual {p0}, Lcom/dodonew/online/wxapi/WXEntryActivity;->finish()V

    .line 112
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 0
    .param p1, "baseReq"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/dodonew/online/wxapi/WXEntryActivity;->finish()V

    .line 74
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 3
    .param p1, "baseResp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    const/16 v2, 0x11

    .line 78
    const-string v0, ""

    .line 79
    .local v0, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 82
    :cond_0
    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    packed-switch v1, :pswitch_data_0

    .line 99
    :pswitch_0
    const-string v0, "\u53d1\u9001\u8fd4\u56de"

    .line 100
    invoke-static {p0, v0, v2}, Lcom/dodonew/online/util/ToastMsg;->showToastMsg(Landroid/content/Context;Ljava/lang/String;I)V

    .line 101
    invoke-virtual {p0}, Lcom/dodonew/online/wxapi/WXEntryActivity;->finish()V

    .line 105
    :goto_0
    return-void

    .line 84
    :pswitch_1
    const-string v0, "\u53d1\u9001\u6210\u529f"

    .line 85
    invoke-static {p0, v0, v2}, Lcom/dodonew/online/util/ToastMsg;->showToastMsg(Landroid/content/Context;Ljava/lang/String;I)V

    .line 86
    invoke-virtual {p0}, Lcom/dodonew/online/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 89
    :pswitch_2
    const-string v0, "\u53d1\u9001\u53d6\u6d88"

    .line 90
    invoke-static {p0, v0, v2}, Lcom/dodonew/online/util/ToastMsg;->showToastMsg(Landroid/content/Context;Ljava/lang/String;I)V

    .line 91
    invoke-virtual {p0}, Lcom/dodonew/online/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 94
    :pswitch_3
    const-string v0, "\u53d1\u9001\u88ab\u62d2\u7edd"

    .line 95
    invoke-static {p0, v0, v2}, Lcom/dodonew/online/util/ToastMsg;->showToastMsg(Landroid/content/Context;Ljava/lang/String;I)V

    .line 96
    invoke-virtual {p0}, Lcom/dodonew/online/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShowMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .locals 3
    .param p1, "msg"    # Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    instance-of v1, v1, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    check-cast v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    .line 67
    .local v0, "obj":Lcn/sharesdk/wechat/utils/WXAppExtendObject;
    iget-object v1, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;->extInfo:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 69
    .end local v0    # "obj":Lcn/sharesdk/wechat/utils/WXAppExtendObject;
    :cond_0
    return-void
.end method
