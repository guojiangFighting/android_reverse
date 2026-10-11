.class public Lcom/dodonew/online/ui/MyGuessActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "MyGuessActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private hasMore:Z

.field private limit:I

.field private materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private myGuessAdapter:Lcom/dodonew/online/adapter/MyGuessAdapter;

.field private myGuessDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/MyGuessDetail;",
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

.field private tvGuessTotal:Landroid/widget/TextView;

.field private tvWinRate:Landroid/widget/TextView;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 55
    iput v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->page:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->limit:I

    .line 60
    iput v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->slide:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/MyGuessActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyGuessActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->page:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/ui/MyGuessActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyGuessActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->page:I

    return p1
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/MyGuessActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyGuessActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->slide:I

    return v0
.end method

.method static synthetic access$102(Lcom/dodonew/online/ui/MyGuessActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyGuessActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->slide:I

    return p1
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/MyGuessActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyGuessActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyGuessActivity;->queryMyGuess()V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/MyGuessActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyGuessActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->hasMore:Z

    return v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/MyGuessActivity;Lcom/dodonew/online/bean/MyGuess;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyGuessActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/MyGuess;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/MyGuessActivity;->setMyGuess(Lcom/dodonew/online/bean/MyGuess;)V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/MyGuessActivity;)Lcom/dodonew/online/widget/MultiStateView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyGuessActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/MyGuessActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/MyGuessActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyGuessActivity;->onFinishRefresh()V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/ui/MyGuessActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/MyGuessActivity$1;-><init>(Lcom/dodonew/online/ui/MyGuessActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 115
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-virtual {p0}, Lcom/dodonew/online/ui/MyGuessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyGuessActivity;->setTitle(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyGuessActivity;->setNavigationIcon(I)V

    .line 77
    const v0, 0x7f0d00c9

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyGuessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->tvGuessTotal:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0d00ca

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyGuessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->tvWinRate:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyGuessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 80
    const v0, 0x7f0d0242

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyGuessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 81
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 82
    const v0, 0x7f0d0243

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyGuessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 83
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 84
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 85
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->para:Ljava/util/Map;

    .line 87
    return-void
.end method

.method private onFinishRefresh()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 243
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 244
    return-void
.end method

.method private queryMyGuess()V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Lcom/dodonew/online/ui/MyGuessActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/MyGuessActivity$2;-><init>(Lcom/dodonew/online/ui/MyGuessActivity;)V

    .line 122
    invoke-virtual {v0}, Lcom/dodonew/online/ui/MyGuessActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 125
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/dodonew/online/ui/MyGuessActivity;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->para:Ljava/util/Map;

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/MyGuessActivity;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->para:Ljava/util/Map;

    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/MyGuessActivity;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "guess/myGuess"

    iget-object v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyGuessActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/MyGuessActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 129
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
    .line 137
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

    .line 138
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/MyGuessActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/MyGuessActivity$3;-><init>(Lcom/dodonew/online/ui/MyGuessActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/MyGuessActivity$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/MyGuessActivity$4;-><init>(Lcom/dodonew/online/ui/MyGuessActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 160
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method private setMyGuess(Lcom/dodonew/online/bean/MyGuess;)V
    .locals 14
    .param p1, "myGuess"    # Lcom/dodonew/online/bean/MyGuess;

    .prologue
    const-wide/16 v12, 0x0

    .line 165
    invoke-virtual {p1}, Lcom/dodonew/online/bean/MyGuess;->getWinCount()Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "winCountStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/dodonew/online/bean/MyGuess;->getLoseCount()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "loseCountStr":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    const-string v6, "0"

    .line 170
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 171
    const-string v2, "0"

    .line 173
    :cond_1
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 174
    .local v5, "winCount":Ljava/lang/Double;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 175
    .local v4, "total":Ljava/lang/Double;
    iget-object v7, p0, Lcom/dodonew/online/ui/MyGuessActivity;->tvGuessTotal:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/dodonew/online/bean/MyGuess;->getWinCount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u80dc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/dodonew/online/bean/MyGuess;->getLoseCount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u8d1f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v7, "#.00"

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v7, v8, v12

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v7, v8, v12

    if-nez v7, :cond_6

    .line 178
    :cond_2
    iget-object v7, p0, Lcom/dodonew/online/ui/MyGuessActivity;->tvWinRate:Landroid/widget/TextView;

    const-string v8, "(  \u80dc\u73870%  )"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_0
    invoke-virtual {p1}, Lcom/dodonew/online/bean/MyGuess;->getResults()Ljava/util/List;

    move-result-object v3

    .line 183
    .local v3, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/MyGuessDetail;>;"
    iget-object v7, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessDetails:Ljava/util/List;

    if-nez v7, :cond_3

    .line 184
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessDetails:Ljava/util/List;

    .line 186
    :cond_3
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 187
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcom/dodonew/online/ui/MyGuessActivity;->limit:I

    if-ge v7, v8, :cond_7

    .line 188
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/dodonew/online/ui/MyGuessActivity;->hasMore:Z

    .line 192
    :goto_1
    iget-object v7, p0, Lcom/dodonew/online/ui/MyGuessActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v8, p0, Lcom/dodonew/online/ui/MyGuessActivity;->hasMore:Z

    invoke-virtual {v7, v8}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 193
    iget v7, p0, Lcom/dodonew/online/ui/MyGuessActivity;->slide:I

    if-nez v7, :cond_4

    .line 194
    iget-object v7, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessDetails:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 196
    :cond_4
    iget-object v7, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessDetails:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    new-instance v0, Lcom/dodonew/online/bean/ComparatorMyGuess;

    invoke-direct {v0}, Lcom/dodonew/online/bean/ComparatorMyGuess;-><init>()V

    .line 198
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/dodonew/online/bean/MyGuessDetail;>;"
    iget-object v7, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessDetails:Ljava/util/List;

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/dodonew/online/bean/MyGuessDetail;>;"
    :cond_5
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyGuessActivity;->setMyGuessAdapter()V

    .line 201
    return-void

    .line 180
    .end local v3    # "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/MyGuessDetail;>;"
    :cond_6
    iget-object v7, p0, Lcom/dodonew/online/ui/MyGuessActivity;->tvWinRate:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(  \u80dc\u7387"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%  )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    .restart local v3    # "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/MyGuessDetail;>;"
    :cond_7
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/dodonew/online/ui/MyGuessActivity;->hasMore:Z

    goto :goto_1
.end method

.method private setMyGuessAdapter()V
    .locals 3

    .prologue
    .line 204
    iget-object v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessDetails:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessDetails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessAdapter:Lcom/dodonew/online/adapter/MyGuessAdapter;

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Lcom/dodonew/online/adapter/MyGuessAdapter;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessDetails:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/dodonew/online/adapter/MyGuessAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessAdapter:Lcom/dodonew/online/adapter/MyGuessAdapter;

    .line 207
    iget-object v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessAdapter:Lcom/dodonew/online/adapter/MyGuessAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 208
    new-instance v0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessAdapter:Lcom/dodonew/online/adapter/MyGuessAdapter;

    invoke-direct {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;-><init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;)V

    .line 209
    .local v0, "headersDecor":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
    iget-object v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 210
    iget-object v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessAdapter:Lcom/dodonew/online/adapter/MyGuessAdapter;

    new-instance v2, Lcom/dodonew/online/ui/MyGuessActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/dodonew/online/ui/MyGuessActivity$5;-><init>(Lcom/dodonew/online/ui/MyGuessActivity;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;)V

    invoke-virtual {v1, v2}, Lcom/dodonew/online/adapter/MyGuessAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 217
    .end local v0    # "headersDecor":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->myGuessAdapter:Lcom/dodonew/online/adapter/MyGuessAdapter;

    invoke-virtual {v1}, Lcom/dodonew/online/adapter/MyGuessAdapter;->notifyDataSetChanged()V

    .line 218
    iget-object v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v2, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 222
    :goto_0
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyGuessActivity;->onFinishRefresh()V

    .line 223
    return-void

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/ui/MyGuessActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v2, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/MyGuessActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyGuessActivity;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyGuessActivity;->initEvent()V

    .line 70
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity;->userId:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/dodonew/online/ui/MyGuessActivity;->queryMyGuess()V

    .line 72
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 236
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 237
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 239
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 231
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 233
    return-void
.end method
