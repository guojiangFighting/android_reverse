.class public Lcom/dodonew/online/ui/ExchangeRecordActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "ExchangeRecordActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private exchangeRecordAdapter:Lcom/dodonew/online/adapter/ExchangeRecordAdapter;

.field private exchangeRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/ExchangeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private hasMore:Z

.field private limit:I

.field private materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

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

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->para:Ljava/util/Map;

    .line 45
    const/16 v0, 0xa

    iput v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->limit:I

    .line 46
    iput v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->page:I

    .line 58
    iput v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->slide:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/ExchangeRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ExchangeRecordActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->page:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/ui/ExchangeRecordActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ExchangeRecordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->page:I

    return p1
.end method

.method static synthetic access$102(Lcom/dodonew/online/ui/ExchangeRecordActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ExchangeRecordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->slide:I

    return p1
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/ExchangeRecordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ExchangeRecordActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->queryExchangeRecord()V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/ExchangeRecordActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ExchangeRecordActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->hasMore:Z

    return v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/ExchangeRecordActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ExchangeRecordActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->setExchangeRecords(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/ExchangeRecordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ExchangeRecordActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->onFinishRefresh()V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/ui/ExchangeRecordActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ExchangeRecordActivity$1;-><init>(Lcom/dodonew/online/ui/ExchangeRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 108
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 70
    const-string v0, "\u5151\u6362\u8bb0\u5f55"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->setTitle(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->setNavigationIcon(I)V

    .line 72
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 73
    const v0, 0x7f0d0242

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 74
    const v0, 0x7f0d0243

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 75
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 76
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 77
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 78
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 79
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->userId:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->queryExchangeRecord()V

    .line 81
    return-void
.end method

.method private onFinishRefresh()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 196
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 197
    return-void
.end method

.method private queryExchangeRecord()V
    .locals 4

    .prologue
    .line 111
    new-instance v0, Lcom/dodonew/online/ui/ExchangeRecordActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/ExchangeRecordActivity$2;-><init>(Lcom/dodonew/online/ui/ExchangeRecordActivity;)V

    .line 112
    invoke-virtual {v0}, Lcom/dodonew/online/ui/ExchangeRecordActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->para:Ljava/util/Map;

    const-string v1, "PageNo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->para:Ljava/util/Map;

    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "gift/exchangeInfo"

    iget-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 118
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
    .line 126
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

    .line 127
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/ExchangeRecordActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/ExchangeRecordActivity$3;-><init>(Lcom/dodonew/online/ui/ExchangeRecordActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/ExchangeRecordActivity$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/ExchangeRecordActivity$4;-><init>(Lcom/dodonew/online/ui/ExchangeRecordActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 147
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method private setExchangeRecordAdapter()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecordAdapter:Lcom/dodonew/online/adapter/ExchangeRecordAdapter;

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;

    iget-object v2, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecords:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecordAdapter:Lcom/dodonew/online/adapter/ExchangeRecordAdapter;

    .line 176
    iget-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecordAdapter:Lcom/dodonew/online/adapter/ExchangeRecordAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 177
    new-instance v0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    iget-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecordAdapter:Lcom/dodonew/online/adapter/ExchangeRecordAdapter;

    invoke-direct {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;-><init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;)V

    .line 178
    .local v0, "headersDecor":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
    iget-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 179
    iget-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecordAdapter:Lcom/dodonew/online/adapter/ExchangeRecordAdapter;

    new-instance v2, Lcom/dodonew/online/ui/ExchangeRecordActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/dodonew/online/ui/ExchangeRecordActivity$5;-><init>(Lcom/dodonew/online/ui/ExchangeRecordActivity;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;)V

    invoke-virtual {v1, v2}, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 186
    .end local v0    # "headersDecor":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecordAdapter:Lcom/dodonew/online/adapter/ExchangeRecordAdapter;

    invoke-virtual {v1}, Lcom/dodonew/online/adapter/ExchangeRecordAdapter;->notifyDataSetChanged()V

    .line 187
    iget-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v2, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 191
    :goto_0
    invoke-direct {p0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->onFinishRefresh()V

    .line 192
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v2, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method

.method private setExchangeRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/ExchangeRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/ExchangeRecord;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecords:Ljava/util/List;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecords:Ljava/util/List;

    .line 155
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->limit:I

    if-ge v0, v1, :cond_2

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->hasMore:Z

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 162
    iget v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->slide:I

    if-nez v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->setExchangeRecordAdapter()V

    .line 170
    return-void

    .line 159
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->hasMore:Z

    goto :goto_0

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecords:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity;->exchangeRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->initView()V

    .line 66
    invoke-direct {p0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->initEvent()V

    .line 67
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 208
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 209
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 202
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 203
    return-void
.end method
