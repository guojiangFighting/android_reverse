.class public Lcom/dodonew/online/ui/TicketActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "TicketActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private domainId:Ljava/lang/String;

.field private hasMore:Z

.field private limit:Ljava/lang/String;

.field private materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private netBarId:Ljava/lang/String;

.field private page:I

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

.field private pos:I

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private slide:I

.field private tag:Ljava/lang/String;

.field private ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

.field private tickets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Ticket;",
            ">;"
        }
    .end annotation
.end field

.field tmp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Ticket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 53
    const-string v0, "10"

    iput-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->limit:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/dodonew/online/ui/TicketActivity;->page:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/ui/TicketActivity;->pos:I

    .line 61
    iput v1, p0, Lcom/dodonew/online/ui/TicketActivity;->slide:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/TicketActivity;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/TicketActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/TicketActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/dodonew/online/ui/TicketActivity;->page:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/ui/TicketActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/TicketActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/dodonew/online/ui/TicketActivity;->page:I

    return p1
.end method

.method static synthetic access$1002(Lcom/dodonew/online/ui/TicketActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/TicketActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/dodonew/online/ui/TicketActivity;->pos:I

    return p1
.end method

.method static synthetic access$102(Lcom/dodonew/online/ui/TicketActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/TicketActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/dodonew/online/ui/TicketActivity;->slide:I

    return p1
.end method

.method static synthetic access$1100(Lcom/dodonew/online/ui/TicketActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/TicketActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->tickets:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/TicketActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/TicketActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->netBarId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/TicketActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/TicketActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/TicketActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/TicketActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->limit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/TicketActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/TicketActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dodonew/online/ui/TicketActivity;->queryTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/TicketActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/TicketActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/dodonew/online/ui/TicketActivity;->hasMore:Z

    return v0
.end method

.method static synthetic access$700(Lcom/dodonew/online/ui/TicketActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/TicketActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/TicketActivity;->setTickets(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/dodonew/online/ui/TicketActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/TicketActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/ui/TicketActivity;->setTicketAdapter()V

    return-void
.end method

.method static synthetic access$900(Lcom/dodonew/online/ui/TicketActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/TicketActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/ui/TicketActivity;->onFinishRefresh()V

    return-void
.end method

.method private filterTicket(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Ticket;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Ticket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Ticket;>;"
    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->tmp:Ljava/util/List;

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->tmp:Ljava/util/List;

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->tmp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Ticket;

    .line 209
    .local v0, "ticket":Lcom/dodonew/online/bean/Ticket;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Ticket;->getEndTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dodonew/online/util/Utils;->formatTime(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/dodonew/online/ui/TicketActivity;->tmp:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    .end local v0    # "ticket":Lcom/dodonew/online/bean/Ticket;
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->tmp:Ljava/util/List;

    return-object v1
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/ui/TicketActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/TicketActivity$1;-><init>(Lcom/dodonew/online/ui/TicketActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 122
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 75
    const-string v1, "\u7f51\u8d39\u5238"

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/TicketActivity;->setTitle(Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/TicketActivity;->setNavigationIcon(I)V

    .line 77
    const v1, 0x7f0d0242

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 78
    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v1, v3}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 79
    const v1, 0x7f0d0090

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 80
    const v1, 0x7f0d0243

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/TicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 81
    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 83
    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 84
    invoke-virtual {p0}, Lcom/dodonew/online/ui/TicketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "netBarId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->netBarId:Ljava/lang/String;

    .line 86
    const-string v1, "domainId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->domainId:Ljava/lang/String;

    .line 87
    const-string v1, "tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->tag:Ljava/lang/String;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->para:Ljava/util/Map;

    .line 89
    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->netBarId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->domainId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    const-string v1, "\u6570\u636e\u9519\u8bef"

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/TicketActivity;->showToast(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->netBarId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dodonew/online/ui/TicketActivity;->domainId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dodonew/online/ui/TicketActivity;->limit:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/dodonew/online/ui/TicketActivity;->page:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dodonew/online/ui/TicketActivity;->queryTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onFinishRefresh()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 259
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 260
    return-void
.end method

.method private queryTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "netBarId"    # Ljava/lang/String;
    .param p2, "domainId"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/String;
    .param p4, "page"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lcom/dodonew/online/ui/TicketActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/TicketActivity$2;-><init>(Lcom/dodonew/online/ui/TicketActivity;)V

    .line 134
    invoke-virtual {v0}, Lcom/dodonew/online/ui/TicketActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 135
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 136
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->para:Ljava/util/Map;

    const-string v1, "limit"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->para:Ljava/util/Map;

    const-string v1, "userAccount"

    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->para:Ljava/util/Map;

    const-string v1, "page"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "oth/ticket/list"

    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/TicketActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/TicketActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 142
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
    .line 150
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/ui/TicketActivity;->showProgress()V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/TicketActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/TicketActivity$3;-><init>(Lcom/dodonew/online/ui/TicketActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/TicketActivity$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/TicketActivity$4;-><init>(Lcom/dodonew/online/ui/TicketActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 174
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 175
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method private sentResult()V
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->tag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/dodonew/online/ui/TicketActivity;->setResult(ILandroid/content/Intent;)V

    .line 254
    invoke-virtual {p0}, Lcom/dodonew/online/ui/TicketActivity;->finish()V

    goto :goto_0
.end method

.method private setTicketAdapter()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/dodonew/online/adapter/TicketAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->tickets:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/TicketAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    .line 219
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 220
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    new-instance v1, Lcom/dodonew/online/ui/TicketActivity$5;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/TicketActivity$5;-><init>(Lcom/dodonew/online/ui/TicketActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/TicketAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/TicketAdapter;->notifyDataSetChanged()V

    .line 231
    invoke-direct {p0}, Lcom/dodonew/online/ui/TicketActivity;->onFinishRefresh()V

    .line 232
    return-void
.end method

.method private setTickets(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Ticket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Ticket;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->tickets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->tickets:Ljava/util/List;

    .line 182
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/TicketActivity;->hasMore:Z

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v1, p0, Lcom/dodonew/online/ui/TicketActivity;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 188
    iget v0, p0, Lcom/dodonew/online/ui/TicketActivity;->slide:I

    if-nez v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->tickets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->tickets:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/TicketActivity;->filterTicket(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->tickets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 199
    :goto_1
    return-void

    .line 185
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/TicketActivity;->hasMore:Z

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_1

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->tickets:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity;->tickets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/TicketActivity;->filterTicket(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v0, 0xb

    .line 236
    invoke-super {p0, p1, p2, p3}, Lcom/dodonew/online/base/TitleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 237
    if-ne p1, v0, :cond_0

    .line 238
    if-ne p2, v0, :cond_0

    .line 239
    iget v0, p0, Lcom/dodonew/online/ui/TicketActivity;->pos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->tickets:Ljava/util/List;

    iget v1, p0, Lcom/dodonew/online/ui/TicketActivity;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Ticket;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/dodonew/online/bean/Ticket;->setIsAlreadyGet(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    iget v1, p0, Lcom/dodonew/online/ui/TicketActivity;->pos:I

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/TicketAdapter;->notifyItemChanged(I)V

    .line 242
    invoke-direct {p0}, Lcom/dodonew/online/ui/TicketActivity;->sentResult()V

    .line 246
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/TicketActivity;->setContentView(I)V

    .line 70
    invoke-direct {p0}, Lcom/dodonew/online/ui/TicketActivity;->initView()V

    .line 71
    invoke-direct {p0}, Lcom/dodonew/online/ui/TicketActivity;->initEvent()V

    .line 72
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 273
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 274
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 276
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 268
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 270
    return-void
.end method
