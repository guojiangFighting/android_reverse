.class public Lcom/dodonew/online/ui/MyCollectionActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "MyCollectionActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private collections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Collection;",
            ">;"
        }
    .end annotation
.end field

.field private hasMore:Z

.field private limit:I

.field private materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private myCollectionAdapter:Lcom/dodonew/online/adapter/MyCollectionAdapter;

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

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->para:Ljava/util/Map;

    .line 48
    const/16 v0, 0xa

    iput v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->limit:I

    .line 49
    iput v1, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->page:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->pos:I

    .line 62
    iput v1, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->slide:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/MyCollectionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCollectionActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->page:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/ui/MyCollectionActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCollectionActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->page:I

    return p1
.end method

.method static synthetic access$1000(Lcom/dodonew/online/ui/MyCollectionActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCollectionActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/ui/MyCollectionActivity;->delCollection(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/dodonew/online/ui/MyCollectionActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCollectionActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->slide:I

    return p1
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/MyCollectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCollectionActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyCollectionActivity;->queryMyCollection()V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/MyCollectionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCollectionActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->hasMore:Z

    return v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/MyCollectionActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCollectionActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/MyCollectionActivity;->setCollections(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/MyCollectionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCollectionActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->pos:I

    return v0
.end method

.method static synthetic access$502(Lcom/dodonew/online/ui/MyCollectionActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCollectionActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->pos:I

    return p1
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/MyCollectionActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCollectionActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->collections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dodonew/online/ui/MyCollectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCollectionActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyCollectionActivity;->setMyCollectionAdapter()V

    return-void
.end method

.method static synthetic access$800(Lcom/dodonew/online/ui/MyCollectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCollectionActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyCollectionActivity;->onFinishRefresh()V

    return-void
.end method

.method static synthetic access$900(Lcom/dodonew/online/ui/MyCollectionActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyCollectionActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method private delCollection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Lcom/dodonew/online/ui/MyCollectionActivity$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/MyCollectionActivity$3;-><init>(Lcom/dodonew/online/ui/MyCollectionActivity;)V

    .line 136
    invoke-virtual {v0}, Lcom/dodonew/online/ui/MyCollectionActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->para:Ljava/util/Map;

    const-string v1, "cid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->para:Ljava/util/Map;

    const-string v1, "page"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->para:Ljava/util/Map;

    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "collect/delete"

    iget-object v1, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/MyCollectionActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 143
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/ui/MyCollectionActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/MyCollectionActivity$1;-><init>(Lcom/dodonew/online/ui/MyCollectionActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 113
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 74
    const-string v0, "\u6211\u7684\u6536\u85cf"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->setTitle(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->setNavigationIcon(I)V

    .line 76
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 77
    const v0, 0x7f0d0242

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 78
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 79
    const v0, 0x7f0d0243

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 80
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 81
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 82
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 83
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->userId:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyCollectionActivity;->queryMyCollection()V

    .line 85
    return-void
.end method

.method private onFinishRefresh()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 241
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 242
    return-void
.end method

.method private queryMyCollection()V
    .locals 4

    .prologue
    .line 119
    new-instance v0, Lcom/dodonew/online/ui/MyCollectionActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/MyCollectionActivity$2;-><init>(Lcom/dodonew/online/ui/MyCollectionActivity;)V

    .line 120
    invoke-virtual {v0}, Lcom/dodonew/online/ui/MyCollectionActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 121
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 122
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->para:Ljava/util/Map;

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->para:Ljava/util/Map;

    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "collect/list"

    iget-object v1, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/MyCollectionActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 126
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

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/MyCollectionActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/MyCollectionActivity$4;-><init>(Lcom/dodonew/online/ui/MyCollectionActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/MyCollectionActivity$5;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/MyCollectionActivity$5;-><init>(Lcom/dodonew/online/ui/MyCollectionActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 175
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 176
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method private setCollections(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Collection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Collection;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->collections:Ljava/util/List;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->collections:Ljava/util/List;

    .line 184
    :cond_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->limit:I

    if-ge v0, v1, :cond_2

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->hasMore:Z

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v1, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 191
    iget v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->slide:I

    if-nez v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->collections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->collections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyCollectionActivity;->setMyCollectionAdapter()V

    .line 204
    return-void

    .line 188
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->hasMore:Z

    goto :goto_0

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->collections:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->collections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    .line 198
    :cond_4
    iget v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->page:I

    if-lez v0, :cond_1

    .line 199
    const-string v0, "\u6ca1\u6709\u66f4\u591a"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setMyCollectionAdapter()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->collections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 209
    new-instance v0, Lcom/dodonew/online/adapter/MyCollectionAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->collections:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/MyCollectionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->myCollectionAdapter:Lcom/dodonew/online/adapter/MyCollectionAdapter;

    .line 210
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->myCollectionAdapter:Lcom/dodonew/online/adapter/MyCollectionAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 211
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->myCollectionAdapter:Lcom/dodonew/online/adapter/MyCollectionAdapter;

    new-instance v1, Lcom/dodonew/online/ui/MyCollectionActivity$6;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/MyCollectionActivity$6;-><init>(Lcom/dodonew/online/ui/MyCollectionActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/MyCollectionAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->myCollectionAdapter:Lcom/dodonew/online/adapter/MyCollectionAdapter;

    new-instance v1, Lcom/dodonew/online/ui/MyCollectionActivity$7;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/MyCollectionActivity$7;-><init>(Lcom/dodonew/online/ui/MyCollectionActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/MyCollectionAdapter;->setmListener(Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->myCollectionAdapter:Lcom/dodonew/online/adapter/MyCollectionAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/MyCollectionAdapter;->notifyDataSetChanged()V

    .line 232
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 236
    :goto_0
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyCollectionActivity;->onFinishRefresh()V

    .line 237
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyCollectionActivity;->initView()V

    .line 70
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyCollectionActivity;->initEvent()V

    .line 71
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 256
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 258
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 250
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 252
    return-void
.end method
