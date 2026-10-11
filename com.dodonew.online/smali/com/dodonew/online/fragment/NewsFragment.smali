.class public Lcom/dodonew/online/fragment/NewsFragment;
.super Lcom/dodonew/online/base/BaseFragment;
.source "NewsFragment.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private activity:Landroid/app/Activity;

.field private hasMore:Z

.field private isPrepared:Z

.field private limit:Ljava/lang/String;

.field private mHasLoadedOnce:Z

.field private materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field private newsAdapter:Lcom/dodonew/online/adapter/NewsAdapter;

.field private newses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/News;",
            ">;"
        }
    .end annotation
.end field

.field private onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

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

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/dodonew/online/base/BaseFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->para:Ljava/util/Map;

    .line 56
    iput v1, p0, Lcom/dodonew/online/fragment/NewsFragment;->page:I

    .line 57
    const-string v0, "10"

    iput-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->limit:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/dodonew/online/fragment/NewsFragment;->slide:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/fragment/NewsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NewsFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->page:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/fragment/NewsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NewsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/dodonew/online/fragment/NewsFragment;->page:I

    return p1
.end method

.method static synthetic access$1000(Lcom/dodonew/online/fragment/NewsFragment;)Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NewsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dodonew/online/fragment/NewsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NewsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/dodonew/online/fragment/NewsFragment;->slide:I

    return p1
.end method

.method static synthetic access$1100(Lcom/dodonew/online/fragment/NewsFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NewsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->newses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/fragment/NewsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NewsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/NewsFragment;->addRequestPara(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/fragment/NewsFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NewsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->para:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/fragment/NewsFragment;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NewsFragment;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/NewsFragment;->requestNetwork(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/fragment/NewsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NewsFragment;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$602(Lcom/dodonew/online/fragment/NewsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NewsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/dodonew/online/fragment/NewsFragment;->mHasLoadedOnce:Z

    return p1
.end method

.method static synthetic access$700(Lcom/dodonew/online/fragment/NewsFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NewsFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/NewsFragment;->setNewses(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/dodonew/online/fragment/NewsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NewsFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/dodonew/online/fragment/NewsFragment;->setNewsAdapter()V

    return-void
.end method

.method static synthetic access$900(Lcom/dodonew/online/fragment/NewsFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/NewsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    return-object v0
.end method

.method private addRequestPara(Ljava/lang/String;)V
    .locals 3
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->para:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->para:Ljava/util/Map;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->para:Ljava/util/Map;

    const-string v1, "page"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->para:Ljava/util/Map;

    const-string v1, "limit"

    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->limit:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/fragment/NewsFragment$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/fragment/NewsFragment$1;-><init>(Lcom/dodonew/online/fragment/NewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 134
    return-void
.end method

.method public static newInstance()Lcom/dodonew/online/fragment/NewsFragment;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/dodonew/online/fragment/NewsFragment;

    invoke-direct {v0}, Lcom/dodonew/online/fragment/NewsFragment;-><init>()V

    return-object v0
.end method

.method private queryNewsData(Ljava/lang/String;)V
    .locals 7
    .param p1, "pg"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/NewsFragment;->addRequestPara(Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/dodonew/online/fragment/NewsFragment$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/fragment/NewsFragment$2;-><init>(Lcom/dodonew/online/fragment/NewsFragment;)V

    .line 158
    invoke-virtual {v0}, Lcom/dodonew/online/fragment/NewsFragment$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 159
    const-string v2, "http://api.dodovip.com/api/news/fillData"

    .line 160
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    iget-object v1, p0, Lcom/dodonew/online/fragment/NewsFragment;->activity:Landroid/app/Activity;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/fragment/NewsFragment$3;

    invoke-direct {v4, p0}, Lcom/dodonew/online/fragment/NewsFragment$3;-><init>(Lcom/dodonew/online/fragment/NewsFragment;)V

    new-instance v5, Lcom/dodonew/online/fragment/NewsFragment$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/fragment/NewsFragment$4;-><init>(Lcom/dodonew/online/fragment/NewsFragment;)V

    iget-object v6, p0, Lcom/dodonew/online/fragment/NewsFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 189
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->para:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/NewsFragment;->requestNetwork(Ljava/util/Map;)V

    .line 190
    return-void
.end method

.method private requestNetwork(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 199
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method private setNewsAdapter()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->newsAdapter:Lcom/dodonew/online/adapter/NewsAdapter;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/dodonew/online/adapter/NewsAdapter;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->newses:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/NewsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->newsAdapter:Lcom/dodonew/online/adapter/NewsAdapter;

    .line 232
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/fragment/NewsFragment;->newsAdapter:Lcom/dodonew/online/adapter/NewsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 233
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->newsAdapter:Lcom/dodonew/online/adapter/NewsAdapter;

    new-instance v1, Lcom/dodonew/online/fragment/NewsFragment$5;

    invoke-direct {v1, p0}, Lcom/dodonew/online/fragment/NewsFragment$5;-><init>(Lcom/dodonew/online/fragment/NewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/NewsAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->newsAdapter:Lcom/dodonew/online/adapter/NewsAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/NewsAdapter;->notifyDataSetChanged()V

    .line 243
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NewsFragment;->onFinishRefresh()V

    .line 244
    return-void
.end method

.method private setNewses(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/News;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/News;>;"
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->newses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->newses:Ljava/util/List;

    .line 211
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->hasMore:Z

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v1, p0, Lcom/dodonew/online/fragment/NewsFragment;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 217
    iget v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->slide:I

    if-nez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->newses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 219
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->newses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    :goto_1
    return-void

    .line 214
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->hasMore:Z

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->newses:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/fragment/NewsFragment;->newses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1
.end method


# virtual methods
.method protected lazyLoad()V
    .locals 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->isPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->mHasLoadedOnce:Z

    if-eqz v0, :cond_2

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NewsFragment;->onFinishRefresh()V

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    invoke-interface {v0}, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;->onRequest()V

    .line 268
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->page:I

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/dodonew/online/fragment/NewsFragment;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/NewsFragment;->queryNewsData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/fragment/NewsFragment;->activity:Landroid/app/Activity;

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NewsFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    iput-object v1, p0, Lcom/dodonew/online/fragment/NewsFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Calling fragment must implement HomeFragment.OnNetworkResponseListener interface"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 86
    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->view:Landroid/view/View;

    if-nez v2, :cond_0

    .line 87
    const v2, 0x7f03008b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->view:Landroid/view/View;

    .line 88
    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0242

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 89
    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v2, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 90
    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0243

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 91
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 93
    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 94
    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 95
    iput-boolean v4, p0, Lcom/dodonew/online/fragment/NewsFragment;->isPrepared:Z

    .line 96
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NewsFragment;->lazyLoad()V

    .line 98
    .end local v0    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 99
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 100
    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/dodonew/online/fragment/NewsFragment;->initEvent()V

    .line 103
    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment;->view:Landroid/view/View;

    return-object v2
.end method

.method public onFinishRefresh()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 249
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 250
    return-void
.end method

.method protected onInvisible()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NewsFragment;->onFinishRefresh()V

    .line 256
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Lcom/dodonew/online/base/BaseFragment;->onPause()V

    .line 275
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NewsFragment;->onFinishRefresh()V

    .line 276
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/NewsFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 277
    return-void
.end method
