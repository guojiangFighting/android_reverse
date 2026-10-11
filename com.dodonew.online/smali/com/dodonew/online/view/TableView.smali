.class public Lcom/dodonew/online/view/TableView;
.super Landroid/widget/FrameLayout;
.source "TableView.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private context:Landroid/content/Context;

.field private id:Ljava/lang/String;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private onOrderTableListener:Lcom/dodonew/online/interfaces/OnOrderTableListener;

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

.field private tableArea:Lcom/dodonew/online/bean/TableArea;

.field private tables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Table;",
            ">;"
        }
    .end annotation
.end field

.field private tablesAdapter:Lcom/dodonew/online/adapter/TablesAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/view/TableView;->pos:I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dodonew/online/interfaces/OnOrderTableListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netBarId"    # Ljava/lang/String;
    .param p3, "domainId"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "onOrderTableListener"    # Lcom/dodonew/online/interfaces/OnOrderTableListener;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/view/TableView;->pos:I

    .line 58
    iput-object p1, p0, Lcom/dodonew/online/view/TableView;->context:Landroid/content/Context;

    .line 59
    iput-object p5, p0, Lcom/dodonew/online/view/TableView;->onOrderTableListener:Lcom/dodonew/online/interfaces/OnOrderTableListener;

    .line 60
    iput-object p4, p0, Lcom/dodonew/online/view/TableView;->id:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d0

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    invoke-direct {p0}, Lcom/dodonew/online/view/TableView;->initView()V

    .line 63
    invoke-direct {p0, p2, p3, p4}, Lcom/dodonew/online/view/TableView;->queryTableById(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/view/TableView;Lcom/dodonew/online/bean/TableResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/TableView;
    .param p1, "x1"    # Lcom/dodonew/online/bean/TableResult;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/TableView;->setTableResult(Lcom/dodonew/online/bean/TableResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/view/TableView;)Lcom/dodonew/online/bean/TableArea;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/TableView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->tableArea:Lcom/dodonew/online/bean/TableArea;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/view/TableView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/TableView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->tables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/view/TableView;)Lcom/dodonew/online/adapter/TablesAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/TableView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->tablesAdapter:Lcom/dodonew/online/adapter/TablesAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/view/TableView;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/TableView;

    .prologue
    .line 40
    iget v0, p0, Lcom/dodonew/online/view/TableView;->pos:I

    return v0
.end method

.method static synthetic access$402(Lcom/dodonew/online/view/TableView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/view/TableView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/dodonew/online/view/TableView;->pos:I

    return p1
.end method

.method static synthetic access$500(Lcom/dodonew/online/view/TableView;)Lcom/dodonew/online/interfaces/OnOrderTableListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/TableView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->onOrderTableListener:Lcom/dodonew/online/interfaces/OnOrderTableListener;

    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 71
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/TableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/view/TableView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 72
    const v0, 0x7f0d0244

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/TableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/view/TableView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 73
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->context:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 74
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 75
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/TableView;->para:Ljava/util/Map;

    .line 77
    return-void
.end method

.method private queryTableById(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "netBarId"    # Ljava/lang/String;
    .param p2, "domainId"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Lcom/dodonew/online/view/TableView$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/view/TableView$1;-><init>(Lcom/dodonew/online/view/TableView;)V

    .line 82
    invoke-virtual {v0}, Lcom/dodonew/online/view/TableView$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/TableView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 83
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 84
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->para:Ljava/util/Map;

    const-string v1, "netBarId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->para:Ljava/util/Map;

    const-string v1, "payState"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->para:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "oth/bookEntrence"

    iget-object v1, p0, Lcom/dodonew/online/view/TableView;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/view/TableView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 89
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
    .line 97
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/book/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    iget-object v1, p0, Lcom/dodonew/online/view/TableView;->context:Landroid/content/Context;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/view/TableView$2;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/view/TableView$2;-><init>(Lcom/dodonew/online/view/TableView;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/view/TableView$3;

    invoke-direct {v5, p0}, Lcom/dodonew/online/view/TableView$3;-><init>(Lcom/dodonew/online/view/TableView;)V

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/view/TableView;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method private setTableResult(Lcom/dodonew/online/bean/TableResult;)V
    .locals 4
    .param p1, "data"    # Lcom/dodonew/online/bean/TableResult;

    .prologue
    .line 120
    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    .line 121
    .local v1, "viewState":Lcom/dodonew/online/widget/MultiStateView$ViewState;
    iget-object v2, p1, Lcom/dodonew/online/bean/TableResult;->code:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    invoke-virtual {p1}, Lcom/dodonew/online/bean/TableResult;->getCenter()Lcom/dodonew/online/bean/TableResult$Center;

    move-result-object v0

    .line 123
    .local v0, "center":Lcom/dodonew/online/bean/TableResult$Center;
    iget-object v2, v0, Lcom/dodonew/online/bean/TableResult$Center;->code:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {v0}, Lcom/dodonew/online/bean/TableResult$Center;->getDefaultSet()Lcom/dodonew/online/bean/TableArea;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/view/TableView;->tableArea:Lcom/dodonew/online/bean/TableArea;

    .line 125
    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->tables:Ljava/util/List;

    if-nez v2, :cond_0

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/view/TableView;->tables:Ljava/util/List;

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 129
    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->tables:Ljava/util/List;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/TableResult$Center;->getAllTerm()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 131
    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/dodonew/online/view/TableView;->setTablesAdapter()V

    .line 142
    .end local v0    # "center":Lcom/dodonew/online/bean/TableResult$Center;
    :goto_1
    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    invoke-virtual {v2, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 143
    return-void

    .line 133
    .restart local v0    # "center":Lcom/dodonew/online/bean/TableResult$Center;
    :cond_1
    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    goto :goto_0

    .line 137
    :cond_2
    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    goto :goto_1

    .line 140
    .end local v0    # "center":Lcom/dodonew/online/bean/TableResult$Center;
    :cond_3
    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    goto :goto_1
.end method


# virtual methods
.method public refresh()V
    .locals 4

    .prologue
    .line 185
    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->tableArea:Lcom/dodonew/online/bean/TableArea;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/TableArea;->getIsRoom()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->tableArea:Lcom/dodonew/online/bean/TableArea;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/TableArea;->getAllowStandalone()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->tables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->tables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Table;

    .line 188
    .local v1, "table":Lcom/dodonew/online/bean/Table;
    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/dodonew/online/bean/Table;->setType(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->tablesAdapter:Lcom/dodonew/online/adapter/TablesAdapter;

    invoke-virtual {v2}, Lcom/dodonew/online/adapter/TablesAdapter;->notifyDataSetChanged()V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "i":I
    .end local v1    # "table":Lcom/dodonew/online/bean/Table;
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->tables:Ljava/util/List;

    iget v3, p0, Lcom/dodonew/online/view/TableView;->pos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Table;

    .line 193
    .restart local v1    # "table":Lcom/dodonew/online/bean/Table;
    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/dodonew/online/bean/Table;->setType(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->tablesAdapter:Lcom/dodonew/online/adapter/TablesAdapter;

    iget v3, p0, Lcom/dodonew/online/view/TableView;->pos:I

    invoke-virtual {v2, v3}, Lcom/dodonew/online/adapter/TablesAdapter;->notifyItemChanged(I)V

    .line 196
    .end local v1    # "table":Lcom/dodonew/online/bean/Table;
    :cond_1
    return-void
.end method

.method public setTablesAdapter()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->tablesAdapter:Lcom/dodonew/online/adapter/TablesAdapter;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/dodonew/online/adapter/TablesAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/TableView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/view/TableView;->tables:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/TablesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/view/TableView;->tablesAdapter:Lcom/dodonew/online/adapter/TablesAdapter;

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/view/TableView;->tablesAdapter:Lcom/dodonew/online/adapter/TablesAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 149
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->tablesAdapter:Lcom/dodonew/online/adapter/TablesAdapter;

    new-instance v1, Lcom/dodonew/online/view/TableView$4;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/TableView$4;-><init>(Lcom/dodonew/online/view/TableView;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/TablesAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/TableView;->tablesAdapter:Lcom/dodonew/online/adapter/TablesAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/TablesAdapter;->notifyDataSetChanged()V

    .line 181
    return-void
.end method
