.class public Lcom/dodonew/online/ui/PayActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "PayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/dodonew/online/interfaces/OnZFBPayListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private btnPay:Landroid/widget/Button;

.field private canUserTicket:Z

.field private cbUserTicket:Lcom/dodonew/online/widget/SmoothCheckBox;

.field private cbWeChat:Lcom/dodonew/online/widget/SmoothCheckBox;

.field private cbZFB:Lcom/dodonew/online/widget/SmoothCheckBox;

.field private chooseNetbarDialog:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

.field private consumeReq:I

.field private defaultMoney:I

.field private domainId:Ljava/lang/String;

.field private etAccount:Landroid/widget/EditText;

.field private getMoney:I

.field private mGridView:Lcom/dodonew/online/widget/MGridView;

.field private maxCreditAmount:Ljava/lang/String;

.field private minCreditAmount:Ljava/lang/String;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private netBar:Lcom/dodonew/online/bean/NetBar;

.field private netBarCaption:Lcom/dodonew/online/bean/NetBarCaption;

.field private netBarId:Ljava/lang/String;

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

.field private policies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private policyAdapter:Lcom/dodonew/online/adapter/PolicyAdapter;

.field private presentAmount:I

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private ticket:Lcom/dodonew/online/bean/Ticket;

.field private tvGetMoney:Landroid/widget/TextView;

.field private tvNetbar:Landroid/widget/TextView;

.field private tvPayMoney:Landroid/widget/TextView;

.field private tvProvince:Landroid/widget/TextView;

.field private tvTicketMoney:Landroid/widget/TextView;

.field private tvTicketMoneyLabel:Landroid/widget/TextView;

.field private type:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private wxPayUtil:Lcom/dodonew/online/paywx/WXPayUtil;

