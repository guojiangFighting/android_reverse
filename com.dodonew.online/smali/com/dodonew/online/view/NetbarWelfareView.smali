.class public Lcom/dodonew/online/view/NetbarWelfareView;
.super Landroid/widget/LinearLayout;
.source "NetbarWelfareView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/view/NetbarWelfareView$Tag;
    }
.end annotation


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private actives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/MyActive;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private hasMore:Z

.field private limit:I

.field private materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private myActiveAdapter:Lcom/dodonew/online/adapter/MyActiveAdapter;

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

.field private tag:Lcom/dodonew/online/view/NetbarWelfareView$Tag;

.field private ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

.field private tickets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Ticket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/view/NetbarWelfareView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->para:Ljava/util/Map;

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->limit:I

    .line 60
    iput v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->page:I

    .line 64
    iput v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->slide:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->hasMore:Z

    .line 71
    sget-object v0, Lcom/dodonew/online/view/NetbarWelfareView$Tag;->ticket:Lcom/dodonew/online/view/NetbarWelfareView$Tag;

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->tag:Lcom/dodonew/online/view/NetbarWelfareView$Tag;

    .line 84
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/NetbarWelfareView;->init(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method static synthetic access$002(Lcom/dodonew/online/view/NetbarWelfareView;Lcom/dodonew/online/view/NetbarWelfareView$Tag;)Lcom/dodonew/online/view/NetbarWelfareView$Tag;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;
    .param p1, "x1"    # Lcom/dodonew/online/view/NetbarWelfareView$Tag;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->tag:Lcom/dodonew/online/view/NetbarWelfareView$Tag;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/dodonew/online/view/NetbarWelfareView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->slide:I

    return p1
.end method

.method static synthetic access$102(Lcom/dodonew/online/view/NetbarWelfareView;Lcom/dodonew/online/adapter/TicketAdapter;)Lcom/dodonew/online/adapter/TicketAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;
    .param p1, "x1"    # Lcom/dodonew/online/adapter/TicketAdapter;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/dodonew/online/view/NetbarWelfareView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->hasMore:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/dodonew/online/view/NetbarWelfareView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/NetbarWelfareView;->setTickets(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/dodonew/online/view/NetbarWelfareView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/NetbarWelfareView;->setOnlinePlays(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/dodonew/online/view/NetbarWelfareView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/dodonew/online/view/NetbarWelfareView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarWelfareView;->onFinishRefresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/view/NetbarWelfareView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->tickets:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/view/NetbarWelfareView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarWelfareView;->setTicketAdapter()V

    return-void
.end method

.method static synthetic access$402(Lcom/dodonew/online/view/NetbarWelfareView;Lcom/dodonew/online/adapter/MyActiveAdapter;)Lcom/dodonew/online/adapter/MyActiveAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;
    .param p1, "x1"    # Lcom/dodonew/online/adapter/MyActiveAdapter;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->myActiveAdapter:Lcom/dodonew/online/adapter/MyActiveAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dodonew/online/view/NetbarWelfareView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->actives:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/view/NetbarWelfareView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarWelfareView;->setMyActiveAdapter()V

    return-void
.end method

.method static synthetic access$700(Lcom/dodonew/online/view/NetbarWelfareView;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarWelfareView;->queryByTag()V

    return-void
.end method

.method static synthetic access$800(Lcom/dodonew/online/view/NetbarWelfareView;)Lcom/dodonew/online/widget/MultiStateView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dodonew/online/view/NetbarWelfareView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 51
    iget v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->page:I

    return v0
.end method

.method static synthetic access$902(Lcom/dodonew/online/view/NetbarWelfareView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/NetbarWelfareView;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->page:I

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 88
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->context:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ca

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    const v1, 0x7f0d0242

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/NetbarWelfareView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .line 91
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v1, v3}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 92
    const v1, 0x7f0d0090

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/NetbarWelfareView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 93
    const v1, 0x7f0d0243

    invoke-virtual {p0, v1}, Lcom/dodonew/online/view/NetbarWelfareView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 94
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 97
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 98
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarWelfareView;->initEvent()V

    .line 99
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 102
    const v0, 0x7f0d023b

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/NetbarWelfareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    new-instance v1, Lcom/dodonew/online/view/NetbarWelfareView$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/NetbarWelfareView$1;-><init>(Lcom/dodonew/online/view/NetbarWelfareView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 134
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    new-instance v1, Lcom/dodonew/online/view/NetbarWelfareView$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/NetbarWelfareView$2;-><init>(Lcom/dodonew/online/view/NetbarWelfareView;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;)V

    .line 159
    return-void
.end method

.method private onFinishRefresh()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 336
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    .line 337
    return-void
.end method

.method private queryByTag()V
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lcom/dodonew/online/view/NetbarWelfareView$9;->$SwitchMap$com$dodonew$online$view$NetbarWelfareView$Tag:[I

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->tag:Lcom/dodonew/online/view/NetbarWelfareView$Tag;

    invoke-virtual {v1}, Lcom/dodonew/online/view/NetbarWelfareView$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 165
    :pswitch_0
    invoke-virtual {p0}, Lcom/dodonew/online/view/NetbarWelfareView;->queryTicket()V

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarWelfareView;->queryNetbarPlay()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queryNetbarPlay()V
    .locals 4

    .prologue
    .line 193
    new-instance v0, Lcom/dodonew/online/view/NetbarWelfareView$4;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/NetbarWelfareView$4;-><init>(Lcom/dodonew/online/view/NetbarWelfareView;)V

    .line 194
    invoke-virtual {v0}, Lcom/dodonew/online/view/NetbarWelfareView$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 195
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 196
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->para:Ljava/util/Map;

    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->para:Ljava/util/Map;

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v0, "oth/onlineplay/list"

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarWelfareView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/view/NetbarWelfareView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 199
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
    .line 207
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

    .line 208
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->context:Landroid/content/Context;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/view/NetbarWelfareView$5;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/view/NetbarWelfareView$5;-><init>(Lcom/dodonew/online/view/NetbarWelfareView;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/view/NetbarWelfareView$6;

    invoke-direct {v5, p0}, Lcom/dodonew/online/view/NetbarWelfareView$6;-><init>(Lcom/dodonew/online/view/NetbarWelfareView;)V

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 230
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 231
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method private setMyActiveAdapter()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->actives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->myActiveAdapter:Lcom/dodonew/online/adapter/MyActiveAdapter;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/dodonew/online/adapter/MyActiveAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarWelfareView;->actives:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/MyActiveAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->myActiveAdapter:Lcom/dodonew/online/adapter/MyActiveAdapter;

    .line 263
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->myActiveAdapter:Lcom/dodonew/online/adapter/MyActiveAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 264
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->myActiveAdapter:Lcom/dodonew/online/adapter/MyActiveAdapter;

    new-instance v1, Lcom/dodonew/online/view/NetbarWelfareView$7;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/NetbarWelfareView$7;-><init>(Lcom/dodonew/online/view/NetbarWelfareView;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/MyActiveAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->myActiveAdapter:Lcom/dodonew/online/adapter/MyActiveAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/MyActiveAdapter;->notifyDataSetChanged()V

    .line 274
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 278
    :goto_0
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarWelfareView;->onFinishRefresh()V

    .line 279
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method

.method private setOnlinePlays(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/MyActive;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/MyActive;>;"
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->actives:Ljava/util/List;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->actives:Ljava/util/List;

    .line 239
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->hasMore:Z

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 245
    iget v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->slide:I

    if-nez v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->actives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->actives:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->actives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 256
    :goto_1
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarWelfareView;->setMyActiveAdapter()V

    .line 257
    return-void

    .line 242
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->hasMore:Z

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_1

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->actives:Ljava/util/List;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->actives:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1
.end method

.method private setTicketAdapter()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Lcom/dodonew/online/adapter/TicketAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarWelfareView;->tickets:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/TicketAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    .line 320
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 321
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    new-instance v1, Lcom/dodonew/online/view/NetbarWelfareView$8;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/NetbarWelfareView$8;-><init>(Lcom/dodonew/online/view/NetbarWelfareView;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/TicketAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->ticketAdapter:Lcom/dodonew/online/adapter/TicketAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/TicketAdapter;->notifyDataSetChanged()V

    .line 331
    invoke-direct {p0}, Lcom/dodonew/online/view/NetbarWelfareView;->onFinishRefresh()V

    .line 332
    return-void
.end method

.method private setTickets(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Ticket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Ticket;>;"
    iget-object v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->tickets:Ljava/util/List;

    if-nez v3, :cond_0

    .line 283
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->tickets:Ljava/util/List;

    .line 285
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_3

    .line 286
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->hasMore:Z

    .line 290
    :goto_0
    iget-object v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->materialRefreshLayout:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-boolean v4, p0, Lcom/dodonew/online/view/NetbarWelfareView;->hasMore:Z

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Ticket;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 294
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/Ticket;

    .line 295
    .local v2, "ticket":Lcom/dodonew/online/bean/Ticket;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Ticket;->getEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dodonew/online/util/Utils;->formatTime(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 296
    invoke-virtual {v2}, Lcom/dodonew/online/bean/Ticket;->getIsAlreadyGet()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "isGet":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 300
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 288
    .end local v0    # "isGet":Ljava/lang/String;
    .end local v1    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Ticket;>;"
    .end local v2    # "ticket":Lcom/dodonew/online/bean/Ticket;
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->hasMore:Z

    goto :goto_0

    .line 304
    .restart local v1    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Ticket;>;"
    :cond_4
    iget v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->slide:I

    if-nez v3, :cond_6

    .line 305
    iget-object v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->tickets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 306
    iget-object v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->tickets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 307
    iget-object v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->tickets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 308
    iget-object v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v4, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 315
    :goto_2
    return-void

    .line 310
    :cond_5
    iget-object v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v4, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_2

    .line 313
    :cond_6
    iget-object v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->tickets:Ljava/util/List;

    iget-object v4, p0, Lcom/dodonew/online/view/NetbarWelfareView;->tickets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_2
.end method


# virtual methods
.method public initData()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 340
    iput v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->page:I

    .line 341
    iput v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->slide:I

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->hasMore:Z

    .line 343
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->LOADING:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 344
    return-void
.end method

.method public queryTicket()V
    .locals 4

    .prologue
    .line 179
    new-instance v0, Lcom/dodonew/online/view/NetbarWelfareView$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/NetbarWelfareView$3;-><init>(Lcom/dodonew/online/view/NetbarWelfareView;)V

    .line 180
    invoke-virtual {v0}, Lcom/dodonew/online/view/NetbarWelfareView$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 181
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 182
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->para:Ljava/util/Map;

    const-string v1, "userAccount"

    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->para:Ljava/util/Map;

    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView;->para:Ljava/util/Map;

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dodonew/online/view/NetbarWelfareView;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "oth/ticket/list"

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarWelfareView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/view/NetbarWelfareView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 187
    return-void
.end method
