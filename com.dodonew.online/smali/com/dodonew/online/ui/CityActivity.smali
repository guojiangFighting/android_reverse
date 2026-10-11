.class public Lcom/dodonew/online/ui/CityActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "CityActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

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

.field private provinceAdapter:Lcom/dodonew/online/adapter/ProvinceAdapter;

.field private provinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Province;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private request:Lcom/dodonew/online/http/JsonRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/CityActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/CityActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/CityActivity;->setProvinces(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/CityActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/CityActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dodonew/online/ui/CityActivity;->setProvinceAdapter()V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/CityActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/CityActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->provinces:Ljava/util/List;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 58
    const-string v1, "\u9009\u62e9\u6240\u5728\u533a\u57df"

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/CityActivity;->setTitle(Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/CityActivity;->setNavigationIcon(I)V

    .line 60
    const v1, 0x7f0d0090

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v1, p0, Lcom/dodonew/online/ui/CityActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 61
    const v1, 0x7f0d0244

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/dodonew/online/ui/CityActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 62
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/dodonew/online/ui/CityActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 64
    iget-object v1, p0, Lcom/dodonew/online/ui/CityActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 65
    iget-object v1, p0, Lcom/dodonew/online/ui/CityActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 66
    return-void
.end method

.method private queryProvince()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->provinces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->provinces:Ljava/util/List;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    new-instance v0, Lcom/dodonew/online/ui/CityActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/CityActivity$1;-><init>(Lcom/dodonew/online/ui/CityActivity;)V

    .line 75
    invoke-virtual {v0}, Lcom/dodonew/online/ui/CityActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 76
    const-string v0, "oth/city"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dodonew/online/ui/CityActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/CityActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 77
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
    .line 85
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

    .line 86
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/CityActivity$2;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/CityActivity$2;-><init>(Lcom/dodonew/online/ui/CityActivity;Ljava/lang/String;)V

    move-object v1, p0

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 97
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 98
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method private setProvinceAdapter()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->provinceAdapter:Lcom/dodonew/online/adapter/ProvinceAdapter;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/dodonew/online/adapter/ProvinceAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/CityActivity;->provinces:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/dodonew/online/adapter/ProvinceAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->provinceAdapter:Lcom/dodonew/online/adapter/ProvinceAdapter;

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/ui/CityActivity;->provinceAdapter:Lcom/dodonew/online/adapter/ProvinceAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->provinceAdapter:Lcom/dodonew/online/adapter/ProvinceAdapter;

    new-instance v1, Lcom/dodonew/online/ui/CityActivity$3;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/CityActivity$3;-><init>(Lcom/dodonew/online/ui/CityActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/ProvinceAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->provinceAdapter:Lcom/dodonew/online/adapter/ProvinceAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/ProvinceAdapter;->notifyDataSetChanged()V

    .line 126
    return-void
.end method

.method private setProvinces(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Province;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Province;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->provinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/CityActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/dodonew/online/ui/CityActivity;->initView()V

    .line 54
    invoke-direct {p0}, Lcom/dodonew/online/ui/CityActivity;->queryProvince()V

    .line 55
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 137
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 138
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 131
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 132
    return-void
.end method
