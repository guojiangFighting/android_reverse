.class public Lcom/dodonew/online/ui/OrderRechargeDetailActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "OrderRechargeDetailActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private orderId:Ljava/lang/String;

.field private para:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private tvAccount:Landroid/widget/TextView;

.field private tvDealTime:Landroid/widget/TextView;

.field private tvOrderId:Landroid/widget/TextView;

.field private tvOrderRemark:Landroid/widget/TextView;

.field private tvOrderStatus:Landroid/widget/TextView;

.field private tvPayMoney:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->para:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/OrderRechargeDetailActivity;Lcom/dodonew/online/bean/OrderRecharge;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/OrderRechargeDetailActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/OrderRecharge;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->setOrderRecharge(Lcom/dodonew/online/bean/OrderRecharge;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 47
    const-string v1, "\u5145\u503c\u8ba2\u5355\u8be6\u60c5"

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->setTitle(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->setNavigationIcon(I)V

    .line 49
    const v1, 0x7f0d00d7

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->tvAccount:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f0d00d8

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->tvOrderId:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f0d00d9

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->tvPayMoney:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0d00db

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->tvDealTime:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0d00de

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->tvOrderStatus:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0d00ea

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->tvOrderRemark:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orderId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->orderId:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->orderId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->orderId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->queryOrderRecharge(Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orderRecharge"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/OrderRecharge;

    .line 60
    .local v0, "orderRecharge":Lcom/dodonew/online/bean/OrderRecharge;
    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->setOrderRecharge(Lcom/dodonew/online/bean/OrderRecharge;)V

    goto :goto_0
.end method

.method private queryOrderRecharge(Ljava/lang/String;)V
    .locals 3
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->showProgress()V

    .line 69
    new-instance v0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$1;-><init>(Lcom/dodonew/online/ui/OrderRechargeDetailActivity;)V

    .line 70
    invoke-virtual {v0}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 71
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 72
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->para:Ljava/util/Map;

    const-string v1, "orderNum"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "pay/detail"

    iget-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 75
    return-void
.end method

.method private requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;
    .param p3, "DEFAULT_TYPE"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$2;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$2;-><init>(Lcom/dodonew/online/ui/OrderRechargeDetailActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$3;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity$3;-><init>(Lcom/dodonew/online/ui/OrderRechargeDetailActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 104
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 105
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method private setOrderRecharge(Lcom/dodonew/online/bean/OrderRecharge;)V
    .locals 4
    .param p1, "orderRecharge"    # Lcom/dodonew/online/bean/OrderRecharge;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->tvAccount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/OrderRecharge;->getToAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->tvOrderId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/OrderRecharge;->getOrderNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->tvPayMoney:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/dodonew/online/bean/OrderRecharge;->getAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->tvDealTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/OrderRecharge;->getOrderTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p1}, Lcom/dodonew/online/bean/OrderRecharge;->getOrderStatus()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "status":Ljava/lang/String;
    const-string v1, "PAID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v0, "\u5df2\u652f\u4ed8"

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->tvOrderStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->tvOrderRemark:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/OrderRecharge;->getOrderDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void

    .line 116
    :cond_0
    const-string v1, "NOTPAID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    goto :goto_0

    .line 118
    :cond_1
    const-string v1, "WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    const-string v0, "\u5904\u7406\u4e2d"

    goto :goto_0

    .line 121
    :cond_2
    const-string v0, "\u8ba2\u5355\u91cd\u53d1\u5931\u8d25"

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/dodonew/online/ui/OrderRechargeDetailActivity;->initView()V

    .line 44
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 139
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 133
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 135
    return-void
.end method
