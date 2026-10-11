.class public Lcom/dodonew/online/ui/NetbarDetailActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "NetbarDetailActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Card;",
            ">;"
        }
    .end annotation
.end field

.field private detailTopView:Lcom/dodonew/online/view/NetbarDetailTopView;

.field private domainId:Ljava/lang/String;

.field private hasMore:Z

.field private limit:Ljava/lang/String;

.field private listView:Landroid/widget/ListView;

.field private location:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private netBar:Lcom/dodonew/online/bean/NetBar;

.field private netBarId:Ljava/lang/String;

.field private onlinePlayAdapter:Lcom/dodonew/online/adapter/OnlinePlayAdapter;

.field private onlinePlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/OnlinePlay;",
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

.field private request:Lcom/dodonew/online/http/JsonRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 61
    const-string v0, "10"

    iput-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->limit:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->page:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->hasMore:Z

    .line 286
    new-instance v0, Lcom/dodonew/online/ui/NetbarDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/NetbarDetailActivity$8;-><init>(Lcom/dodonew/online/ui/NetbarDetailActivity;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/NetbarDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->hasMore:Z

    return v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/NetbarDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->page:I

    return v0
.end method

.method static synthetic access$1000(Lcom/dodonew/online/ui/NetbarDetailActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dodonew/online/ui/NetbarDetailActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->page:I

    return p1
.end method

.method static synthetic access$1100(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->cards:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/dodonew/online/ui/NetbarDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->cards:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/dodonew/online/ui/NetbarDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->queryMyCard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/widget/MultiStateView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/dodonew/online/ui/NetbarDetailActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->setCards(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->netBarId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/NetbarDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/dodonew/online/ui/NetbarDetailActivity;->queryNetbarPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->onlinePlays:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/NetbarDetailActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->setOnlinePlays(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/dodonew/online/ui/NetbarDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dodonew/online/ui/NetbarDetailActivity;->setOnlinePlayAdapter()V

    return-void
.end method

.method static synthetic access$800(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/view/NetbarDetailTopView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->detailTopView:Lcom/dodonew/online/view/NetbarDetailTopView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/dodonew/online/ui/NetbarDetailActivity;Lcom/dodonew/online/view/NetbarDetailTopView;)Lcom/dodonew/online/view/NetbarDetailTopView;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;
    .param p1, "x1"    # Lcom/dodonew/online/view/NetbarDetailTopView;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->detailTopView:Lcom/dodonew/online/view/NetbarDetailTopView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/dodonew/online/ui/NetbarDetailActivity;)Lcom/dodonew/online/bean/NetBar;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    return-object v0
.end method

.method static synthetic access$902(Lcom/dodonew/online/ui/NetbarDetailActivity;Lcom/dodonew/online/bean/NetBar;)Lcom/dodonew/online/bean/NetBar;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/NetBar;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->netBar:Lcom/dodonew/online/bean/NetBar;

    return-object p1
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/dodonew/online/ui/NetbarDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/NetbarDetailActivity$1;-><init>(Lcom/dodonew/online/ui/NetbarDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/dodonew/online/ui/NetbarDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/NetbarDetailActivity$2;-><init>(Lcom/dodonew/online/ui/NetbarDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 77
    const-string v1, "\u7f51\u5427\u8be6\u60c5"

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->setTitle(Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->setNavigationIcon(I)V

    .line 79
    const v1, 0x7f0d0090

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 80
    const v1, 0x7f0d00cd

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->listView:Landroid/widget/ListView;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->onlinePlays:Ljava/util/List;

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    .line 83
    invoke-virtual {p0}, Lcom/dodonew/online/ui/NetbarDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "domainId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->domainId:Ljava/lang/String;

    .line 85
    const-string v1, "netBarId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->netBarId:Ljava/lang/String;

    .line 86
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->location:Ljava/lang/String;

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->cards:Ljava/util/List;

    .line 88
    const-string v1, "cards"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->cards:Ljava/util/List;

    .line 89
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->domainId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->domainId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->netBarId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->location:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/dodonew/online/ui/NetbarDetailActivity;->queryNetbarDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v1, "\u6570\u636e\u9519\u8bef."

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->showToast(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v2, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method

.method private queryMyCard(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Lcom/dodonew/online/ui/NetbarDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/NetbarDetailActivity$5;-><init>(Lcom/dodonew/online/ui/NetbarDetailActivity;)V

    .line 173
    invoke-virtual {v0}, Lcom/dodonew/online/ui/NetbarDetailActivity$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 174
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 175
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "netCard/cards"

    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 177
    return-void
.end method

.method private queryNetbarDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "domainId"    # Ljava/lang/String;
    .param p2, "netBarId"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Lcom/dodonew/online/ui/NetbarDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/NetbarDetailActivity$3;-><init>(Lcom/dodonew/online/ui/NetbarDetailActivity;)V

    .line 144
    invoke-virtual {v0}, Lcom/dodonew/online/ui/NetbarDetailActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 145
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    const-string v1, "location"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "oth/netbarList"

    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 151
    return-void
.end method

.method private queryNetbarPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "domainId"    # Ljava/lang/String;
    .param p2, "netBarId"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Lcom/dodonew/online/ui/NetbarDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/NetbarDetailActivity$4;-><init>(Lcom/dodonew/online/ui/NetbarDetailActivity;)V

    .line 161
    invoke-virtual {v0}, Lcom/dodonew/online/ui/NetbarDetailActivity$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 162
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 163
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    const-string v1, "limit"

    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->limit:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    const-string v1, "page"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "oth/onlineplay/list"

    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 168
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
    .line 186
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

    .line 187
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/NetbarDetailActivity$6;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/NetbarDetailActivity$6;-><init>(Lcom/dodonew/online/ui/NetbarDetailActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/NetbarDetailActivity$7;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/NetbarDetailActivity$7;-><init>(Lcom/dodonew/online/ui/NetbarDetailActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 240
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 241
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method private setCards(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Card;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Card;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->cards:Ljava/util/List;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->cards:Ljava/util/List;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->cards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->detailTopView:Lcom/dodonew/online/view/NetbarDetailTopView;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->detailTopView:Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->cards:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/NetbarDetailTopView;->setCards(Ljava/util/List;)V

    .line 270
    :cond_1
    return-void
.end method

.method private setOnlinePlayAdapter()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->onlinePlayAdapter:Lcom/dodonew/online/adapter/OnlinePlayAdapter;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/dodonew/online/adapter/OnlinePlayAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->onlinePlays:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/OnlinePlayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->onlinePlayAdapter:Lcom/dodonew/online/adapter/OnlinePlayAdapter;

    .line 256
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->onlinePlayAdapter:Lcom/dodonew/online/adapter/OnlinePlayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->onlinePlayAdapter:Lcom/dodonew/online/adapter/OnlinePlayAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/OnlinePlayAdapter;->notifyDataSetChanged()V

    .line 259
    return-void
.end method

.method private setOnlinePlays(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/OnlinePlay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/OnlinePlay;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->onlinePlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->hasMore:Z

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->hasMore:Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/NetbarDetailActivity;->setContentView(I)V

    .line 71
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 72
    invoke-direct {p0}, Lcom/dodonew/online/ui/NetbarDetailActivity;->initView()V

    .line 73
    invoke-direct {p0}, Lcom/dodonew/online/ui/NetbarDetailActivity;->initEvent()V

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onDestroy()V

    .line 275
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public onEventMainThread(Lcom/dodonew/online/bean/CardEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/dodonew/online/bean/CardEvent;

    .prologue
    .line 280
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 281
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 282
    invoke-virtual {p1}, Lcom/dodonew/online/bean/CardEvent;->getCard()Lcom/dodonew/online/bean/Card;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 283
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 323
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 325
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 316
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 317
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 319
    return-void
.end method
