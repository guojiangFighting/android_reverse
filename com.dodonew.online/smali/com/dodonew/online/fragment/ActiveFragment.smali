.class public Lcom/dodonew/online/fragment/ActiveFragment;
.super Lcom/dodonew/online/base/BaseFragment;
.source "ActiveFragment.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private activeAdapter:Lcom/dodonew/online/adapter/ActiveAdapter;

.field private actives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Active;",
            ">;"
        }
    .end annotation
.end field

.field private activity:Landroid/app/Activity;

.field private hasMore:Z

.field private isPrepared:Z

.field private limit:Ljava/lang/String;

.field private mHasLoadedOnce:Z

.field private materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

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

    .line 45
    invoke-direct {p0}, Lcom/dodonew/online/base/BaseFragment;-><init>()V

    .line 58
    iput v1, p0, Lcom/dodonew/online/fragment/ActiveFragment;->page:I

    .line 59
    const-string v0, "10"

    iput-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->limit:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/dodonew/online/fragment/ActiveFragment;->slide:I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/fragment/ActiveFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/ActiveFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->page:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/fragment/ActiveFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/ActiveFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/dodonew/online/fragment/ActiveFragment;->page:I

    return p1
.end method

.method static synthetic access$1000(Lcom/dodonew/online/fragment/ActiveFragment;)Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/ActiveFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dodonew/online/fragment/ActiveFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/ActiveFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/dodonew/online/fragment/ActiveFragment;->slide:I

    return p1
.end method

