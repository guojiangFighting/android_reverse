.class public Lcom/dodonew/online/ui/GetTicketActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "GetTicketActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private backGroundView:Landroid/widget/FrameLayout;

.field private btnGet:Landroid/widget/Button;

.field private isShow:Z

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

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

.field private ticket:Lcom/dodonew/online/bean/Ticket;

.field private tvMoney:Landroid/widget/TextView;

.field private tvNetBar:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->isShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/GetTicketActivity;Lcom/dodonew/online/bean/TicketDetail;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/GetTicketActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/TicketDetail;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/GetTicketActivity;->setTicket(Lcom/dodonew/online/bean/TicketDetail;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/GetTicketActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/GetTicketActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dodonew/online/ui/GetTicketActivity;->finishThis()V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/GetTicketActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/GetTicketActivity;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->isShow:Z

    return v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/GetTicketActivity;)Lcom/dodonew/online/bean/Ticket;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/GetTicketActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/GetTicketActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/GetTicketActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/dodonew/online/ui/GetTicketActivity;->getTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private finishThis()V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/dodonew/online/ui/GetTicketActivity;->setResult(ILandroid/content/Intent;)V

    .line 169
    invoke-virtual {p0}, Lcom/dodonew/online/ui/GetTicketActivity;->finish()V

    .line 170
    return-void
.end method

