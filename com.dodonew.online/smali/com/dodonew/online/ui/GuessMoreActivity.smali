.class public Lcom/dodonew/online/ui/GuessMoreActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "GuessMoreActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

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

.field private categoryId:Ljava/lang/String;

.field private dateFroamt:Ljava/lang/String;

.field private guessAdapter:Lcom/dodonew/online/adapter/GuessMoreAdapter;

.field private hasHisMore:Z

.field private hasMore:Z

.field private hisPage:I

.field private limit:I

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

.field private slide:I

.field private title:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private weekFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 67
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    iput-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->dateFroamt:Ljava/lang/String;

    .line 68
    const-string v0, "MM\u6708dd\u65e5   EEEE"

    iput-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->weekFormat:Ljava/lang/String;

    .line 69
    const/16 v0, 0xa

    iput v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->limit:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->page:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->hisPage:I

    .line 74
    iput v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->slide:I

    .line 76
    iput-boolean v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->hasMore:Z

    iput-boolean v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->hasHisMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/GuessMoreActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessMoreActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->hasHisMore:Z

    return v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/GuessMoreActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessMoreActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->hisPage:I

    return v0
.end method

.method static synthetic access$1000(Lcom/dodonew/online/ui/GuessMoreActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessMoreActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->races:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dodonew/online/ui/GuessMoreActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessMoreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->hisPage:I

    return p1
.end method

.method static synthetic access$202(Lcom/dodonew/online/ui/GuessMoreActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessMoreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->slide:I

    return p1
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/GuessMoreActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessMoreActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/GuessMoreActivity;->queryRaceByCategoryId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/GuessMoreActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessMoreActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->hasMore:Z

    return v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/GuessMoreActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessMoreActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->page:I

    return v0
.end method

.method static synthetic access$502(Lcom/dodonew/online/ui/GuessMoreActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessMoreActivity;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->page:I

    return p1
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/GuessMoreActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessMoreActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/GuessMoreActivity;->setRaces(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/dodonew/online/ui/GuessMoreActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessMoreActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dodonew/online/ui/GuessMoreActivity;->setGuessAdapter()V

    return-void
.end method

.method static synthetic access$800(Lcom/dodonew/online/ui/GuessMoreActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessMoreActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dodonew/online/ui/GuessMoreActivity;->onFinishRefresh()V

    return-void
.end method

.method static synthetic access$900(Lcom/dodonew/online/ui/GuessMoreActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/GuessMoreActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->title:Ljava/lang/String;

    return-object v0
.end method

.method private getWeekDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->dateFroamt:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/dodonew/online/util/Utils;->formatTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->weekFormat:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dodonew/online/util/Utils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/ui/GuessMoreActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/GuessMoreActivity$1;-><init>(Lcom/dodonew/online/ui/GuessMoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 145
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 91
    const v3, 0x7f0d0090

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/GuessMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 92
    const v3, 0x7f0d0242

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/GuessMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 93
    iget-object v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 94
    const v3, 0x7f0d0243

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/GuessMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 95
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 96
    .local v2, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 97
    iget-object v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 98
    iget-object v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v4}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 99
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->para:Ljava/util/Map;

    .line 100
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->userId:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/dodonew/online/ui/GuessMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 103
    const-string v3, "category"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Category;

    .line 104
    .local v1, "category":Lcom/dodonew/online/bean/Category;
    invoke-virtual {v1}, Lcom/dodonew/online/bean/Category;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->title:Ljava/lang/String;

    .line 105
    iget-object v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/GuessMoreActivity;->setTitle(Ljava/lang/String;)V

    .line 106
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/dodonew/online/ui/GuessMoreActivity;->setNavigationIcon(I)V

    .line 107
    invoke-virtual {v1}, Lcom/dodonew/online/bean/Category;->getCategoryId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->categoryId:Ljava/lang/String;

    .line 108
    const-string v3, "now"

    invoke-direct {p0, v3}, Lcom/dodonew/online/ui/GuessMoreActivity;->queryRaceByCategoryId(Ljava/lang/String;)V

    .line 111
    .end local v1    # "category":Lcom/dodonew/online/bean/Category;
    :cond_0
    return-void
.end method

.method private onFinishRefresh()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 266
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 267
    return-void
.end method

.method private queryRaceByCategoryId(Ljava/lang/String;)V
    .locals 4
    .param p1, "direc"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->categoryId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Lcom/dodonew/online/ui/GuessMoreActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/GuessMoreActivity$2;-><init>(Lcom/dodonew/online/ui/GuessMoreActivity;)V

    .line 155
    invoke-virtual {v0}, Lcom/dodonew/online/ui/GuessMoreActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 156
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 157
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->para:Ljava/util/Map;

    const-string v1, "gameId"

    iget-object v2, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->categoryId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "pre"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->para:Ljava/util/Map;

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->hisPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :goto_1
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->para:Ljava/util/Map;

    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->para:Ljava/util/Map;

    const-string v1, "direc"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "guess/more"

    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/GuessMoreActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->para:Ljava/util/Map;

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
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
    .line 176
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

    .line 177
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/GuessMoreActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/GuessMoreActivity$3;-><init>(Lcom/dodonew/online/ui/GuessMoreActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/GuessMoreActivity$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/GuessMoreActivity$4;-><init>(Lcom/dodonew/online/ui/GuessMoreActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 199
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 200
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method private setGuessAdapter()V
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->races:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->guessAdapter:Lcom/dodonew/online/adapter/GuessMoreAdapter;

    if-nez v1, :cond_0

    .line 236
    new-instance v1, Lcom/dodonew/online/adapter/GuessMoreAdapter;

    iget-object v2, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->races:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/dodonew/online/adapter/GuessMoreAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->guessAdapter:Lcom/dodonew/online/adapter/GuessMoreAdapter;

    .line 237
    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->guessAdapter:Lcom/dodonew/online/adapter/GuessMoreAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 238
    new-instance v0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->guessAdapter:Lcom/dodonew/online/adapter/GuessMoreAdapter;

    invoke-direct {v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;-><init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;)V

    .line 239
    .local v0, "headersDecor":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 240
    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->guessAdapter:Lcom/dodonew/online/adapter/GuessMoreAdapter;

    new-instance v2, Lcom/dodonew/online/ui/GuessMoreActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/dodonew/online/ui/GuessMoreActivity$5;-><init>(Lcom/dodonew/online/ui/GuessMoreActivity;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;)V

    invoke-virtual {v1, v2}, Lcom/dodonew/online/adapter/GuessMoreAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 246
    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->guessAdapter:Lcom/dodonew/online/adapter/GuessMoreAdapter;

    new-instance v2, Lcom/dodonew/online/ui/GuessMoreActivity$6;

    invoke-direct {v2, p0}, Lcom/dodonew/online/ui/GuessMoreActivity$6;-><init>(Lcom/dodonew/online/ui/GuessMoreActivity;)V

    invoke-virtual {v1, v2}, Lcom/dodonew/online/adapter/GuessMoreAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 258
    .end local v0    # "headersDecor":Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v2, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 259
    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->guessAdapter:Lcom/dodonew/online/adapter/GuessMoreAdapter;

    invoke-virtual {v1}, Lcom/dodonew/online/adapter/GuessMoreAdapter;->notifyDataSetChanged()V

    .line 260
    invoke-direct {p0}, Lcom/dodonew/online/ui/GuessMoreActivity;->onFinishRefresh()V

    .line 262
    :cond_1
    return-void
.end method

.method private setRaces(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Race;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Race;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->races:Ljava/util/List;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->races:Ljava/util/List;

    .line 208
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->limit:I

    if-ge v0, v1, :cond_2

    .line 209
    iget v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->slide:I

    if-nez v0, :cond_1

    .line 210
    iput-boolean v2, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->hasHisMore:Z

    .line 221
    :goto_0
    iget v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->slide:I

    if-nez v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->races:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 227
    :goto_1
    return-void

    .line 212
    :cond_1
    iput-boolean v2, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->hasMore:Z

    goto :goto_0

    .line 215
    :cond_2
    iget v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->slide:I

    if-nez v0, :cond_3

    .line 216
    iput-boolean v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->hasHisMore:Z

    goto :goto_0

    .line 218
    :cond_3
    iput-boolean v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->hasMore:Z

    goto :goto_0

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->races:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->races:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 225
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/GuessMoreActivity;->setContentView(I)V

    .line 83
    invoke-direct {p0}, Lcom/dodonew/online/ui/GuessMoreActivity;->initView()V

    .line 84
    invoke-direct {p0}, Lcom/dodonew/online/ui/GuessMoreActivity;->initEvent()V

    .line 85
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 281
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 283
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 275
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 277
    return-void
.end method
