.class public Lcom/dodonew/online/fragment/GuessFragment;
.super Lcom/dodonew/online/base/BaseFragment;
.source "GuessFragment.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private activity:Landroid/app/Activity;

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Category;",
            ">;"
        }
    .end annotation
.end field

.field private guessAdapter:Lcom/dodonew/online/adapter/GuessAdapter;

.field private isPrepared:Z

.field private mHasLoadedOnce:Z

.field private materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field private mpHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dodonew/online/bean/Category;",
            ">;"
        }
    .end annotation
.end field

.field private onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

.field private races:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Race;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/fragment/GuessFragment;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/GuessFragment;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/GuessFragment;->requestNetwork(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$102(Lcom/dodonew/online/fragment/GuessFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/GuessFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/dodonew/online/fragment/GuessFragment;->mHasLoadedOnce:Z

    return p1
.end method

.method static synthetic access$200(Lcom/dodonew/online/fragment/GuessFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/GuessFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/GuessFragment;->setCategories(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/fragment/GuessFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/GuessFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/fragment/GuessFragment;->setGuessAdapter()V

    return-void
.end method

.method static synthetic access$400(Lcom/dodonew/online/fragment/GuessFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/GuessFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/fragment/GuessFragment;)Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/GuessFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/fragment/GuessFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/GuessFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->mpHeader:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dodonew/online/fragment/GuessFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/GuessFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->races:Ljava/util/List;

    return-object v0
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/fragment/GuessFragment$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/fragment/GuessFragment$1;-><init>(Lcom/dodonew/online/fragment/GuessFragment;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 117
    return-void
.end method

.method public static newInstance()Lcom/dodonew/online/fragment/GuessFragment;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/dodonew/online/fragment/GuessFragment;

    invoke-direct {v0}, Lcom/dodonew/online/fragment/GuessFragment;-><init>()V

    return-object v0
.end method

.method private queryGuessData()V
    .locals 7

    .prologue
    .line 120
    new-instance v0, Lcom/dodonew/online/fragment/GuessFragment$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/fragment/GuessFragment$2;-><init>(Lcom/dodonew/online/fragment/GuessFragment;)V

    .line 121
    invoke-virtual {v0}, Lcom/dodonew/online/fragment/GuessFragment$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 122
    const-string v2, "http://api.dodovip.com/api/guess/fillData"

    .line 123
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    iget-object v1, p0, Lcom/dodonew/online/fragment/GuessFragment;->activity:Landroid/app/Activity;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/fragment/GuessFragment$3;

    invoke-direct {v4, p0}, Lcom/dodonew/online/fragment/GuessFragment$3;-><init>(Lcom/dodonew/online/fragment/GuessFragment;)V

    new-instance v5, Lcom/dodonew/online/fragment/GuessFragment$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/fragment/GuessFragment$4;-><init>(Lcom/dodonew/online/fragment/GuessFragment;)V

    iget-object v6, p0, Lcom/dodonew/online/fragment/GuessFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/GuessFragment;->requestNetwork(Ljava/util/Map;)V

    .line 153
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
    .line 156
    .local p1, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 157
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method private setCategories(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Category;>;"
    iget-object v1, p0, Lcom/dodonew/online/fragment/GuessFragment;->categories:Ljava/util/List;

    if-nez v1, :cond_0

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/fragment/GuessFragment;->categories:Ljava/util/List;

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/fragment/GuessFragment;->categories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 166
    if-eqz p1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/dodonew/online/fragment/GuessFragment;->categories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/dodonew/online/fragment/GuessFragment;->setRaces()V

    .line 170
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v0, 0x0

    .line 171
    .local v0, "isEmpty":Z
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/fragment/GuessFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/dodonew/online/fragment/GuessFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    invoke-interface {v1, v0}, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;->isDataEmpty(Z)V

    .line 174
    :cond_2
    return-void

    .line 170
    .end local v0    # "isEmpty":Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setGuessAdapter()V
    .locals 6

    .prologue
    .line 197
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->races:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->guessAdapter:Lcom/dodonew/online/adapter/GuessAdapter;

    if-nez v2, :cond_0

    .line 199
    new-instance v2, Lcom/dodonew/online/adapter/GuessAdapter;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/GuessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/fragment/GuessFragment;->races:Ljava/util/List;

    iget-object v5, p0, Lcom/dodonew/online/fragment/GuessFragment;->mpHeader:Ljava/util/Map;

    invoke-direct {v2, v3, v4, v5}, Lcom/dodonew/online/adapter/GuessAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->guessAdapter:Lcom/dodonew/online/adapter/GuessAdapter;

    .line 200
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/dodonew/online/fragment/GuessFragment;->guessAdapter:Lcom/dodonew/online/adapter/GuessAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 201
    new-instance v0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->guessAdapter:Lcom/dodonew/online/adapter/GuessAdapter;

    invoke-direct {v0, v2}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;-><init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;)V

    .line 202
    .local v0, "headersDecor":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 203
    new-instance v1, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;

    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, v2, v0}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;)V

    .line 205
    .local v1, "touchListener":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;
    new-instance v2, Lcom/dodonew/online/fragment/GuessFragment$5;

    invoke-direct {v2, p0}, Lcom/dodonew/online/fragment/GuessFragment$5;-><init>(Lcom/dodonew/online/fragment/GuessFragment;)V

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->setOnHeaderClickListener(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;)V

    .line 219
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 220
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->guessAdapter:Lcom/dodonew/online/adapter/GuessAdapter;

    new-instance v3, Lcom/dodonew/online/fragment/GuessFragment$6;

    invoke-direct {v3, p0, v0}, Lcom/dodonew/online/fragment/GuessFragment$6;-><init>(Lcom/dodonew/online/fragment/GuessFragment;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;)V

    invoke-virtual {v2, v3}, Lcom/dodonew/online/adapter/GuessAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 226
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->guessAdapter:Lcom/dodonew/online/adapter/GuessAdapter;

    new-instance v3, Lcom/dodonew/online/fragment/GuessFragment$7;

    invoke-direct {v3, p0}, Lcom/dodonew/online/fragment/GuessFragment$7;-><init>(Lcom/dodonew/online/fragment/GuessFragment;)V

    invoke-virtual {v2, v3}, Lcom/dodonew/online/adapter/GuessAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 238
    .end local v0    # "headersDecor":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
    .end local v1    # "touchListener":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->guessAdapter:Lcom/dodonew/online/adapter/GuessAdapter;

    invoke-virtual {v2}, Lcom/dodonew/online/adapter/GuessAdapter;->notifyDataSetChanged()V

    .line 239
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/GuessFragment;->finishRefresh()V

    .line 242
    :cond_1
    return-void
.end method

.method private setRaces()V
    .locals 6

    .prologue
    .line 177
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->races:Ljava/util/List;

    if-nez v2, :cond_0

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->races:Ljava/util/List;

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->mpHeader:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 181
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->mpHeader:Ljava/util/Map;

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->mpHeader:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 184
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->races:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 186
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->categories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Category;

    .line 187
    .local v0, "category":Lcom/dodonew/online/bean/Category;
    iget-object v3, p0, Lcom/dodonew/online/fragment/GuessFragment;->races:Ljava/util/List;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Category;->getCategorydata()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    new-instance v1, Lcom/dodonew/online/bean/Category;

    invoke-direct {v1}, Lcom/dodonew/online/bean/Category;-><init>()V

    .line 189
    .local v1, "headerCategory":Lcom/dodonew/online/bean/Category;
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Category;->getCategoryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dodonew/online/bean/Category;->setCategoryId(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Lcom/dodonew/online/bean/Category;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dodonew/online/bean/Category;->setCategoryName(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "MM\u6708dd\u65e5     EE"

    invoke-static {v4, v5, v3}, Lcom/dodonew/online/util/Utils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dodonew/online/bean/Category;->setPlayTime(Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/dodonew/online/fragment/GuessFragment;->mpHeader:Ljava/util/Map;

    iget-object v4, p0, Lcom/dodonew/online/fragment/GuessFragment;->races:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    .end local v0    # "category":Lcom/dodonew/online/bean/Category;
    .end local v1    # "headerCategory":Lcom/dodonew/online/bean/Category;
    :cond_2
    return-void
.end method


# virtual methods
.method public finishRefresh()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 258
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 259
    return-void
.end method

.method protected lazyLoad()V
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->isPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->mHasLoadedOnce:Z

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    invoke-interface {v0}, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;->onRequest()V

    .line 252
    :cond_2
    invoke-direct {p0}, Lcom/dodonew/online/fragment/GuessFragment;->queryGuessData()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/GuessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/fragment/GuessFragment;->activity:Landroid/app/Activity;

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/GuessFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    iput-object v1, p0, Lcom/dodonew/online/fragment/GuessFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Calling fragment must implement HomeFragment.OnNetworkResponseListener interface"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->view:Landroid/view/View;

    if-nez v2, :cond_0

    .line 84
    const v2, 0x7f030086

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->view:Landroid/view/View;

    .line 85
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0242

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 86
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v2, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 87
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0243

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 88
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/GuessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 90
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 91
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 92
    iput-boolean v5, p0, Lcom/dodonew/online/fragment/GuessFragment;->isPrepared:Z

    .line 93
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/GuessFragment;->lazyLoad()V

    .line 95
    .end local v0    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 96
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 97
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/GuessFragment;->finishRefresh()V

    .line 100
    invoke-direct {p0}, Lcom/dodonew/online/fragment/GuessFragment;->initEvent()V

    .line 101
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment;->view:Landroid/view/View;

    return-object v2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Lcom/dodonew/online/base/BaseFragment;->onPause()V

    .line 265
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/GuessFragment;->finishRefresh()V

    .line 266
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/GuessFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Lcom/dodonew/online/base/BaseFragment;->onResume()V

    .line 272
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/GuessFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 273
    return-void
.end method
