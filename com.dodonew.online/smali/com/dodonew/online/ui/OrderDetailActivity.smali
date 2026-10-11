.class public Lcom/dodonew/online/ui/OrderDetailActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "OrderDetailActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private bookMessageId:Ljava/lang/String;

.field private domainId:Ljava/lang/String;

.field private orderSeat:Lcom/dodonew/online/bean/OrderSeat;

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

.field private tvEndTime:Landroid/widget/TextView;

.field private tvOrderId:Landroid/widget/TextView;

.field private tvOrderSeat:Landroid/widget/TextView;

.field private tvOrderStatus:Landroid/widget/TextView;

.field private tvOrderTime:Landroid/widget/TextView;

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

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->para:Ljava/util/Map;

    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 49
    const-string v1, "\u8ba2\u5355\u8be6\u60c5"

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderDetailActivity;->setTitle(Ljava/lang/String;)V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderDetailActivity;->setNavigationIcon(I)V

    .line 51
    const v1, 0x7f0d00d7

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvAccount:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0d00d8

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvOrderId:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0d00d9

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvPayMoney:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0d00db

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvDealTime:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f0d00da

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvOrderSeat:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0d00dc

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvOrderTime:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0d00dd

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvEndTime:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f0d00de

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvOrderStatus:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orderSeat"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/OrderSeat;

    iput-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->orderSeat:Lcom/dodonew/online/bean/OrderSeat;

    .line 64
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->orderSeat:Lcom/dodonew/online/bean/OrderSeat;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvAccount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->orderSeat:Lcom/dodonew/online/bean/OrderSeat;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/OrderSeat;->getToPayAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvOrderId:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->orderSeat:Lcom/dodonew/online/bean/OrderSeat;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/OrderSeat;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvPayMoney:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->orderSeat:Lcom/dodonew/online/bean/OrderSeat;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/OrderSeat;->getAmount()Ljava/lang/String;

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

    .line 68
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvDealTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->orderSeat:Lcom/dodonew/online/bean/OrderSeat;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/OrderSeat;->getPayTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvOrderSeat:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->orderSeat:Lcom/dodonew/online/bean/OrderSeat;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/OrderSeat;->getOrderInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->orderSeat:Lcom/dodonew/online/bean/OrderSeat;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/OrderSeat;->getTermId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvOrderTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->orderSeat:Lcom/dodonew/online/bean/OrderSeat;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/OrderSeat;->getBookLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5c0f\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvEndTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->orderSeat:Lcom/dodonew/online/bean/OrderSeat;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/OrderSeat;->getBookTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->orderSeat:Lcom/dodonew/online/bean/OrderSeat;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/OrderSeat;->getPayStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->tvOrderStatus:Landroid/widget/TextView;

    const-string v2, "\u5df2\u5b8c\u6210"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
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
    .line 95
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderDetailActivity;->showProgress()V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/book/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/OrderDetailActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/OrderDetailActivity$1;-><init>(Lcom/dodonew/online/ui/OrderDetailActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/OrderDetailActivity$2;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/OrderDetailActivity$2;-><init>(Lcom/dodonew/online/ui/OrderDetailActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 119
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OrderDetailActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/dodonew/online/ui/OrderDetailActivity;->initView()V

    .line 46
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 132
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 126
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 128
    return-void
.end method