.method private getTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "userAccount"    # Ljava/lang/String;
    .param p3, "maxSum"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->isShow:Z

    .line 86
    new-instance v0, Lcom/dodonew/online/ui/GetTicketActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/GetTicketActivity$2;-><init>(Lcom/dodonew/online/ui/GetTicketActivity;)V

    .line 87
    invoke-virtual {v0}, Lcom/dodonew/online/ui/GetTicketActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 88
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 89
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->para:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->para:Ljava/util/Map;

    const-string v1, "userAccount"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->para:Ljava/util/Map;

    const-string v1, "maxSum"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "oth/ticket/receiveticket"

    iget-object v1, p0, Lcom/dodonew/online/ui/GetTicketActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/GetTicketActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/GetTicketActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 93
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 58
    const-string v1, "\u7f51\u8d39\u5238"

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/GetTicketActivity;->setTitle(Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/GetTicketActivity;->setNavigationIcon(I)V

    .line 60
    const v1, 0x7f0d0090

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/GetTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v1, p0, Lcom/dodonew/online/ui/GetTicketActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 61
    const v1, 0x7f0d00ba

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/GetTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/dodonew/online/ui/GetTicketActivity;->btnGet:Landroid/widget/Button;

    .line 62
    const v1, 0x7f0d01a0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/GetTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/dodonew/online/ui/GetTicketActivity;->backGroundView:Landroid/widget/FrameLayout;

    .line 63
    const v1, 0x7f0d01a1

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/GetTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/GetTicketActivity;->tvMoney:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0d01a3

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/GetTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/GetTicketActivity;->tvNetBar:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0d01a2

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/GetTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/ui/GetTicketActivity;->tvTime:Landroid/widget/TextView;

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/ui/GetTicketActivity;->para:Ljava/util/Map;

    .line 67
    invoke-virtual {p0}, Lcom/dodonew/online/ui/GetTicketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ticketId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/GetTicketActivity;->queryTicketById(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queryTicketById(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->isShow:Z

    .line 76
    new-instance v0, Lcom/dodonew/online/ui/GetTicketActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/GetTicketActivity$1;-><init>(Lcom/dodonew/online/ui/GetTicketActivity;)V

    .line 77
    invoke-virtual {v0}, Lcom/dodonew/online/ui/GetTicketActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 78
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->para:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "oth/ticket/info"

    iget-object v1, p0, Lcom/dodonew/online/ui/GetTicketActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/GetTicketActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/GetTicketActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 81
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
    .line 101
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->isShow:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/dodonew/online/ui/GetTicketActivity;->showProgress()V

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/GetTicketActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/GetTicketActivity$3;-><init>(Lcom/dodonew/online/ui/GetTicketActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/GetTicketActivity$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/GetTicketActivity$4;-><init>(Lcom/dodonew/online/ui/GetTicketActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 132
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 133
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method private setTicket(Lcom/dodonew/online/bean/TicketDetail;)V
    .locals 7
    .param p1, "ticketDetail"    # Lcom/dodonew/online/bean/TicketDetail;

    .prologue
    .line 137
    iget-object v4, p1, Lcom/dodonew/online/bean/TicketDetail;->result:Lcom/dodonew/online/bean/Ticket;

    iput-object v4, p0, Lcom/dodonew/online/ui/GetTicketActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    .line 138
    iget-object v4, p0, Lcom/dodonew/online/ui/GetTicketActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    if-eqz v4, :cond_1

    .line 139
    iget-object v4, p0, Lcom/dodonew/online/ui/GetTicketActivity;->tvMoney:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/dodonew/online/ui/GetTicketActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    invoke-virtual {v6}, Lcom/dodonew/online/bean/Ticket;->getPresentAmount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    div-int/lit8 v6, v6, 0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v4, p0, Lcom/dodonew/online/ui/GetTicketActivity;->tvNetBar:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/dodonew/online/ui/GetTicketActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    invoke-virtual {v5}, Lcom/dodonew/online/bean/Ticket;->getNetBarName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v4, p0, Lcom/dodonew/online/ui/GetTicketActivity;->tvTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6709\u6548\u671f\u81f3:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/dodonew/online/ui/GetTicketActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    invoke-virtual {v6}, Lcom/dodonew/online/bean/Ticket;->getEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v4, p0, Lcom/dodonew/online/ui/GetTicketActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Ticket;->getQuantity()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "quantity":Ljava/lang/String;
    iget-object v4, p0, Lcom/dodonew/online/ui/GetTicketActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Ticket;->getUsergetCount()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "get":Ljava/lang/String;
    iget-object v4, p0, Lcom/dodonew/online/ui/GetTicketActivity;->ticket:Lcom/dodonew/online/bean/Ticket;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/Ticket;->getPresentAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v1, v4, 0x64

    .line 145
    .local v1, "money":I
    const v3, 0x7f020122

    .line 146
    .local v3, "res":I
    const/16 v4, 0x32

    if-lt v1, v4, :cond_0

    .line 147
    const v3, 0x7f020123

    .line 149
    :cond_0
    invoke-static {v0}, Lcom/dodonew/online/util/Utils;->parseStringToInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2}, Lcom/dodonew/online/util/Utils;->parseStringToInt(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 150
    const v3, 0x7f020124

    .line 151
    iget-object v4, p0, Lcom/dodonew/online/ui/GetTicketActivity;->btnGet:Landroid/widget/Button;

    const v5, 0x7f02005c

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 152
    iget-object v4, p0, Lcom/dodonew/online/ui/GetTicketActivity;->btnGet:Landroid/widget/Button;

    const-string v5, "\u5df2\u9886\u5b8c"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :goto_0
    iget-object v4, p0, Lcom/dodonew/online/ui/GetTicketActivity;->backGroundView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 163
    .end local v0    # "get":Ljava/lang/String;
    .end local v1    # "money":I
    .end local v2    # "quantity":Ljava/lang/String;
    .end local v3    # "res":I
    :cond_1
    iget-object v4, p0, Lcom/dodonew/online/ui/GetTicketActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v5, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v4, v5}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 164
    return-void

    .line 154
    .restart local v0    # "get":Ljava/lang/String;
    .restart local v1    # "money":I
    .restart local v2    # "quantity":Ljava/lang/String;
    .restart local v3    # "res":I
    :cond_2
    iget-object v4, p0, Lcom/dodonew/online/ui/GetTicketActivity;->btnGet:Landroid/widget/Button;

    new-instance v5, Lcom/dodonew/online/ui/GetTicketActivity$5;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/GetTicketActivity$5;-><init>(Lcom/dodonew/online/ui/GetTicketActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/GetTicketActivity;->setContentView(I)V

    .line 54
    invoke-direct {p0}, Lcom/dodonew/online/ui/GetTicketActivity;->initView()V

    .line 55
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 184
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 178
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 180
    return-void
.end method
