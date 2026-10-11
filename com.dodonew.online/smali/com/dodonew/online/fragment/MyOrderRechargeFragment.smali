.class public Lcom/dodonew/online/fragment/MyOrderRechargeFragment;
.super Lcom/dodonew/online/base/BaseFragment;
.source "MyOrderRechargeFragment.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private activity:Landroid/app/Activity;

.field private hasMore:Z

.field private isPrepared:Z

.field private limit:I

.field private mHasLoadedOnce:Z

.field private materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private orderRechargedapter:Lcom/dodonew/online/adapter/OrderRechargedapter;

.field private orderRecharges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/OrderRecharge;",
            ">;"
        }
    .end annotation
.end field

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

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/dodonew/online/base/BaseFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->para:Ljava/util/Map;

    .line 57
    iput v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->page:I

    .line 58
    const/16 v0, 0xa

    iput v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->limit:I

    .line 63
    iput v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->slide:I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->page:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyOrderRechargeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->page:I

    return p1
.end method

.method static synthetic access$102(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyOrderRechargeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->slide:I

    return p1
.end method

.method static synthetic access$200(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->queryMyOrder()V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$402(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyOrderRechargeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->mHasLoadedOnce:Z

    return p1
.end method

.method static synthetic access$500(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;Lcom/dodonew/online/bean/MyOrderRechargeResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyOrderRechargeFragment;
    .param p1, "x1"    # Lcom/dodonew/online/bean/MyOrderRechargeResult;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->setOrderResult(Lcom/dodonew/online/bean/MyOrderRechargeResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)Lcom/dodonew/online/widget/MultiStateView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRecharges:Ljava/util/List;

    return-object v0
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$1;-><init>(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 132
    return-void
.end method

.method public static newInstance()Lcom/dodonew/online/fragment/MyOrderRechargeFragment;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-direct {v0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;-><init>()V

    return-object v0
.end method

.method private onFinishRefresh()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 230
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 231
    return-void
.end method

.method private queryMyOrder()V
    .locals 4

    .prologue
    .line 135
    new-instance v0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$2;-><init>(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)V

    .line 136
    invoke-virtual {v0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->para:Ljava/util/Map;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->para:Ljava/util/Map;

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->para:Ljava/util/Map;

    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "user/getUserOrders"

    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 143
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
    .line 151
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

    .line 152
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->activity:Landroid/app/Activity;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$3;-><init>(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$4;-><init>(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)V

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 171
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 172
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method private setOrderResult(Lcom/dodonew/online/bean/MyOrderRechargeResult;)V
    .locals 3
    .param p1, "orderResult"    # Lcom/dodonew/online/bean/MyOrderRechargeResult;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRecharges:Ljava/util/List;

    if-nez v1, :cond_0

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRecharges:Ljava/util/List;

    .line 180
    :cond_0
    iget-object v0, p1, Lcom/dodonew/online/bean/MyOrderRechargeResult;->results:Ljava/util/List;

    .line 181
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/OrderRecharge;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 182
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->limit:I

    if-ge v1, v2, :cond_2

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->hasMore:Z

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->hasMore:Z

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 188
    iget v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->slide:I

    if-nez v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRecharges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 190
    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRecharges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->setOrderSeatAdapter()V

    .line 196
    return-void

    .line 185
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->hasMore:Z

    goto :goto_0

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRecharges:Ljava/util/List;

    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRecharges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1
.end method

.method private setOrderSeatAdapter()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRecharges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 201
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRechargedapter:Lcom/dodonew/online/adapter/OrderRechargedapter;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/dodonew/online/adapter/OrderRechargedapter;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRecharges:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/OrderRechargedapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRechargedapter:Lcom/dodonew/online/adapter/OrderRechargedapter;

    .line 203
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRechargedapter:Lcom/dodonew/online/adapter/OrderRechargedapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 204
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRechargedapter:Lcom/dodonew/online/adapter/OrderRechargedapter;

    new-instance v1, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$5;

    invoke-direct {v1, p0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$5;-><init>(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/OrderRechargedapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->orderRechargedapter:Lcom/dodonew/online/adapter/OrderRechargedapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/OrderRechargedapter;->notifyDataSetChanged()V

    .line 217
    :goto_0
    invoke-direct {p0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->onFinishRefresh()V

    .line 218
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method


# virtual methods
.method protected lazyLoad()V
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->isPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->mHasLoadedOnce:Z

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->queryMyOrder()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->activity:Landroid/app/Activity;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 83
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    if-eqz v2, :cond_0

    .line 84
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->userId:Ljava/lang/String;

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->view:Landroid/view/View;

    if-nez v2, :cond_1

    .line 87
    const v2, 0x7f03008d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->view:Landroid/view/View;

    .line 88
    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0090

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 89
    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0242

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 90
    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v2, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 91
    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0243

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 92
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 95
    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 96
    iput-boolean v4, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->isPrepared:Z

    .line 97
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->lazyLoad()V

    .line 99
    .end local v0    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 100
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 101
    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->initEvent()V

    .line 104
    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->view:Landroid/view/View;

    return-object v2
.end method
