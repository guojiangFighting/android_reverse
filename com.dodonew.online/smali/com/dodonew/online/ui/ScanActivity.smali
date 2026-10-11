.class public Lcom/dodonew/online/ui/ScanActivity;
.super Lcom/dodonew/online/base/BaseActivity;
.source "ScanActivity.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnZFBPayListener;


# instance fields
.field private domainId:Ljava/lang/String;

.field private netbarId:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private request:Lcom/dodonew/online/http/GsonStringRequest;

.field private zfbPayUtils:Lcom/dodonew/online/payzfb/ZFBPayUtils;

.field private zxingView:Lcom/dodonew/online/widget/zxing/ZXingView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dodonew/online/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/ScanActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScanActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ScanActivity;->dealScanResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/ScanActivity;)Lcom/dodonew/online/payzfb/ZFBPayUtils;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScanActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->zfbPayUtils:Lcom/dodonew/online/payzfb/ZFBPayUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/ScanActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScanActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScanActivity;->restartPreviewAndDecode()V

    return-void
.end method

.method private dealScanResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v1, "yang"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    result...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/pay/appscan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "orderNum"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/ScanActivity;->orderId:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ScanActivity;->payZFB(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_1
    const-string v1, "domainId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/ScanActivity;->domainId:Ljava/lang/String;

    .line 87
    const-string v1, "netbarId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/ScanActivity;->netbarId:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/dodonew/online/ui/ScanActivity;->domainId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    const-string v1, "\u4e0d\u7b26\u5408\u683c\u5f0f\u7684\u5185\u5bb9"

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/ScanActivity;->showToast(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScanActivity;->restartPreviewAndDecode()V

    goto :goto_0

    .line 93
    :cond_2
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ScanActivity;->login(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 61
    const v0, 0x7f0d00ff

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/zxing/ZXingView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->zxingView:Lcom/dodonew/online/widget/zxing/ZXingView;

    .line 62
    new-instance v0, Lcom/dodonew/online/payzfb/ZFBPayUtils;

    invoke-direct {v0, p0}, Lcom/dodonew/online/payzfb/ZFBPayUtils;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->zfbPayUtils:Lcom/dodonew/online/payzfb/ZFBPayUtils;

    .line 63
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->zxingView:Lcom/dodonew/online/widget/zxing/ZXingView;

    new-instance v1, Lcom/dodonew/online/ui/ScanActivity$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ScanActivity$2;-><init>(Lcom/dodonew/online/ui/ScanActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/zxing/ZXingView;->setHandleDecodeListener(Lcom/dodonew/online/widget/zxing/HandleDecodeListener;)V

    .line 69
    return-void
.end method

.method private initentOrderRechargeActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "orderId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/dodonew/online/ui/ScanActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    return-void
.end method

.method private login(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dodonew/online/ui/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "title"

    const-string v2, "\u767b\u5f55"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/dodonew/online/ui/ScanActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 118
    return-void
.end method

.method private payZFB(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->zfbPayUtils:Lcom/dodonew/online/payzfb/ZFBPayUtils;

    invoke-virtual {v0, p0}, Lcom/dodonew/online/payzfb/ZFBPayUtils;->setOnZFBPayListener(Lcom/dodonew/online/interfaces/OnZFBPayListener;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&device=app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/ScanActivity;->requestNetwork(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private requestNetwork(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/dodonew/online/ui/ScanActivity;->showProgress()V

    .line 122
    new-instance v0, Lcom/dodonew/online/http/GsonStringRequest;

    const/4 v3, 0x0

    new-instance v4, Lcom/dodonew/online/ui/ScanActivity$3;

    invoke-direct {v4, p0}, Lcom/dodonew/online/ui/ScanActivity$3;-><init>(Lcom/dodonew/online/ui/ScanActivity;)V

    new-instance v5, Lcom/dodonew/online/ui/ScanActivity$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/ScanActivity$4;-><init>(Lcom/dodonew/online/ui/ScanActivity;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/http/GsonStringRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->request:Lcom/dodonew/online/http/GsonStringRequest;

    .line 159
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->zxingView:Lcom/dodonew/online/widget/zxing/ZXingView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->zxingView:Lcom/dodonew/online/widget/zxing/ZXingView;

    iget-object v0, v0, Lcom/dodonew/online/widget/zxing/ZXingView;->handler:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/dodonew/online/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 177
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->zxingView:Lcom/dodonew/online/widget/zxing/ZXingView;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->zxingView:Lcom/dodonew/online/widget/zxing/ZXingView;

    iget-object v0, v0, Lcom/dodonew/online/widget/zxing/ZXingView;->handler:Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->domainId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/dodonew/online/bean/ScanResultEvent;

    iget-object v2, p0, Lcom/dodonew/online/ui/ScanActivity;->domainId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dodonew/online/ui/ScanActivity;->netbarId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/dodonew/online/bean/ScanResultEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScanActivity;->restartPreviewAndDecode()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScanActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScanActivity;->initView()V

    .line 51
    const v0, 0x7f0d0100

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dodonew/online/ui/ScanActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ScanActivity$1;-><init>(Lcom/dodonew/online/ui/ScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Lcom/dodonew/online/base/BaseActivity;->onDestroy()V

    .line 193
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->zxingView:Lcom/dodonew/online/widget/zxing/ZXingView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/ZXingView;->close()V

    .line 194
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Lcom/dodonew/online/base/BaseActivity;->onPause()V

    .line 208
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->zxingView:Lcom/dodonew/online/widget/zxing/ZXingView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/zxing/ZXingView;->initView()V

    .line 202
    invoke-super {p0}, Lcom/dodonew/online/base/BaseActivity;->onResume()V

    .line 203
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 204
    return-void
.end method

.method public result(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/dodonew/online/ui/ScanActivity;->orderId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/ScanActivity;->initentOrderRechargeActivity(Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScanActivity;->restartPreviewAndDecode()V

    goto :goto_0
.end method
