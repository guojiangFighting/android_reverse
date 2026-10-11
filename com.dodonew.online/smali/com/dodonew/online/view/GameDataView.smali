.class public Lcom/dodonew/online/view/GameDataView;
.super Landroid/widget/FrameLayout;
.source "GameDataView.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private context:Landroid/content/Context;

.field private game:Lcom/dodonew/online/bean/Game;

.field private gameAdapter:Lcom/dodonew/online/adapter/GameAdapter;

.field private gameDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/GameDetail;",
            ">;"
        }
    .end annotation
.end field

.field private gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private gson:Lcom/google/gson/Gson;

.field gsonObjectRequest:Lcom/dodonew/online/http/GsonObjectRequest;

.field private hasMore:Z

.field private limit:I

.field private mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

.field private materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private pageNo:I

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

.field private rvGame:Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;

.field private slide:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gameDatas:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->para:Ljava/util/Map;

    .line 59
    iput v1, p0, Lcom/dodonew/online/view/GameDataView;->pageNo:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/dodonew/online/view/GameDataView;->limit:I

    .line 63
    iput v1, p0, Lcom/dodonew/online/view/GameDataView;->slide:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/view/GameDataView;->hasMore:Z

    .line 66
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gson:Lcom/google/gson/Gson;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gameDatas:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->para:Ljava/util/Map;

    .line 59
    iput v1, p0, Lcom/dodonew/online/view/GameDataView;->pageNo:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/dodonew/online/view/GameDataView;->limit:I

    .line 63
    iput v1, p0, Lcom/dodonew/online/view/GameDataView;->slide:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/view/GameDataView;->hasMore:Z

    .line 66
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gson:Lcom/google/gson/Gson;

    .line 75
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/GameDataView;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/view/GameDataView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 47
    iget v0, p0, Lcom/dodonew/online/view/GameDataView;->pageNo:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/view/GameDataView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/GameDataView;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/dodonew/online/view/GameDataView;->pageNo:I

    return p1
.end method

