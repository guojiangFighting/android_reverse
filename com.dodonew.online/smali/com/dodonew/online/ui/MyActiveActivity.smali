.class public Lcom/dodonew/online/ui/MyActiveActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "MyActiveActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private actives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/MyActive;",
            ">;"
        }
    .end annotation
.end field

.field private hasMore:Z

.field private limit:I

.field private materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private myActiveAdapter:Lcom/dodonew/online/adapter/MyActiveAdapter;

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

    .line 43
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->para:Ljava/util/Map;

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->limit:I

    .line 48
    iput v1, p0, Lcom/dodonew/online/ui/MyActiveActivity;->page:I

    .line 60
    iput v1, p0, Lcom/dodonew/online/ui/MyActiveActivity;->slide:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/MyActiveActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyActiveActivity;

    .prologue
    .line 43
    iget v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->page:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/ui/MyActiveActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyActiveActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/dodonew/online/ui/MyActiveActivity;->page:I

    return p1
.end method

.method static synthetic access$102(Lcom/dodonew/online/ui/MyActiveActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyActiveActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/dodonew/online/ui/MyActiveActivity;->slide:I

    return p1
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/MyActiveActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyActiveActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyActiveActivity;->queryMyActive()V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/MyActiveActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyActiveActivity;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->hasMore:Z

    return v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/MyActiveActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyActiveActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/MyActiveActivity;->setActives(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/MyActiveActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyActiveActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyActiveActivity;->onFinishRefresh()V

    return-void
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/MyActiveActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyActiveActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->actives:Ljava/util/List;

    return-object v0
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/ui/MyActiveActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/MyActiveActivity$1;-><init>(Lcom/dodonew/online/ui/MyActiveActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 111
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    const-string v0, "\u6211\u7684\u6d3b\u52a8"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyActiveActivity;->setTitle(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyActiveActivity;->setNavigationIcon(I)V

    .line 74
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyActiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 75
    const v0, 0x7f0d0242

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyActiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 76
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 77
    const v0, 0x7f0d0243

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyActiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 78
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 79
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 80
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 81
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->userId:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyActiveActivity;->queryMyActive()V

    .line 83
    return-void
.end method

.method private onFinishRefresh()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 199
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 200
    return-void
.end method

.method private queryMyActive()V
    .locals 4

    .prologue
    .line 114
    new-instance v0, Lcom/dodonew/online/ui/MyActiveActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/MyActiveActivity$2;-><init>(Lcom/dodonew/online/ui/MyActiveActivity;)V

    .line 115
    invoke-virtual {v0}, Lcom/dodonew/online/ui/MyActiveActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->para:Ljava/util/Map;

    const-string v1, "userAccount"

    iget-object v2, p0, Lcom/dodonew/online/ui/MyActiveActivity;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->para:Ljava/util/Map;

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/MyActiveActivity;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->para:Ljava/util/Map;

    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/MyActiveActivity;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "oth/onlineplay/getOnlineRecordList"

    iget-object v1, p0, Lcom/dodonew/online/ui/MyActiveActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyActiveActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/MyActiveActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 121
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
    .line 129
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

    .line 130
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/MyActiveActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/MyActiveActivity$3;-><init>(Lcom/dodonew/online/ui/MyActiveActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/MyActiveActivity$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/MyActiveActivity$4;-><init>(Lcom/dodonew/online/ui/MyActiveActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 149
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 150
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method private setActives(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/MyActive;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/MyActive;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->actives:Ljava/util/List;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->actives:Ljava/util/List;

    .line 158
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 159
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/dodonew/online/ui/MyActiveActivity;->limit:I

    if-ge v0, v1, :cond_2

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->hasMore:Z

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v1, p0, Lcom/dodonew/online/ui/MyActiveActivity;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 165
    iget v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->slide:I

    if-nez v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->actives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->actives:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyActiveActivity;->setMyActiveAdapter()V

    .line 173
    return-void

    .line 162
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->hasMore:Z

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->actives:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyActiveActivity;->actives:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1
.end method

.method private setMyActiveAdapter()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->actives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->myActiveAdapter:Lcom/dodonew/online/adapter/MyActiveAdapter;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/dodonew/online/adapter/MyActiveAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyActiveActivity;->actives:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/MyActiveAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->myActiveAdapter:Lcom/dodonew/online/adapter/MyActiveAdapter;

    .line 179
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyActiveActivity;->myActiveAdapter:Lcom/dodonew/online/adapter/MyActiveAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 180
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->myActiveAdapter:Lcom/dodonew/online/adapter/MyActiveAdapter;

    new-instance v1, Lcom/dodonew/online/ui/MyActiveActivity$5;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/MyActiveActivity$5;-><init>(Lcom/dodonew/online/ui/MyActiveActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/MyActiveAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->myActiveAdapter:Lcom/dodonew/online/adapter/MyActiveAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/MyActiveAdapter;->notifyDataSetChanged()V

    .line 190
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 194
    :goto_0
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyActiveActivity;->onFinishRefresh()V

    .line 195
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyActiveActivity;->setContentView(I)V

    .line 67
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyActiveActivity;->initView()V

    .line 68
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyActiveActivity;->initEvent()V

    .line 69
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 214
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 216
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 208
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 210
    return-void
.end method