.field private zfbPayUtils:Lcom/dodonew/online/payzfb/ZFBPayUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 80
    iput v1, p0, Lcom/dodonew/online/ui/PayActivity;->getMoney:I

    iput v1, p0, Lcom/dodonew/online/ui/PayActivity;->defaultMoney:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/ui/PayActivity;->consumeReq:I

    iput v1, p0, Lcom/dodonew/online/ui/PayActivity;->presentAmount:I

    .line 83
    iput-boolean v1, p0, Lcom/dodonew/online/ui/PayActivity;->canUserTicket:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/PayActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/PayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->policies:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/PayActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/PayActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/PayActivity;->itemClick(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/PayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/PayActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dodonew/online/ui/PayActivity;->setTvGetMoney()V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/PayActivity;Lcom/dodonew/online/bean/Recharge;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/PayActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/Recharge;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/PayActivity;->setRecharge(Lcom/dodonew/online/bean/Recharge;)V

    return-void
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/PayActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/PayActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dodonew/online/ui/PayActivity;->setPolicyAdapter()V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/PayActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/PayActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/PayActivity;Lcom/dodonew/online/bean/WXPay$WXPayResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/PayActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/WXPay$WXPayResult;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/PayActivity;->setPayReq(Lcom/dodonew/online/bean/WXPay$WXPayResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/dodonew/online/ui/PayActivity;Lcom/dodonew/online/bean/ZFBPay$ZFBPayResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/PayActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/ZFBPay$ZFBPayResult;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/PayActivity;->setZFBPayReq(Lcom/dodonew/online/bean/ZFBPay$ZFBPayResult;)V

    return-void
.end method

.method private checkPayAmount(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "input"    # I
    .param p2, "minCreditAmount"    # Ljava/lang/String;
    .param p3, "maxCreditAmount"    # Ljava/lang/String;
    .param p4, "checkPayWay"    # Z

    .prologue
    const/4 v3, 0x0

    .line 498
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v3

    .line 501
    :cond_1
    const-string v2, ""

    .line 502
    .local v2, "msg":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v1, v4, 0x64

    .line 503
    .local v1, "min":I
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v0, v4, 0x64

    .line 505
    .local v0, "max":I
    if-ge p1, v1, :cond_3

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6700\u4f4e\u9650\u989d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5143"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 521
    const/4 v3, 0x1

    goto :goto_0

    .line 507
    :cond_3
    if-le p1, v0, :cond_4

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6700\u9ad8\u9650\u989d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5143"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 509
    :cond_4
    if-eqz p4, :cond_2

    .line 510
    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->cbWeChat:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v4}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 511
    const-string v4, "WX"

    iput-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->type:Ljava/lang/String;

    .line 512
    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->wxPayUtil:Lcom/dodonew/online/paywx/WXPayUtil;

    invoke-virtual {v4}, Lcom/dodonew/online/paywx/WXPayUtil;->initWX()Ljava/lang/String;

    move-result-object v2

    .line 516
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->type:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 517
    const-string v2, "\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f"

    goto :goto_1

    .line 513
    :cond_6
    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->cbZFB:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v4}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 514
    const-string v4, "ZFB"

    iput-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->type:Ljava/lang/String;

    goto :goto_2

    .line 523
    :cond_7
    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    invoke-static {p0, v4}, Lcom/dodonew/online/util/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 524
    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/PayActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getRechargeAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "netBarId"    # Ljava/lang/String;
    .param p2, "domainId"    # Ljava/lang/String;
    .param p3, "toAccount"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v0, Lcom/dodonew/online/ui/PayActivity$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/PayActivity$3;-><init>(Lcom/dodonew/online/ui/PayActivity;)V

    .line 215
    invoke-virtual {v0}, Lcom/dodonew/online/ui/PayActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 216
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 217
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    const-string v1, "toAccount"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v0, "pay/order/discount"

    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/PayActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 222
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/dodonew/online/ui/PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "netBar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/NetBar;

    iput-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    .line 127
    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->userId:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    if-eqz v1, :cond_0

    .line 130
    const v1, 0x7f0d00ec

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->etAccount:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/NetBar;->getNetAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->tvNetbar:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/NetBar;->getNetBarCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->etAccount:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBarId:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->domainId:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBarId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->domainId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/NetBar;->getNetAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->userId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dodonew/online/ui/PayActivity;->getRechargeAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    new-instance v1, Lcom/dodonew/online/paywx/WXPayUtil;

    invoke-direct {v1, p0}, Lcom/dodonew/online/paywx/WXPayUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->wxPayUtil:Lcom/dodonew/online/paywx/WXPayUtil;

    .line 142
    new-instance v1, Lcom/dodonew/online/payzfb/ZFBPayUtils;

    invoke-direct {v1, p0}, Lcom/dodonew/online/payzfb/ZFBPayUtils;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->zfbPayUtils:Lcom/dodonew/online/payzfb/ZFBPayUtils;

    .line 143
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->zfbPayUtils:Lcom/dodonew/online/payzfb/ZFBPayUtils;

    invoke-virtual {v1, p0}, Lcom/dodonew/online/payzfb/ZFBPayUtils;->setOnZFBPayListener(Lcom/dodonew/online/interfaces/OnZFBPayListener;)V

    .line 144
    return-void

    .line 139
    :cond_0
    const v1, 0x7f0d00ef

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 151
    const v0, 0x7f0d00ec

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f0d00f2

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f0d00f9

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v0, 0x7f0d00fb

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->btnPay:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->mGridView:Lcom/dodonew/online/widget/MGridView;

    new-instance v1, Lcom/dodonew/online/ui/PayActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/PayActivity$1;-><init>(Lcom/dodonew/online/ui/PayActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->cbUserTicket:Lcom/dodonew/online/widget/SmoothCheckBox;

    new-instance v1, Lcom/dodonew/online/ui/PayActivity$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/PayActivity$2;-><init>(Lcom/dodonew/online/ui/PayActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->setOnCheckedChangeListener(Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;)V

    .line 170
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "\u79fb\u52a8\u652f\u4ed8"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->setTitle(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->setNavigationIcon(I)V

    .line 103
    const v0, 0x7f0d00ed

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->tvProvince:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->etAccount:Landroid/widget/EditText;

    .line 105
    const v0, 0x7f0d00f0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->tvNetbar:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0d00f3

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->tvTicketMoneyLabel:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0d00f5

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->tvTicketMoney:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0d00f7

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->tvPayMoney:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0d00f8

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->tvGetMoney:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 111
    const v0, 0x7f0d00f1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MGridView;

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->mGridView:Lcom/dodonew/online/widget/MGridView;

    .line 112
    const v0, 0x7f0d00f4

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/SmoothCheckBox;

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->cbUserTicket:Lcom/dodonew/online/widget/SmoothCheckBox;

    .line 113
    const v0, 0x7f0d00fa

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/SmoothCheckBox;

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->cbWeChat:Lcom/dodonew/online/widget/SmoothCheckBox;

    .line 114
    const v0, 0x7f0d00fc

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/SmoothCheckBox;

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->cbZFB:Lcom/dodonew/online/widget/SmoothCheckBox;

    .line 115
    const v0, 0x7f0d00e9

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->btnPay:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->cbWeChat:Lcom/dodonew/online/widget/SmoothCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->setChecked(Z)V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    .line 118
    invoke-direct {p0}, Lcom/dodonew/online/ui/PayActivity;->setTvGetMoney()V

    .line 119
    return-void
.end method

.method private itemClick(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 178
    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->policyAdapter:Lcom/dodonew/online/adapter/PolicyAdapter;

    invoke-virtual {v3, p1}, Lcom/dodonew/online/adapter/PolicyAdapter;->setPos(I)V

    .line 179
    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->policies:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/Policy;

    .line 180
    .local v2, "policy":Lcom/dodonew/online/bean/Policy;
    invoke-virtual {v2}, Lcom/dodonew/online/bean/Policy;->getCreditAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v0, v3, 0x64

    .line 181
    .local v0, "creditAmount":I
    invoke-virtual {v2}, Lcom/dodonew/online/bean/Policy;->getCreditPresent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v1, v3, 0x64

    .line 182
    .local v1, "creditPresent":I
    add-int v3, v0, v1

    iput v3, p0, Lcom/dodonew/online/ui/PayActivity;->defaultMoney:I

    .line 183
    add-int v3, v0, v1

    iput v3, p0, Lcom/dodonew/online/ui/PayActivity;->getMoney:I

    .line 184
    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->tvPayMoney:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget v3, p0, Lcom/dodonew/online/ui/PayActivity;->consumeReq:I

    if-ltz v3, :cond_0

    .line 186
    iget v3, p0, Lcom/dodonew/online/ui/PayActivity;->consumeReq:I

    if-le v3, v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/dodonew/online/ui/PayActivity;->canUserTicket:Z

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/dodonew/online/ui/PayActivity;->setCanUserTicket()V

    .line 191
    return-void

    .line 186
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "netBarId"    # Ljava/lang/String;
    .param p2, "domainId"    # Ljava/lang/String;
    .param p3, "toAccount"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;
    .param p5, "GRId"    # Ljava/lang/String;
    .param p6, "ticketId"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;
    .param p8, "amount"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string v0, "WX"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    new-instance v0, Lcom/dodonew/online/ui/PayActivity$4;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/PayActivity$4;-><init>(Lcom/dodonew/online/ui/PayActivity;)V

    .line 241
    invoke-virtual {v0}, Lcom/dodonew/online/ui/PayActivity$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 246
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 247
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    const-string v1, "toAccount"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->cbUserTicket:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Ticket;->getId()Ljava/lang/String;

    move-result-object p6

    .line 253
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Ticket;->getGRId()Ljava/lang/String;

    move-result-object p5

    .line 254
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    const-string p5, ""

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    const-string v1, "ticketId"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    const-string v1, "GRId"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    const-string v1, "type"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    const-string v1, "amount"

    invoke-interface {v0, v1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "pay/order"

    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/PayActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 263
    return-void

    .line 242
    :cond_2
    const-string v0, "ZFB"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Lcom/dodonew/online/ui/PayActivity$5;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/PayActivity$5;-><init>(Lcom/dodonew/online/ui/PayActivity;)V

    .line 244
    invoke-virtual {v0}, Lcom/dodonew/online/ui/PayActivity$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    goto :goto_0
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
    .line 271
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/PayActivity;->showProgress()V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/PayActivity$6;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/PayActivity$6;-><init>(Lcom/dodonew/online/ui/PayActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/PayActivity$7;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/PayActivity$7;-><init>(Lcom/dodonew/online/ui/PayActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 303
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 304
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method private setCanUserTicket()V
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->cbUserTicket:Lcom/dodonew/online/widget/SmoothCheckBox;

    iget-boolean v1, p0, Lcom/dodonew/online/ui/PayActivity;->canUserTicket:Z

    iget-boolean v2, p0, Lcom/dodonew/online/ui/PayActivity;->canUserTicket:Z

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/SmoothCheckBox;->setChecked(ZZ)V

    .line 530
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->cbUserTicket:Lcom/dodonew/online/widget/SmoothCheckBox;

    iget-boolean v1, p0, Lcom/dodonew/online/ui/PayActivity;->canUserTicket:Z

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->setCanClick(Z)V

    .line 531
    return-void
.end method

.method private setChooseNetbarDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "domainId"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {p1, p2}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->chooseNetbarDialog:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    .line 201
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->chooseNetbarDialog:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    invoke-virtual {p0}, Lcom/dodonew/online/ui/PayActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->chooseNetbarDialog:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    invoke-virtual {v0, p0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 203
    return-void
.end method

.method private setPayReq(Lcom/dodonew/online/bean/WXPay$WXPayResult;)V
    .locals 2
    .param p1, "result"    # Lcom/dodonew/online/bean/WXPay$WXPayResult;

    .prologue
    .line 323
    new-instance v0, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 324
    .local v0, "payReq":Lcom/tencent/mm/sdk/modelpay/PayReq;
    iget-object v1, p1, Lcom/dodonew/online/bean/WXPay$WXPayResult;->appid:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 325
    iget-object v1, p1, Lcom/dodonew/online/bean/WXPay$WXPayResult;->partnerid:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 326
    iget-object v1, p1, Lcom/dodonew/online/bean/WXPay$WXPayResult;->packageValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 327
    iget-object v1, p1, Lcom/dodonew/online/bean/WXPay$WXPayResult;->noncestr:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 328
    iget-object v1, p1, Lcom/dodonew/online/bean/WXPay$WXPayResult;->timestamp:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 329
    iget-object v1, p1, Lcom/dodonew/online/bean/WXPay$WXPayResult;->sign:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 330
    iget-object v1, p1, Lcom/dodonew/online/bean/WXPay$WXPayResult;->prepayid:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 331
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->wxPayUtil:Lcom/dodonew/online/paywx/WXPayUtil;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/paywx/WXPayUtil;->payByWX(Lcom/tencent/mm/sdk/modelpay/PayReq;)Z

    .line 332
    return-void
.end method

.method private setPolicyAdapter()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->policyAdapter:Lcom/dodonew/online/adapter/PolicyAdapter;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/dodonew/online/adapter/PolicyAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->policies:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/dodonew/online/adapter/PolicyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/text/TextWatcher;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->policyAdapter:Lcom/dodonew/online/adapter/PolicyAdapter;

    .line 358
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->mGridView:Lcom/dodonew/online/widget/MGridView;

    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->policyAdapter:Lcom/dodonew/online/adapter/PolicyAdapter;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->policyAdapter:Lcom/dodonew/online/adapter/PolicyAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/PolicyAdapter;->notifyDataSetChanged()V

    .line 361
    return-void
.end method

.method private setRecharge(Lcom/dodonew/online/bean/Recharge;)V
    .locals 2
    .param p1, "recharge"    # Lcom/dodonew/online/bean/Recharge;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->policies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->policies:Ljava/util/List;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->policies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 344
    if-eqz p1, :cond_1

    .line 345
    invoke-virtual {p1}, Lcom/dodonew/online/bean/Recharge;->getResult()Lcom/dodonew/online/bean/Recharge$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Recharge$Result;->getMaxCreditAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->maxCreditAmount:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Lcom/dodonew/online/bean/Recharge;->getResult()Lcom/dodonew/online/bean/Recharge$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Recharge$Result;->getMinCreditAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->minCreditAmount:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->policies:Ljava/util/List;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Recharge;->getResult()Lcom/dodonew/online/bean/Recharge$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Recharge$Result;->getPolicyInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 350
    return-void
.end method

.method private setTvGetMoney()V
    .locals 6

    .prologue
    .line 534
    iget v2, p0, Lcom/dodonew/online/ui/PayActivity;->presentAmount:I

    if-lez v2, :cond_0

    .line 535
    iget-boolean v2, p0, Lcom/dodonew/online/ui/PayActivity;->canUserTicket:Z

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->cbUserTicket:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 537
    iget v2, p0, Lcom/dodonew/online/ui/PayActivity;->getMoney:I

    iget v3, p0, Lcom/dodonew/online/ui/PayActivity;->presentAmount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/dodonew/online/ui/PayActivity;->getMoney:I

    .line 543
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f97"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dodonew/online/ui/PayActivity;->getMoney:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5143\u7f51\u8d39"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "text":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 545
    .local v0, "msp":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/dodonew/online/ui/PayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 546
    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->tvGetMoney:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    return-void

    .line 539
    .end local v0    # "msp":Landroid/text/SpannableString;
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/dodonew/online/ui/PayActivity;->getMoney:I

    iget v3, p0, Lcom/dodonew/online/ui/PayActivity;->presentAmount:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/dodonew/online/ui/PayActivity;->getMoney:I

    goto :goto_0
.end method

.method private setZFBPayReq(Lcom/dodonew/online/bean/ZFBPay$ZFBPayResult;)V
    .locals 2
    .param p1, "result"    # Lcom/dodonew/online/bean/ZFBPay$ZFBPayResult;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->zfbPayUtils:Lcom/dodonew/online/payzfb/ZFBPayUtils;

    iget-object v1, p1, Lcom/dodonew/online/bean/ZFBPay$ZFBPayResult;->zfbparam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/payzfb/ZFBPayUtils;->setOrderInfo(Ljava/lang/String;)V

    .line 315
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 495
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 489
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 420
    invoke-super {p0, p1, p2, p3}, Lcom/dodonew/online/base/TitleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 421
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 422
    if-ne p1, v4, :cond_0

    .line 423
    const-string v3, "domainId"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->domainId:Ljava/lang/String;

    .line 424
    const-string v3, "area"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "txt":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 426
    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->tvProvince:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    .end local v2    # "txt":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    const/16 v3, 0xa

    if-ne p2, v3, :cond_0

    .line 430
    const-string v3, "ticket"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/bean/Ticket;

    iput-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    .line 431
    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    if-eqz v3, :cond_0

    .line 432
    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Ticket;->getConsumeReq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/dodonew/online/ui/PayActivity;->consumeReq:I

    .line 433
    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Ticket;->getPresentAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/dodonew/online/ui/PayActivity;->presentAmount:I

    .line 434
    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->tvTicketMoneyLabel:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u9700\u6d88\u8d39\u6ee1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/dodonew/online/ui/PayActivity;->consumeReq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5143"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->tvTicketMoney:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uffe5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/dodonew/online/ui/PayActivity;->presentAmount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/ui/PayActivity;->tvPayMoney:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "payMoney":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 438
    .local v0, "money":I
    iget v3, p0, Lcom/dodonew/online/ui/PayActivity;->defaultMoney:I

    iput v3, p0, Lcom/dodonew/online/ui/PayActivity;->getMoney:I

    .line 439
    iget v3, p0, Lcom/dodonew/online/ui/PayActivity;->consumeReq:I

    if-le v3, v0, :cond_2

    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/dodonew/online/ui/PayActivity;->canUserTicket:Z

    .line 440
    invoke-direct {p0}, Lcom/dodonew/online/ui/PayActivity;->setCanUserTicket()V

    goto/16 :goto_0

    :cond_2
    move v3, v4

    .line 439
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 368
    :sswitch_0
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/dodonew/online/ui/BindCardProvinceActivity;

    invoke-direct {v9, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v9, v1}, Lcom/dodonew/online/ui/PayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 372
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 373
    .local v11, "name":Ljava/lang/String;
    const-string v10, ""

    .line 374
    .local v10, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->domainId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    const-string v10, "\u8bf7\u9009\u62e9\u6240\u5728\u533a\u57df."

    .line 380
    :cond_1
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->domainId:Ljava/lang/String;

    invoke-direct {p0, v11, v0}, Lcom/dodonew/online/ui/PayActivity;->setChooseNetbarDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->etAccount:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/dodonew/online/util/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 378
    const-string v10, "\u8bf7\u5148\u8f93\u5165\u4e0a\u7f51\u8d26\u53f7."

    goto :goto_1

    .line 383
    :cond_3
    invoke-virtual {p0, v10}, Lcom/dodonew/online/ui/PayActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :sswitch_2
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-direct {v9, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v0, "netBarId"

    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBarId:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v0, "domainId"

    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->domainId:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v0, "tag"

    const-string v1, "tag"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const/16 v0, 0xa

    invoke-virtual {p0, v9, v0}, Lcom/dodonew/online/ui/PayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 394
    .end local v9    # "intent":Landroid/content/Intent;
    :sswitch_3
    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->cbZFB:Lcom/dodonew/online/widget/SmoothCheckBox;

    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->cbWeChat:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v4}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->setChecked(ZZ)V

    .line 395
    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->cbWeChat:Lcom/dodonew/online/widget/SmoothCheckBox;

    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->cbWeChat:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v4}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v2, v0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->setChecked(ZZ)V

    goto/16 :goto_0

    .line 398
    :sswitch_4
    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->cbWeChat:Lcom/dodonew/online/widget/SmoothCheckBox;

    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->cbZFB:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v4}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->setChecked(ZZ)V

    .line 399
    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->cbZFB:Lcom/dodonew/online/widget/SmoothCheckBox;

    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->cbZFB:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v4}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v2, v0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->setChecked(ZZ)V

    goto/16 :goto_0

    .line 402
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->tvPayMoney:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 403
    .local v12, "payMoney":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v12, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, "money":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "account":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity;->netBarId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->minCreditAmount:Ljava/lang/String;

    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->maxCreditAmount:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4, v1}, Lcom/dodonew/online/ui/PayActivity;->checkPayAmount(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBarId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->domainId:Ljava/lang/String;

    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->userId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget-object v7, p0, Lcom/dodonew/online/ui/PayActivity;->type:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/dodonew/online/ui/PayActivity;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x7f0d00e9 -> :sswitch_5
        0x7f0d00ec -> :sswitch_0
        0x7f0d00ef -> :sswitch_1
        0x7f0d00f2 -> :sswitch_2
        0x7f0d00f9 -> :sswitch_3
        0x7f0d00fb -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PayActivity;->setContentView(I)V

    .line 92
    invoke-direct {p0}, Lcom/dodonew/online/ui/PayActivity;->initView()V

    .line 93
    invoke-direct {p0}, Lcom/dodonew/online/ui/PayActivity;->initData()V

    .line 94
    invoke-direct {p0}, Lcom/dodonew/online/ui/PayActivity;->initEvent()V

    .line 95
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 447
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->chooseNetbarDialog:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    iget-object v1, v1, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->netBarCaptions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/NetBarCaption;

    iput-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBarCaption:Lcom/dodonew/online/bean/NetBarCaption;

    .line 448
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->tvNetbar:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->netBarCaption:Lcom/dodonew/online/bean/NetBarCaption;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/NetBarCaption;->getNetBarCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->chooseNetbarDialog:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->dismiss()V

    .line 450
    const v0, 0x7f020062

    .line 451
    .local v0, "res":I
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBarCaption:Lcom/dodonew/online/bean/NetBarCaption;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBarCaption;->getUseWxpay()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBarCaption:Lcom/dodonew/online/bean/NetBarCaption;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBarCaption;->getNetBarId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBarId:Ljava/lang/String;

    .line 453
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->btnPay:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 454
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->btnPay:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 455
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBarId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dodonew/online/ui/PayActivity;->domainId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->userId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dodonew/online/ui/PayActivity;->getRechargeAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBarCaption:Lcom/dodonew/online/bean/NetBarCaption;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBarCaption;->getUseWxpay()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const-string v1, ""

    iput-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->netBarId:Ljava/lang/String;

    .line 458
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v2, Lcom/dodonew/online/widget/MultiStateView$ViewState;->ERROR:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 459
    const v0, 0x7f02005e

    .line 460
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->btnPay:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 461
    iget-object v1, p0, Lcom/dodonew/online/ui/PayActivity;->btnPay:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 560
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 561
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 563
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 554
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 555
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 557
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 467
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 468
    const-string p1, "0"

    .line 470
    :cond_0
    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->policyAdapter:Lcom/dodonew/online/adapter/PolicyAdapter;

    invoke-virtual {v3}, Lcom/dodonew/online/adapter/PolicyAdapter;->getPos()I

    move-result v1

    .line 471
    .local v1, "pos":I
    if-ltz v1, :cond_1

    .line 472
    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->policyAdapter:Lcom/dodonew/online/adapter/PolicyAdapter;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/dodonew/online/adapter/PolicyAdapter;->setPos(I)V

    .line 474
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 475
    .local v0, "pay":I
    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->minCreditAmount:Ljava/lang/String;

    iget-object v4, p0, Lcom/dodonew/online/ui/PayActivity;->maxCreditAmount:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/dodonew/online/ui/PayActivity;->checkPayAmount(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 476
    iget-object v3, p0, Lcom/dodonew/online/ui/PayActivity;->tvPayMoney:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iput v0, p0, Lcom/dodonew/online/ui/PayActivity;->getMoney:I

    .line 478
    iget v3, p0, Lcom/dodonew/online/ui/PayActivity;->consumeReq:I

    if-ltz v3, :cond_2

    .line 479
    iget v3, p0, Lcom/dodonew/online/ui/PayActivity;->consumeReq:I

    if-le v3, v0, :cond_4

    :goto_0
    iput-boolean v2, p0, Lcom/dodonew/online/ui/PayActivity;->canUserTicket:Z

    .line 481
    :cond_2
    invoke-direct {p0}, Lcom/dodonew/online/ui/PayActivity;->setCanUserTicket()V

    .line 484
    :cond_3
    return-void

    .line 479
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public result(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 568
    return-void
.end method