.method static synthetic access$1100(Lcom/dodonew/online/fragment/ActiveFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/ActiveFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->actives:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/fragment/ActiveFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/ActiveFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/ActiveFragment;->addRequestPara(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/fragment/ActiveFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/ActiveFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->para:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/fragment/ActiveFragment;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/ActiveFragment;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/ActiveFragment;->requestNetwork(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/fragment/ActiveFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/ActiveFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->hasMore:Z

    return v0
.end method

.method static synthetic access$602(Lcom/dodonew/online/fragment/ActiveFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/ActiveFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/dodonew/online/fragment/ActiveFragment;->mHasLoadedOnce:Z

    return p1
.end method

.method static synthetic access$700(Lcom/dodonew/online/fragment/ActiveFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/ActiveFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/ActiveFragment;->setActives(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/dodonew/online/fragment/ActiveFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/ActiveFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dodonew/online/fragment/ActiveFragment;->setAdapter()V

    return-void
.end method

.method static synthetic access$900(Lcom/dodonew/online/fragment/ActiveFragment;)Lcom/dodonew/online/interfaces/OnNetworkResponseListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/ActiveFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    return-object v0
.end method

.method private addRequestPara(Ljava/lang/String;)V
    .locals 3
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->para:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->para:Ljava/util/Map;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->para:Ljava/util/Map;

    const-string v1, "page"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->para:Ljava/util/Map;

    const-string v1, "limit"

    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->limit:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/fragment/ActiveFragment$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/fragment/ActiveFragment$1;-><init>(Lcom/dodonew/online/fragment/ActiveFragment;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 135
    return-void
.end method

.method public static newInstance()Lcom/dodonew/online/fragment/ActiveFragment;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-direct {v0}, Lcom/dodonew/online/fragment/ActiveFragment;-><init>()V

    return-object v0
.end method

.method private queryActiveData(Ljava/lang/String;)V
    .locals 7
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/ActiveFragment;->addRequestPara(Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/dodonew/online/fragment/ActiveFragment$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/fragment/ActiveFragment$2;-><init>(Lcom/dodonew/online/fragment/ActiveFragment;)V

    .line 154
    invoke-virtual {v0}, Lcom/dodonew/online/fragment/ActiveFragment$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 155
    const-string v2, "http://api.dodovip.com/api/oth/actvity/list"

    .line 156
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    iget-object v1, p0, Lcom/dodonew/online/fragment/ActiveFragment;->activity:Landroid/app/Activity;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/fragment/ActiveFragment$3;

    invoke-direct {v4, p0}, Lcom/dodonew/online/fragment/ActiveFragment$3;-><init>(Lcom/dodonew/online/fragment/ActiveFragment;)V

    new-instance v5, Lcom/dodonew/online/fragment/ActiveFragment$4;

    invoke-direct {v5, p0, p1}, Lcom/dodonew/online/fragment/ActiveFragment$4;-><init>(Lcom/dodonew/online/fragment/ActiveFragment;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/dodonew/online/fragment/ActiveFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 185
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->para:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/ActiveFragment;->requestNetwork(Ljava/util/Map;)V

    .line 186
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
    .line 189
    .local p1, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 190
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method private setActives(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Active;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Active;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 194
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->actives:Ljava/util/List;

    if-nez v2, :cond_0

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->actives:Ljava/util/List;

    .line 197
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 198
    const-string v2, "\u6ca1\u6709\u66f4\u591a\u6570\u636e."

    invoke-virtual {p0, v2}, Lcom/dodonew/online/fragment/ActiveFragment;->showToast(Ljava/lang/String;)V

    .line 200
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    .line 201
    iput-boolean v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->hasMore:Z

    .line 205
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v3, p0, Lcom/dodonew/online/fragment/ActiveFragment;->hasMore:Z

    invoke-virtual {v2, v3}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 206
    iget v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->slide:I

    if-nez v2, :cond_4

    .line 207
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->actives:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 208
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->actives:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    :goto_1
    iget v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->slide:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->page:I

    if-nez v2, :cond_2

    .line 213
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 214
    .local v0, "isEmpty":Z
    :goto_2
    iget-object v1, p0, Lcom/dodonew/online/fragment/ActiveFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/dodonew/online/fragment/ActiveFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    invoke-interface {v1, v0}, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;->isDataEmpty(Z)V

    .line 218
    .end local v0    # "isEmpty":Z
    :cond_2
    return-void

    .line 203
    :cond_3
    iput-boolean v1, p0, Lcom/dodonew/online/fragment/ActiveFragment;->hasMore:Z

    goto :goto_0

    .line 210
    :cond_4
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->actives:Ljava/util/List;

    iget-object v3, p0, Lcom/dodonew/online/fragment/ActiveFragment;->actives:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    :cond_5
    move v0, v1

    .line 213
    goto :goto_2
.end method

.method private setAdapter()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->activeAdapter:Lcom/dodonew/online/adapter/ActiveAdapter;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/dodonew/online/adapter/ActiveAdapter;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/ActiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->actives:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/ActiveAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->activeAdapter:Lcom/dodonew/online/adapter/ActiveAdapter;

    .line 223
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->activeAdapter:Lcom/dodonew/online/adapter/ActiveAdapter;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/ActiveAdapter;->setDefaultRes(I)V

    .line 224
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/fragment/ActiveFragment;->activeAdapter:Lcom/dodonew/online/adapter/ActiveAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 225
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->activeAdapter:Lcom/dodonew/online/adapter/ActiveAdapter;

    new-instance v1, Lcom/dodonew/online/fragment/ActiveFragment$5;

    invoke-direct {v1, p0}, Lcom/dodonew/online/fragment/ActiveFragment$5;-><init>(Lcom/dodonew/online/fragment/ActiveFragment;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/ActiveAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->activeAdapter:Lcom/dodonew/online/adapter/ActiveAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/ActiveAdapter;->notifyDataSetChanged()V

    .line 235
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/ActiveFragment;->onFinishRefresh()V

    .line 236
    return-void
.end method


# virtual methods
.method protected lazyLoad()V
    .locals 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->isPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->mHasLoadedOnce:Z

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    invoke-interface {v0}, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;->onRequest()V

    .line 248
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->page:I

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/dodonew/online/fragment/ActiveFragment;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/ActiveFragment;->queryActiveData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/ActiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/fragment/ActiveFragment;->activity:Landroid/app/Activity;

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/ActiveFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    iput-object v1, p0, Lcom/dodonew/online/fragment/ActiveFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
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

    .line 87
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->view:Landroid/view/View;

    if-nez v2, :cond_0

    .line 88
    const v2, 0x7f030083

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->view:Landroid/view/View;

    .line 89
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0242

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 90
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v2, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 91
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0243

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 92
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/ActiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 95
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 96
    iput-boolean v4, p0, Lcom/dodonew/online/fragment/ActiveFragment;->isPrepared:Z

    .line 97
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/ActiveFragment;->lazyLoad()V

    .line 99
    .end local v0    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 100
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 101
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/dodonew/online/fragment/ActiveFragment;->initEvent()V

    .line 104
    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment;->view:Landroid/view/View;

    return-object v2
.end method

.method public onFinishRefresh()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 254
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 255
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Lcom/dodonew/online/base/BaseFragment;->onPause()V

    .line 266
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/ActiveFragment;->onFinishRefresh()V

    .line 267
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/ActiveFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Lcom/dodonew/online/base/BaseFragment;->onResume()V

    .line 260
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/ActiveFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 261
    return-void
.end method