.method static synthetic access$1000(Lcom/dodonew/online/view/GameDataView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gameDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dodonew/online/view/GameDataView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/GameDataView;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/dodonew/online/view/GameDataView;->slide:I

    return p1
.end method

.method static synthetic access$200(Lcom/dodonew/online/view/GameDataView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/dodonew/online/view/GameDataView;->hasMore:Z

    return v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/view/GameDataView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 47
    iget v0, p0, Lcom/dodonew/online/view/GameDataView;->limit:I

    return v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/view/GameDataView;)Lcom/dodonew/online/widget/MultiStateView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/view/GameDataView;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/view/GameDataView;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dodonew/online/view/GameDataView;Lcom/dodonew/online/bean/GameData;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/GameDataView;
    .param p1, "x1"    # Lcom/dodonew/online/bean/GameData;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/GameDataView;->setGameDatas(Lcom/dodonew/online/bean/GameData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/dodonew/online/view/GameDataView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dodonew/online/view/GameDataView;->setGameAdapter()V

    return-void
.end method

.method static synthetic access$900(Lcom/dodonew/online/view/GameDataView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->context:Landroid/content/Context;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300be

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    iput-object p1, p0, Lcom/dodonew/online/view/GameDataView;->context:Landroid/content/Context;

    .line 81
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/GameDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 82
    const v0, 0x7f0d0242

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/GameDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 83
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 84
    const v0, 0x7f0d024f

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/GameDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->rvGame:Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;

    .line 85
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->rvGame:Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->setHasFixedSize(Z)V

    .line 86
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->rvGame:Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 87
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 88
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->rvGame:Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/view/GameDataView;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setPadding(IIII)V

    .line 90
    invoke-direct {p0}, Lcom/dodonew/online/view/GameDataView;->initAdapter()V

    .line 91
    invoke-direct {p0}, Lcom/dodonew/online/view/GameDataView;->initEvent()V

    .line 92
    return-void
.end method

.method private initAdapter()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gameAdapter:Lcom/dodonew/online/adapter/GameAdapter;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/dodonew/online/adapter/GameAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/GameDataView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/view/GameDataView;->gameDatas:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/GameAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gameAdapter:Lcom/dodonew/online/adapter/GameAdapter;

    .line 200
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->rvGame:Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/view/GameDataView;->gameAdapter:Lcom/dodonew/online/adapter/GameAdapter;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 201
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->rvGame:Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapRecyclerView;->getAdapter()Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    .line 202
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gameAdapter:Lcom/dodonew/online/adapter/GameAdapter;

    new-instance v1, Lcom/dodonew/online/view/GameDataView$6;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/GameDataView$6;-><init>(Lcom/dodonew/online/view/GameDataView;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/GameAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 211
    :cond_0
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/view/GameDataView$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/GameDataView$1;-><init>(Lcom/dodonew/online/view/GameDataView;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 119
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->ERROR:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->getView(Lcom/dodonew/online/widget/MultiStateView$ViewState;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dodonew/online/view/GameDataView$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/GameDataView$2;-><init>(Lcom/dodonew/online/view/GameDataView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method private requestNetwork(Ljava/util/Map;)V
    .locals 6
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
    .line 146
    .local p1, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/dodonew/online/http/GsonObjectRequest;

    iget-object v1, p0, Lcom/dodonew/online/view/GameDataView;->context:Landroid/content/Context;

    const-string v2, "http://api.plu.cn/tga/streams/"

    new-instance v4, Lcom/dodonew/online/view/GameDataView$4;

    invoke-direct {v4, p0}, Lcom/dodonew/online/view/GameDataView$4;-><init>(Lcom/dodonew/online/view/GameDataView;)V

    new-instance v5, Lcom/dodonew/online/view/GameDataView$5;

    invoke-direct {v5, p0}, Lcom/dodonew/online/view/GameDataView$5;-><init>(Lcom/dodonew/online/view/GameDataView;)V

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/http/GsonObjectRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gsonObjectRequest:Lcom/dodonew/online/http/GsonObjectRequest;

    .line 164
    return-void
.end method

.method private setGameAdapter()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gameDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 191
    :goto_0
    invoke-direct {p0}, Lcom/dodonew/online/view/GameDataView;->initAdapter()V

    .line 192
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gameAdapter:Lcom/dodonew/online/adapter/GameAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/GameAdapter;->notifyDataSetChanged()V

    .line 193
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->notifyDataSetChanged()V

    .line 194
    invoke-virtual {p0}, Lcom/dodonew/online/view/GameDataView;->onFinishRefresh()V

    .line 195
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method

.method private setGameDatas(Lcom/dodonew/online/bean/GameData;)V
    .locals 3
    .param p1, "obj"    # Lcom/dodonew/online/bean/GameData;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/dodonew/online/view/GameDataView;->gameDatas:Ljava/util/List;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/view/GameDataView;->gameDatas:Ljava/util/List;

    .line 170
    :cond_0
    iget-object v0, p1, Lcom/dodonew/online/bean/GameData;->items:Ljava/util/List;

    .line 171
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/GameDetail;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dodonew/online/view/GameDataView;->hasMore:Z

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/view/GameDataView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v2, p0, Lcom/dodonew/online/view/GameDataView;->hasMore:Z

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 177
    iget v1, p0, Lcom/dodonew/online/view/GameDataView;->slide:I

    if-nez v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/dodonew/online/view/GameDataView;->gameDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 179
    iget-object v1, p0, Lcom/dodonew/online/view/GameDataView;->gameDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    :goto_1
    return-void

    .line 174
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dodonew/online/view/GameDataView;->hasMore:Z

    goto :goto_0

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/view/GameDataView;->gameDatas:Ljava/util/List;

    iget-object v2, p0, Lcom/dodonew/online/view/GameDataView;->gameDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1
.end method


# virtual methods
.method public addHeadView(Landroid/view/View;)V
    .locals 1
    .param p1, "headView"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->mWrapAdapter:Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/wraprecyclerview/WrapAdapter;->addHeaderView(Landroid/view/View;)V

    .line 231
    return-void
.end method

.method public onFinishRefresh()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 215
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 216
    return-void
.end method

.method public queryGameById()V
    .locals 4

    .prologue
    .line 129
    new-instance v0, Lcom/dodonew/online/view/GameDataView$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/GameDataView$3;-><init>(Lcom/dodonew/online/view/GameDataView;)V

    .line 130
    invoke-virtual {v0}, Lcom/dodonew/online/view/GameDataView$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/GameDataView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 131
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 132
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->game:Lcom/dodonew/online/bean/Game;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Game;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->para:Ljava/util/Map;

    const-string v1, "game"

    iget-object v2, p0, Lcom/dodonew/online/view/GameDataView;->game:Lcom/dodonew/online/bean/Game;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Game;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->game:Lcom/dodonew/online/bean/Game;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Game;->getFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->para:Ljava/util/Map;

    const-string v1, "filter"

    iget-object v2, p0, Lcom/dodonew/online/view/GameDataView;->game:Lcom/dodonew/online/bean/Game;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Game;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->para:Ljava/util/Map;

    const-string v1, "start-index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/view/GameDataView;->pageNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->para:Ljava/util/Map;

    const-string v1, "max-results"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/view/GameDataView;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->para:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/dodonew/online/view/GameDataView;->requestNetwork(Ljava/util/Map;)V

    .line 142
    return-void
.end method

.method public setGame(Lcom/dodonew/online/bean/Game;)V
    .locals 3
    .param p1, "obj"    # Lcom/dodonew/online/bean/Game;

    .prologue
    const/4 v2, 0x0

    .line 219
    iput-object p1, p0, Lcom/dodonew/online/view/GameDataView;->game:Lcom/dodonew/online/bean/Game;

    .line 220
    iput v2, p0, Lcom/dodonew/online/view/GameDataView;->pageNo:I

    .line 221
    iput v2, p0, Lcom/dodonew/online/view/GameDataView;->slide:I

    .line 222
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gameDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->LOADING:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 224
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v2, v2}, Landroid/support/v7/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 225
    invoke-virtual {p0}, Lcom/dodonew/online/view/GameDataView;->queryGameById()V

    .line 227
    return-void
.end method
