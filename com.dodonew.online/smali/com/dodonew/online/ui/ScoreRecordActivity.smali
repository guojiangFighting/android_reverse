.class public Lcom/dodonew/online/ui/ScoreRecordActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "ScoreRecordActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

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

.field private scoreRecordAdapter:Lcom/dodonew/online/adapter/ScoreRecordAdapter;

.field private scoreRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/ScoreRecord;",
            ">;"
        }
    .end annotation
.end field

.field private slide:I

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->para:Ljava/util/Map;

    .line 41
    const/16 v0, 0xa

    iput v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->limit:I

    .line 42
    iput v1, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->page:I

    .line 54
    iput v1, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->slide:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/ScoreRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScoreRecordActivity;

    .prologue
    .line 37
    iget v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->page:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/ui/ScoreRecordActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScoreRecordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->page:I

    return p1
.end method

.method static synthetic access$102(Lcom/dodonew/online/ui/ScoreRecordActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScoreRecordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->slide:I

    return p1
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/ScoreRecordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScoreRecordActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->queryScoreRecord()V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/ScoreRecordActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScoreRecordActivity;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->hasMore:Z

    return v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/ScoreRecordActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScoreRecordActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ScoreRecordActivity;->setScoreRecords(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/ScoreRecordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ScoreRecordActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->onFinishRefresh()V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/ui/ScoreRecordActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ScoreRecordActivity$1;-><init>(Lcom/dodonew/online/ui/ScoreRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 105
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    const-string v0, "\u79ef\u5206\u8bb0\u5f55"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->setTitle(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->setNavigationIcon(I)V

    .line 68
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 69
    const v0, 0x7f0d0242

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 70
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 71
    const v0, 0x7f0d0243

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 72
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 74
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 75
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->userId:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->queryScoreRecord()V

    .line 77
    return-void
.end method

.method private onFinishRefresh()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 184
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 185
    return-void
.end method

.method private queryScoreRecord()V
    .locals 4

    .prologue
    .line 108
    new-instance v0, Lcom/dodonew/online/ui/ScoreRecordActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/ScoreRecordActivity$2;-><init>(Lcom/dodonew/online/ui/ScoreRecordActivity;)V

    .line 109
    invoke-virtual {v0}, Lcom/dodonew/online/ui/ScoreRecordActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 111
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->para:Ljava/util/Map;

    const-string v1, "PageNo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->para:Ljava/util/Map;

    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "gift/scoreInfo"

    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/ScoreRecordActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 115
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
    .line 123
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

    .line 124
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/ScoreRecordActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/ScoreRecordActivity$3;-><init>(Lcom/dodonew/online/ui/ScoreRecordActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/ScoreRecordActivity$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/ScoreRecordActivity$4;-><init>(Lcom/dodonew/online/ui/ScoreRecordActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 143
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 144
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method private setScoreRecordAdapter()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->scoreRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->scoreRecordAdapter:Lcom/dodonew/online/adapter/ScoreRecordAdapter;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/dodonew/online/adapter/ScoreRecordAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->scoreRecords:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/ScoreRecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->scoreRecordAdapter:Lcom/dodonew/online/adapter/ScoreRecordAdapter;

    .line 173
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->scoreRecordAdapter:Lcom/dodonew/online/adapter/ScoreRecordAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->scoreRecordAdapter:Lcom/dodonew/online/adapter/ScoreRecordAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/ScoreRecordAdapter;->notifyDataSetChanged()V

    .line 176
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 180
    :goto_0
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->onFinishRefresh()V

    .line 181
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method

.method private setScoreRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/ScoreRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/ScoreRecord;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->scoreRecords:Ljava/util/List;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->scoreRecords:Ljava/util/List;

    .line 152
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->limit:I

    if-ge v0, v1, :cond_2

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->hasMore:Z

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v1, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 159
    iget v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->slide:I

    if-nez v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->scoreRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->scoreRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->setScoreRecordAdapter()V

    .line 167
    return-void

    .line 156
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->hasMore:Z

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->scoreRecords:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreRecordActivity;->scoreRecords:Ljava/util/List;

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
    .line 59
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->initView()V

    .line 62
    invoke-direct {p0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->initEvent()V

    .line 63
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 199
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 201
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 193
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 195
    return-void
.end method
