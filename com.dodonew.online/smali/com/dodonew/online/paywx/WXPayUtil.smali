.class public Lcom/dodonew/online/paywx/WXPayUtil;
.super Ljava/lang/Object;
.source "WXPayUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WXPayUtil"


# instance fields
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/dodonew/online/paywx/WXPayUtil;->context:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public initWX()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/dodonew/online/paywx/WXPayUtil;->registerWX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/dodonew/online/paywx/WXPayUtil;->isSupportPay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/dodonew/online/paywx/WXPayUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "\u6ce8\u518c\u5fae\u4fe1\u5931\u8d25"

    goto :goto_0

    .line 31
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public isSupportPay()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/paywx/WXPayUtil;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    const v1, 0x22000001

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public payByWX(Lcom/tencent/mm/sdk/modelpay/PayReq;)Z
    .locals 4
    .param p1, "payReq"    # Lcom/tencent/mm/sdk/modelpay/PayReq;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/dodonew/online/paywx/WXPayUtil;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, p1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v0

    .line 63
    .local v0, "isSuccess":Z
    const-string v1, "yang"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   prepayId   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    isSuccess"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-nez v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/dodonew/online/paywx/WXPayUtil;->context:Landroid/content/Context;

    const v2, 0x7f060129

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 67
    :cond_0
    return v0
.end method

.method public registerWX()Z
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/paywx/WXPayUtil;->context:Landroid/content/Context;

    const-string v1, "wxe759af68c4898c4a"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/paywx/WXPayUtil;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 41
    iget-object v0, p0, Lcom/dodonew/online/paywx/WXPayUtil;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v1, "wxe759af68c4898c4a"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
