.class public Lcom/dodonew/online/ui/OrderPayActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "OrderPayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private domainId:Ljava/lang/String;

.field private orderDetail:Lcom/dodonew/online/bean/OrderDetail;

.field private orderSign:Ljava/lang/String;

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

.field private tvPay:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/OrderPayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/OrderPayActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dodonew/online/ui/OrderPayActivity;->sendReceiver()V

    return-void
.end method

.method private initEvent()V
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f0d00e9

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 49
    const-string v3, "\u8ba2\u5355\u8be6\u60c5"

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderPayActivity;->setTitle(Ljava/lang/String;)V

    .line 50
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderPayActivity;->setNavigationIcon(I)V

    .line 51
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 52
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "orderDetail"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/bean/OrderDetail;

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderDetail:Lcom/dodonew/online/bean/OrderDetail;

    .line 53
    const-string v3, "orderSign"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderSign:Ljava/lang/String;

    .line 54
    const-string v3, "domainId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderPayActivity;->domainId:Ljava/lang/String;

    .line 55
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderDetail:Lcom/dodonew/online/bean/OrderDetail;

    if-eqz v3, :cond_0

    .line 56
    const v3, 0x7f0d00e2

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderDetail:Lcom/dodonew/online/bean/OrderDetail;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/OrderDetail;->getNetBarCaption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v3, 0x7f0d00e3

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderDetail:Lcom/dodonew/online/bean/OrderDetail;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/OrderDetail;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderDetail:Lcom/dodonew/online/bean/OrderDetail;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/OrderDetail;->getTermId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v3, 0x7f0d00e4

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderDetail:Lcom/dodonew/online/bean/OrderDetail;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/OrderDetail;->getBookTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderDetail:Lcom/dodonew/online/bean/OrderDetail;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/OrderDetail;->getBookLong()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 60
    .local v1, "bookLong":I
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderDetail:Lcom/dodonew/online/bean/OrderDetail;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/OrderDetail;->getDeductionAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v0, v3, 0x64

    .line 61
    .local v0, "amount":I
    const v3, 0x7f0d00e5

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5c0f\u65f6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v3, 0x7f0d00e6

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5143"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v3, 0x7f0d00e8

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderPayActivity;->tvPay:Landroid/widget/TextView;

    .line 64
    iget-object v3, p0, Lcom/dodonew/online/ui/OrderPayActivity;->tvPay:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    mul-int v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5143"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .end local v0    # "amount":I
    .end local v1    # "bookLong":I
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/dodonew/online/ui/OrderPayActivity;->para:Ljava/util/Map;

    .line 67
    return-void
.end method

.method private pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "netBarId"    # Ljava/lang/String;
    .param p2, "bookMessageId"    # Ljava/lang/String;
    .param p3, "orderSign"    # Ljava/lang/String;
    .param p4, "domainId"    # Ljava/lang/String;
    .param p5, "termId"    # Ljava/lang/String;
    .param p6, "bookTime"    # Ljava/lang/String;
    .param p7, "bookCurrentTime"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Lcom/dodonew/online/ui/OrderPayActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/OrderPayActivity$1;-><init>(Lcom/dodonew/online/ui/OrderPayActivity;)V

    .line 76
    invoke-virtual {v0}, Lcom/dodonew/online/ui/OrderPayActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 77
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 78
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->para:Ljava/util/Map;

    const-string v1, "bookMessageId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->para:Ljava/util/Map;

    const-string v1, "orderSign"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->para:Ljava/util/Map;

    const-string v1, "termId"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->para:Ljava/util/Map;

    const-string v1, "bookTime"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->para:Ljava/util/Map;

    const-string v1, "bookCurrentTime"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "oth/bookPay"

    iget-object v1, p0, Lcom/dodonew/online/ui/OrderPayActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/OrderPayActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/OrderPayActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 87
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
    .line 96
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderPayActivity;->showProgress()V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/book/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/OrderPayActivity$2;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/OrderPayActivity$2;-><init>(Lcom/dodonew/online/ui/OrderPayActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/OrderPayActivity$3;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/OrderPayActivity$3;-><init>(Lcom/dodonew/online/ui/OrderPayActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 119
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method private sendReceiver()V
    .locals 2

    .prologue
    .line 124
    const-string v1, "\u8ba2\u5ea7\u6210\u529f!"

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/OrderPayActivity;->showToast(Ljava/lang/String;)V

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.dodonew.online.receiver.orderrefresh"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OrderPayActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/dodonew/online/ui/OrderPayActivity;->finish()V

    .line 129
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderDetail:Lcom/dodonew/online/bean/OrderDetail;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/OrderDetail;->getNetBarId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderDetail:Lcom/dodonew/online/bean/OrderDetail;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/OrderDetail;->getBookMessageId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderSign:Ljava/lang/String;

    iget-object v4, p0, Lcom/dodonew/online/ui/OrderPayActivity;->domainId:Ljava/lang/String;

    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderDetail:Lcom/dodonew/online/bean/OrderDetail;

    .line 136
    invoke-virtual {v0}, Lcom/dodonew/online/bean/OrderDetail;->getTermId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderDetail:Lcom/dodonew/online/bean/OrderDetail;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/OrderDetail;->getBookTime()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/dodonew/online/ui/OrderPayActivity;->orderDetail:Lcom/dodonew/online/bean/OrderDetail;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/OrderDetail;->getBookCurrentTime()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    .line 135
    invoke-direct/range {v0 .. v7}, Lcom/dodonew/online/ui/OrderPayActivity;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00e9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/OrderPayActivity;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/ui/OrderPayActivity;->initView()V

    .line 45
    invoke-direct {p0}, Lcom/dodonew/online/ui/OrderPayActivity;->initEvent()V

    .line 46
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 154
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 148
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 150
    return-void
.end method
