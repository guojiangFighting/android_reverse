.class public Lcom/dodonew/online/view/NetbarView;
.super Landroid/widget/LinearLayout;
.source "NetbarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private area:Ljava/lang/String;

.field private city:Lcom/dodonew/online/bean/City;

.field private context:Landroid/content/Context;

.field private districts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/District;",
            ">;"
        }
    .end annotation
.end field

.field private hasMore:Z

.field private isShow:Z

.field private limit:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private netBarAdapter:Lcom/dodonew/online/adapter/NetBarAdapter;

.field private netBars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBar;",
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

.field private popView:Lcom/dodonew/online/view/PopView;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private slide:I

.field private sort:Ljava/lang/String;

.field private sortKey:Ljava/lang/String;

.field private sorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;

.field private tvArea:Landroid/widget/TextView;

.field private tvSort:Landroid/widget/TextView;

.field private viewArea:Landroid/view/View;

.field private viewSort:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/view/NetbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const-string v0, "\u5168\u90e8"

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->area:Ljava/lang/String;

    const-string v0, "\u667a\u80fd\u6392\u5e8f"

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->sort:Ljava/lang/String;

    .line 65
    const-string v0, "10"

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->limit:Ljava/lang/String;

    .line 66
    iput v1, p0, Lcom/dodonew/online/view/NetbarView;->page:I

    .line 70
    iput v1, p0, Lcom/dodonew/online/view/NetbarView;->slide:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/view/NetbarView;->hasMore:Z

    .line 73
    iput-boolean v1, p0, Lcom/dodonew/online/view/NetbarView;->isShow:Z

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->tag:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/NetbarView;->init(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/view/NetbarView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/dodonew/online/view/NetbarView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->limit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dodonew/online/view/NetbarView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarView;->area:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/dodonew/online/view/NetbarView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/dodonew/online/view/NetbarView;->queryNetBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/dodonew/online/view/NetbarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    iget v0, p0, Lcom/dodonew/online/view/NetbarView;->page:I

    return v0
.end method

.method static synthetic access$1202(Lcom/dodonew/online/view/NetbarView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/dodonew/online/view/NetbarView;->page:I

    return p1
.end method

.method static synthetic access$1300(Lcom/dodonew/online/view/NetbarView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/NetbarView;->queryNetBar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/dodonew/online/view/NetbarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/dodonew/online/view/NetbarView;->hasMore:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/dodonew/online/view/NetbarView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/NetbarView;->setDistricts(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/dodonew/online/view/NetbarView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/NetbarView;->setNetBars(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/dodonew/online/view/NetbarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarView;->setNetBarAdapter()V

    return-void
.end method

.method static synthetic access$1800(Lcom/dodonew/online/view/NetbarView;)Lcom/dodonew/online/widget/MultiStateView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/dodonew/online/view/NetbarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarView;->setEmptyView()V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/view/NetbarView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->strings:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/dodonew/online/view/NetbarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarView;->onFinishRefresh()V

    return-void
.end method

.method static synthetic access$2100(Lcom/dodonew/online/view/NetbarView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->netBars:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/view/NetbarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarView;->setArea()V

    return-void
.end method

.method static synthetic access$400(Lcom/dodonew/online/view/NetbarView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->sort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/dodonew/online/view/NetbarView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarView;->sort:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dodonew/online/view/NetbarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarView;->setSort()V

    return-void
.end method

.method static synthetic access$600(Lcom/dodonew/online/view/NetbarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/dodonew/online/view/NetbarView;->isShow:Z

    return v0
.end method

.method static synthetic access$602(Lcom/dodonew/online/view/NetbarView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/dodonew/online/view/NetbarView;->isShow:Z

    return p1
.end method

.method static synthetic access$700(Lcom/dodonew/online/view/NetbarView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/dodonew/online/view/NetbarView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/dodonew/online/view/NetbarView;->slide:I

    return p1
.end method

.method static synthetic access$900(Lcom/dodonew/online/view/NetbarView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->location:Ljava/lang/String;

    return-object v0
.end method

.method private filterSort(Ljava/lang/String;)V
    .locals 2
    .param p1, "sort"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->sorts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->sortKey:Ljava/lang/String;

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->sorts:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const-string v0, "mp"

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->sortKey:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->sorts:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    const-string v0, "os"

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->sortKey:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->sorts:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    const-string v0, "discount"

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->sortKey:Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->sorts:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "wifi"

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->sortKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 88
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarView;->context:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300c8

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    const v1, 0x7f0d0242

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/NetbarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 91
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v1, v3}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 92
    const v1, 0x7f0d0090

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/NetbarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 93
    const v1, 0x7f0d0243

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/NetbarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 94
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 97
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 98
    const v1, 0x7f0d0237

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/NetbarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarView;->viewArea:Landroid/view/View;

    .line 99
    const v1, 0x7f0d0239

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/NetbarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarView;->viewSort:Landroid/view/View;

    .line 100
    const v1, 0x7f0d0238

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/NetbarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarView;->tvArea:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f0d023a

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/NetbarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarView;->tvSort:Landroid/widget/TextView;

    .line 102
    new-instance v1, Lcom/dodonew/online/view/PopView;

    invoke-direct {v1, p1}, Lcom/dodonew/online/view/PopView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarView;->popView:Lcom/dodonew/online/view/PopView;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarView;->para:Ljava/util/Map;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarView;->strings:Ljava/util/List;

    .line 105
    sget-object v1, Lcom/dodonew/online/config/Config;->BAR_SORT:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarView;->sorts:Ljava/util/List;

    .line 106
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarView;->setArea()V

    .line 107
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarView;->setSort()V

    .line 108
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarView;->initEvent()V

    .line 109
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->viewArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->viewSort:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->popView:Lcom/dodonew/online/view/PopView;

    new-instance v1, Lcom/dodonew/online/view/NetbarView$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/NetbarView$1;-><init>(Lcom/dodonew/online/view/NetbarView;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/PopView;->setOnItemClickListener(Lcom/dodonew/online/view/PopView$OnItemClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/view/NetbarView$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/NetbarView$2;-><init>(Lcom/dodonew/online/view/NetbarView;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 160
    return-void
.end method

.method private onFinishRefresh()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 410
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 411
    return-void
.end method

.method private queryDistricts(Ljava/lang/String;)V
    .locals 3
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->districts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->districts:Ljava/util/List;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->districts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    new-instance v0, Lcom/dodonew/online/view/NetbarView$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/NetbarView$3;-><init>(Lcom/dodonew/online/view/NetbarView;)V

    .line 193
    invoke-virtual {v0}, Lcom/dodonew/online/view/NetbarView$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 194
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 195
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->para:Ljava/util/Map;

    const-string v1, "city"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "oth/districts"

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/view/NetbarView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 197
    return-void
.end method

.method private queryNetBar(Ljava/lang/String;)V
    .locals 6
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->location:Ljava/lang/String;

    const-string v2, ""

    iget-object v3, p0, Lcom/dodonew/online/view/NetbarView;->sort:Ljava/lang/String;

    iget-object v4, p0, Lcom/dodonew/online/view/NetbarView;->limit:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/view/NetbarView;->queryNetBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private queryNetBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sort"    # Ljava/lang/String;
    .param p4, "limit"    # Ljava/lang/String;
    .param p5, "page"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->city:Lcom/dodonew/online/bean/City;

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    const-string v2, "\u672a\u5b9a\u4f4d\u5230\u57ce\u5e02."

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 211
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->context:Landroid/content/Context;

    check-cast v1, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v1}, Lcom/dodonew/online/base/ProgressActivity;->dissProgress()V

    .line 232
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v1, Lcom/dodonew/online/view/NetbarView$4;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/NetbarView$4;-><init>(Lcom/dodonew/online/view/NetbarView;)V

    .line 215
    invoke-virtual {v1}, Lcom/dodonew/online/view/NetbarView$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView;->city:Lcom/dodonew/online/bean/City;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/City;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView;->city:Lcom/dodonew/online/bean/City;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->area:Ljava/lang/String;

    const-string v2, "\u5168\u90e8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView;->area:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_1
    invoke-direct {p0, p3}, Lcom/dodonew/online/view/NetbarView;->filterSort(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->para:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 223
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->para:Ljava/util/Map;

    const-string v2, "location"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->para:Ljava/util/Map;

    const-string v2, "area"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->sortKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView;->sortKey:Ljava/lang/String;

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->para:Ljava/util/Map;

    const-string v2, "limit"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->para:Ljava/util/Map;

    const-string v2, "page"

    invoke-interface {v1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "oth/netbarList"

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView;->para:Ljava/util/Map;

    iget-object v3, p0, Lcom/dodonew/online/view/NetbarView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, v2, v3}, Lcom/dodonew/online/view/NetbarView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0
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
    .line 249
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

    .line 250
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->context:Landroid/content/Context;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/view/NetbarView$5;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/view/NetbarView$5;-><init>(Lcom/dodonew/online/view/NetbarView;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/view/NetbarView$6;

    invoke-direct {v5, p0}, Lcom/dodonew/online/view/NetbarView$6;-><init>(Lcom/dodonew/online/view/NetbarView;)V

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 286
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 287
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method private setAraeData()V
    .locals 4

    .prologue
    .line 364
    const-string v1, "area"

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarView;->tag:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->strings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 366
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->strings:Ljava/util/List;

    const-string v2, "\u5168\u90e8"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->districts:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->districts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/District;

    .line 369
    .local v0, "district":Lcom/dodonew/online/bean/District;
    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView;->strings:Ljava/util/List;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/District;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    .end local v0    # "district":Lcom/dodonew/online/bean/District;
    :cond_0
    return-void
.end method

.method private setArea()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->tvArea:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    return-void
.end method

.method private setDistricts(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/District;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/District;>;"
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->districts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->districts:Ljava/util/List;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->districts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 332
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->districts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->location:Ljava/lang/String;

    const-string v2, "\u561f\u561f\u725b\u7f51\u5427"

    iget-object v3, p0, Lcom/dodonew/online/view/NetbarView;->sort:Ljava/lang/String;

    iget-object v4, p0, Lcom/dodonew/online/view/NetbarView;->limit:Ljava/lang/String;

    const-string v5, "0"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/view/NetbarView;->queryNetBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method private setEmptyView()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 292
    return-void
.end method

.method private setNetBarAdapter()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->netBarAdapter:Lcom/dodonew/online/adapter/NetBarAdapter;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/dodonew/online/adapter/NetBarAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView;->netBars:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/NetBarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->netBarAdapter:Lcom/dodonew/online/adapter/NetBarAdapter;

    .line 343
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->netBarAdapter:Lcom/dodonew/online/adapter/NetBarAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 344
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->netBarAdapter:Lcom/dodonew/online/adapter/NetBarAdapter;

    new-instance v1, Lcom/dodonew/online/view/NetbarView$7;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/NetbarView$7;-><init>(Lcom/dodonew/online/view/NetbarView;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/NetBarAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->netBarAdapter:Lcom/dodonew/online/adapter/NetBarAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/NetBarAdapter;->notifyDataSetChanged()V

    .line 357
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarView;->onFinishRefresh()V

    .line 358
    return-void
.end method

.method private setNetBars(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBar;>;"
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->netBars:Ljava/util/List;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->netBars:Ljava/util/List;

    .line 303
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/view/NetbarView;->hasMore:Z

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v1, p0, Lcom/dodonew/online/view/NetbarView;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 309
    iget v0, p0, Lcom/dodonew/online/view/NetbarView;->slide:I

    if-nez v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->netBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 311
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->netBars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->netBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 320
    :goto_1
    return-void

    .line 306
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/view/NetbarView;->hasMore:Z

    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_1

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->netBars:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->netBars:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1
.end method

.method private setSort()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->tvSort:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->sort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    return-void
.end method

.method private setSortData()V
    .locals 2

    .prologue
    .line 379
    const-string v0, "sort"

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->tag:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->strings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 381
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->strings:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->sorts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 382
    return-void
.end method

.method private showArea()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->popView:Lcom/dodonew/online/view/PopView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->strings:Ljava/util/List;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView;->area:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/view/PopView;->setList(Ljava/util/List;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->popView:Lcom/dodonew/online/view/PopView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->viewArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/PopView;->showPop(Landroid/view/View;)V

    .line 390
    return-void
.end method

.method private showSort()V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->popView:Lcom/dodonew/online/view/PopView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->strings:Ljava/util/List;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView;->sort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/view/PopView;->setList(Ljava/util/List;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->popView:Lcom/dodonew/online/view/PopView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->viewSort:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/PopView;->showPop(Landroid/view/View;)V

    .line 398
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 444
    :goto_0
    :pswitch_0
    return-void

    .line 434
    :pswitch_1
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarView;->setAraeData()V

    .line 435
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarView;->showArea()V

    goto :goto_0

    .line 438
    :pswitch_2
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarView;->setSortData()V

    .line 439
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarView;->showSort()V

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x7f0d0237
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCity(Lcom/dodonew/online/bean/City;)V
    .locals 2
    .param p1, "obj"    # Lcom/dodonew/online/bean/City;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarView;->city:Lcom/dodonew/online/bean/City;

    .line 416
    const-string v0, "\u5168\u90e8"

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->area:Ljava/lang/String;

    .line 417
    const-string v0, "\u667a\u80fd\u6392\u5e8f"

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarView;->sort:Ljava/lang/String;

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/view/NetbarView;->slide:I

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/view/NetbarView;->hasMore:Z

    .line 420
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->LOADING:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 421
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->tvArea:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->tvSort:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView;->sort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView;->city:Lcom/dodonew/online/bean/City;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dodonew/online/view/NetbarView;->queryDistricts(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarView;->location:Ljava/lang/String;

    .line 428
    return-void
.end method
