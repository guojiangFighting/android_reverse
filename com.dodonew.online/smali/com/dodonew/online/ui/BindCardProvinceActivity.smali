.class public Lcom/dodonew/online/ui/BindCardProvinceActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "BindCardProvinceActivity.java"

# interfaces
.implements Lcom/dodonew/online/view/CityView$OnCityClcikListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private cities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;"
        }
    .end annotation
.end field

.field private cityView:Lcom/dodonew/online/view/CityView;

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

.field private province:Lcom/dodonew/online/bean/Province;

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

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->para:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/BindCardProvinceActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/BindCardProvinceActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->setProvinces(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/BindCardProvinceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/BindCardProvinceActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->setProvinceAdapter()V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/BindCardProvinceActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/BindCardProvinceActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->setCities(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/BindCardProvinceActivity;)Lcom/dodonew/online/widget/MultiStateView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/BindCardProvinceActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/BindCardProvinceActivity;)Lcom/dodonew/online/bean/Province;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/BindCardProvinceActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->province:Lcom/dodonew/online/bean/Province;

    return-object v0
.end method

.method static synthetic access$402(Lcom/dodonew/online/ui/BindCardProvinceActivity;Lcom/dodonew/online/bean/Province;)Lcom/dodonew/online/bean/Province;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/BindCardProvinceActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/Province;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->province:Lcom/dodonew/online/bean/Province;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/BindCardProvinceActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/BindCardProvinceActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->provinces:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/BindCardProvinceActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/BindCardProvinceActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->setResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/dodonew/online/ui/BindCardProvinceActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/BindCardProvinceActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->queryCities(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 70
    const-string v1, "\u9009\u62e9\u6240\u5728\u533a\u57df"

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->setTitle(Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->setNavigationIcon(I)V

    .line 72
    const v1, 0x7f0d0090

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 73
    const v1, 0x7f0d0244

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 74
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 76
    iget-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 77
    iget-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 78
    new-instance v1, Lcom/dodonew/online/view/CityView;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/CityView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->cityView:Lcom/dodonew/online/view/CityView;

    .line 79
    iget-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->cityView:Lcom/dodonew/online/view/CityView;

    invoke-virtual {v1, p0}, Lcom/dodonew/online/view/CityView;->setOnCityClcikListener(Lcom/dodonew/online/view/CityView$OnCityClcikListener;)V

    .line 80
    return-void
.end method

.method private queryCities(Ljava/lang/String;)V
    .locals 3
    .param p1, "provice"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->showProgress()V

    .line 95
    new-instance v0, Lcom/dodonew/online/ui/BindCardProvinceActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/BindCardProvinceActivity$2;-><init>(Lcom/dodonew/online/ui/BindCardProvinceActivity;)V

    .line 96
    invoke-virtual {v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 97
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->para:Ljava/util/Map;

    const-string v1, "provice"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "netCard/cities"

    iget-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 100
    return-void
.end method

.method private queryProvince()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->provinces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->provinces:Ljava/util/List;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    new-instance v0, Lcom/dodonew/online/ui/BindCardProvinceActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/BindCardProvinceActivity$1;-><init>(Lcom/dodonew/online/ui/BindCardProvinceActivity;)V

    .line 89
    invoke-virtual {v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 90
    const-string v0, "netCard/provices"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 91
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
    .line 108
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

    .line 109
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;-><init>(Lcom/dodonew/online/ui/BindCardProvinceActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/BindCardProvinceActivity$4;

    invoke-direct {v5, p0, p1}, Lcom/dodonew/online/ui/BindCardProvinceActivity$4;-><init>(Lcom/dodonew/online/ui/BindCardProvinceActivity;Ljava/lang/String;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 140
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method private setCities(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/City;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->cityView:Lcom/dodonew/online/view/CityView;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/view/CityView;->setCities(Ljava/util/List;)V

    .line 155
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->cityView:Lcom/dodonew/online/view/CityView;

    iget-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/CityView;->showPop(Landroid/view/View;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v0, "\u6682\u65e0\u6570\u636e"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setProvinceAdapter()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->provinceAdapter:Lcom/dodonew/online/adapter/ProvinceAdapter;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/dodonew/online/adapter/ProvinceAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->provinces:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/dodonew/online/adapter/ProvinceAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->provinceAdapter:Lcom/dodonew/online/adapter/ProvinceAdapter;

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->provinceAdapter:Lcom/dodonew/online/adapter/ProvinceAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 165
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->provinceAdapter:Lcom/dodonew/online/adapter/ProvinceAdapter;

    new-instance v1, Lcom/dodonew/online/ui/BindCardProvinceActivity$5;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/BindCardProvinceActivity$5;-><init>(Lcom/dodonew/online/ui/BindCardProvinceActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/ProvinceAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->provinceAdapter:Lcom/dodonew/online/adapter/ProvinceAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/ProvinceAdapter;->notifyDataSetChanged()V

    .line 178
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
    .line 144
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Province;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->provinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method

.method private setResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "domainId"    # Ljava/lang/String;
    .param p2, "txt"    # Ljava/lang/String;

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "domainId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "area"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->setResult(ILandroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->finish()V

    .line 203
    return-void
.end method


# virtual methods
.method public click(Lcom/dodonew/online/bean/City;)V
    .locals 3
    .param p1, "city"    # Lcom/dodonew/online/bean/City;

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/dodonew/online/bean/City;->getDomainid()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity;->province:Lcom/dodonew/online/bean/Province;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Province;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dodonew/online/bean/City;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->setResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->initView()V

    .line 66
    invoke-direct {p0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->queryProvince()V

    .line 67
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 189
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 183
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 184
    return-void
.end method
