.class public Lcom/dodonew/online/ui/MyTicketActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "MyTicketActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private domainId:Ljava/lang/String;

.field private hasMore:Z

.field private isResult:Z

.field private limit:Ljava/lang/String;

.field private location:Ljava/lang/String;

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

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private slide:I

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

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 51
    const-string v0, "10"

    iput-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->limit:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/dodonew/online/ui/MyTicketActivity;->page:I

    .line 55
    iput-boolean v1, p0, Lcom/dodonew/online/ui/MyTicketActivity;->isResult:Z

    .line 59
    iput v1, p0, Lcom/dodonew/online/ui/MyTicketActivity;->slide:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/MyTicketActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyTicketActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->page:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/ui/MyTicketActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyTicketActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/dodonew/online/ui/MyTicketActivity;->page:I

    return p1
.end method

.method static synthetic access$102(Lcom/dodonew/online/ui/MyTicketActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyTicketActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/dodonew/online/ui/MyTicketActivity;->slide:I

    return p1
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/MyTicketActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyTicketActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyTicketActivity;->queryMyTicket()V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/MyTicketActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyTicketActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->hasMore:Z

    return v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/MyTicketActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyTicketActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/MyTicketActivity;->setTickets(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/MyTicketActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyTicketActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyTicketActivity;->setTicketAdapter()V

    return-void
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/MyTicketActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyTicketActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->isResult:Z

    return v0
.end method

.method static synthetic access$700(Lcom/dodonew/online/ui/MyTicketActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyTicketActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dodonew/online/ui/MyTicketActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyTicketActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->location:Ljava/lang/String;

    return-object v0
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/ui/MyTicketActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/MyTicketActivity$1;-><init>(Lcom/dodonew/online/ui/MyTicketActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 130
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 81
    const-string v3, "\u6211\u7684\u4f18\u60e0\u5238"

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/MyTicketActivity;->setTitle(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v6}, Lcom/dodonew/online/ui/MyTicketActivity;->setNavigationIcon(I)V

    .line 83
    const v3, 0x7f0d0090

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/MyTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 84
    const v3, 0x7f0d0242

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/MyTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 85
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v3, v5}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 86
    const v3, 0x7f0d0243

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/MyTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 87
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 88
    .local v2, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 90
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v4}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 91
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->para:Ljava/util/Map;

    .line 92
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MyTicketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "netBarId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->netBarId:Ljava/lang/String;

    .line 94
    const-string v3, "domainId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->domainId:Ljava/lang/String;

    .line 95
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->netBarId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    iput-boolean v5, p0, Lcom/dodonew/online/ui/MyTicketActivity;->isResult:Z

    .line 97
    const v3, 0x7f0d00ba

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/MyTicketActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 98
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .end local v0    # "btn":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private onFinishRefresh()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 278
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 279
    return-void
.end method

.method private queryMyTicket()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->userId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/dodonew/online/ui/MyTicketActivity;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/MyTicketActivity;->limit:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/MyTicketActivity;->queryMyTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private queryMyTicket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    new-instance v0, Lcom/dodonew/online/ui/MyTicketActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/MyTicketActivity$2;-><init>(Lcom/dodonew/online/ui/MyTicketActivity;)V

    .line 145
    invoke-virtual {v0}, Lcom/dodonew/online/ui/MyTicketActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->para:Ljava/util/Map;

    const-string v1, "userAccount"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->para:Ljava/util/Map;

    const-string v1, "page"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->para:Ljava/util/Map;

    const-string v1, "limit"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "oth/ticket/recordlist"

    iget-object v1, p0, Lcom/dodonew/online/ui/MyTicketActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyTicketActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/MyTicketActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 151
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
    .line 159
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

    .line 160
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/MyTicketActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/MyTicketActivity$3;-><init>(Lcom/dodonew/online/ui/MyTicketActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/MyTicketActivity$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/MyTicketActivity$4;-><init>(Lcom/dodonew/online/ui/MyTicketActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 179
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 180
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method private setTicketAdapter()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/dodonew/online/adapter/TicketAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/TicketAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    .line 238
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyTicketActivity;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 239
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    new-instance v1, Lcom/dodonew/online/ui/MyTicketActivity$5;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/MyTicketActivity$5;-><init>(Lcom/dodonew/online/ui/MyTicketActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/TicketAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/TicketAdapter;->notifyDataSetChanged()V

    .line 260
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyTicketActivity;->onFinishRefresh()V

    .line 261
    return-void
.end method

.method private setTickets(Ljava/util/List;)V
    .locals 9
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
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Ticket;>;"
    const/4 v8, 0x0

    .line 184
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    if-nez v3, :cond_0

    .line 185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    .line 187
    :cond_0
    const/4 v0, 0x0

    .line 189
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Ticket;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/Ticket;

    .line 192
    .local v2, "ticket":Lcom/dodonew/online/bean/Ticket;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Ticket;->getEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dodonew/online/util/Utils;->formatTime(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 193
    iget-boolean v4, p0, Lcom/dodonew/online/ui/MyTicketActivity;->isResult:Z

    if-eqz v4, :cond_2

    .line 194
    invoke-virtual {v2}, Lcom/dodonew/online/bean/Ticket;->getNetBarId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dodonew/online/ui/MyTicketActivity;->netBarId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Ticket;->getDomainId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dodonew/online/ui/MyTicketActivity;->domainId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v2    # "ticket":Lcom/dodonew/online/bean/Ticket;
    :cond_3
    iget-boolean v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->isResult:Z

    if-nez v3, :cond_6

    .line 204
    iget v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->slide:I

    if-nez v3, :cond_5

    .line 205
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 206
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 220
    :goto_2
    const/16 v3, 0xa

    if-ge v0, v3, :cond_8

    .line 221
    iput-boolean v8, p0, Lcom/dodonew/online/ui/MyTicketActivity;->hasMore:Z

    .line 225
    :goto_3
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v3, v8}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 226
    iget v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->slide:I

    if-nez v3, :cond_4

    .line 227
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 228
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v4, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 233
    :cond_4
    :goto_4
    return-void

    .line 208
    :cond_5
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    iget-object v4, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    .line 212
    :cond_6
    iget v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->slide:I

    if-nez v3, :cond_7

    .line 213
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 214
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    :goto_5
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    .line 216
    :cond_7
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    iget-object v4, p0, Lcom/dodonew/online/ui/MyTicketActivity;->tickets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_5

    .line 223
    :cond_8
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->hasMore:Z

    goto :goto_3

    .line 230
    :cond_9
    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v4, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_4
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v0, 0xc

    .line 283
    invoke-super {p0, p1, p2, p3}, Lcom/dodonew/online/base/TitleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 284
    if-ne p1, v0, :cond_0

    .line 285
    if-ne p2, v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyTicketActivity;->queryMyTicket()V

    .line 291
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 274
    :goto_0
    return-void

    .line 267
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dodonew/online/ui/TicketActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "netBarId"

    iget-object v2, p0, Lcom/dodonew/online/ui/MyTicketActivity;->netBarId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v1, "domainId"

    iget-object v2, p0, Lcom/dodonew/online/ui/MyTicketActivity;->domainId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v1, "tag"

    const-string v2, "tag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/dodonew/online/ui/MyTicketActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x7f0d00ba
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyTicketActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyTicketActivity;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyTicketActivity;->initEvent()V

    .line 70
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->userId:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity;->location:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyTicketActivity;->queryMyTicket()V

    .line 73
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 304
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 305
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 307
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 298
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 299
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 301
    return-void
.end method
