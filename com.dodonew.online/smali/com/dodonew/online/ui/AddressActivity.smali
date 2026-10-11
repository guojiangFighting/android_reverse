.class public Lcom/dodonew/online/ui/AddressActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "AddressActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dodonew/online/widget/circualreveal/SheetLayout$OnFabAnimationEndListener;


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private addressAdapter:Lcom/dodonew/online/adapter/AddressAdapter;

.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Address;",
            ">;"
        }
    .end annotation
.end field

.field private fab:Landroid/support/design/widget/FloatingActionButton;

.field private isShow:Z

.field private mSheetLayout:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

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

.field private pos:I

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/ui/AddressActivity;->pos:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/ui/AddressActivity;->isShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/AddressActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/AddressActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/AddressActivity;->setAddressResults(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/AddressActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/AddressActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dodonew/online/ui/AddressActivity;->setAddressAdapter()V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/AddressActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/AddressActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/dodonew/online/ui/AddressActivity;->pos:I

    return v0
.end method

.method static synthetic access$202(Lcom/dodonew/online/ui/AddressActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/AddressActivity;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/dodonew/online/ui/AddressActivity;->pos:I

    return p1
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/AddressActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/AddressActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->addresses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/AddressActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/AddressActivity;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/dodonew/online/ui/AddressActivity;->isShow:Z

    return v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/AddressActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/AddressActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/AddressActivity;->delAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/dodonew/online/ui/AddressActivity;Lcom/dodonew/online/bean/Address;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/AddressActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/Address;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/AddressActivity;->initActivity(Lcom/dodonew/online/bean/Address;)V

    return-void
.end method

.method private delAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "addressId"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/AddressActivity;->isShow:Z

    .line 102
    new-instance v0, Lcom/dodonew/online/ui/AddressActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/AddressActivity$2;-><init>(Lcom/dodonew/online/ui/AddressActivity;)V

    .line 103
    invoke-virtual {v0}, Lcom/dodonew/online/ui/AddressActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 104
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->para:Ljava/util/Map;

    const-string v1, "addressId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/dodonew/online/ui/AddressActivity;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "gift/delAddress"

    iget-object v1, p0, Lcom/dodonew/online/ui/AddressActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/AddressActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/AddressActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 108
    return-void
.end method

.method private initActivity(Lcom/dodonew/online/bean/Address;)V
    .locals 2
    .param p1, "address"    # Lcom/dodonew/online/bean/Address;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/dodonew/online/ui/AddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 192
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 195
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/dodonew/online/ui/AddressActivity;->setResult(ILandroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/dodonew/online/ui/AddressActivity;->finish()V

    .line 197
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "\u6536\u8d27\u5730\u5740"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddressActivity;->setTitle(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddressActivity;->setNavigationIcon(I)V

    .line 79
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 80
    const v0, 0x7f0d0244

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 81
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 83
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 84
    const v0, 0x7f0d00a1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    iput-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->mSheetLayout:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    .line 85
    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 86
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->mSheetLayout:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    iget-object v1, p0, Lcom/dodonew/online/ui/AddressActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->setFab(Landroid/view/View;)V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->para:Ljava/util/Map;

    .line 88
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->mSheetLayout:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    invoke-virtual {v0, p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->setFabAnimationEndListener(Lcom/dodonew/online/widget/circualreveal/SheetLayout$OnFabAnimationEndListener;)V

    .line 90
    return-void
.end method

.method private queryAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Lcom/dodonew/online/ui/AddressActivity$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/AddressActivity$1;-><init>(Lcom/dodonew/online/ui/AddressActivity;)V

    .line 94
    invoke-virtual {v0}, Lcom/dodonew/online/ui/AddressActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 95
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 96
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->para:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "gift/queryAddress"

    iget-object v1, p0, Lcom/dodonew/online/ui/AddressActivity;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/ui/AddressActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/ui/AddressActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 98
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
    .line 116
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/dodonew/online/ui/AddressActivity;->isShow:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/dodonew/online/ui/AddressActivity;->showProgress()V

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.dodovip.com/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/AddressActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/ui/AddressActivity$3;-><init>(Lcom/dodonew/online/ui/AddressActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/ui/AddressActivity$4;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/AddressActivity$4;-><init>(Lcom/dodonew/online/ui/AddressActivity;)V

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 149
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method private setAddressAdapter()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 167
    :goto_0
    new-instance v0, Lcom/dodonew/online/adapter/AddressAdapter;

    iget-object v1, p0, Lcom/dodonew/online/ui/AddressActivity;->addresses:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/adapter/AddressAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->addressAdapter:Lcom/dodonew/online/adapter/AddressAdapter;

    .line 168
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/ui/AddressActivity;->addressAdapter:Lcom/dodonew/online/adapter/AddressAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 169
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->addressAdapter:Lcom/dodonew/online/adapter/AddressAdapter;

    new-instance v1, Lcom/dodonew/online/ui/AddressActivity$5;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/AddressActivity$5;-><init>(Lcom/dodonew/online/ui/AddressActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/AddressAdapter;->setmListener(Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->addressAdapter:Lcom/dodonew/online/adapter/AddressAdapter;

    new-instance v1, Lcom/dodonew/online/ui/AddressActivity$6;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/AddressActivity$6;-><init>(Lcom/dodonew/online/ui/AddressActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/AddressAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 186
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method

.method private setAddressResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/Address;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->addresses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->addresses:Ljava/util/List;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v1, 0xd

    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/dodonew/online/base/TitleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 239
    if-ne p1, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->mSheetLayout:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->contractFab()V

    .line 241
    if-ne p2, v1, :cond_0

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/ui/AddressActivity;->isShow:Z

    .line 243
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->userId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/AddressActivity;->queryAddress(Ljava/lang/String;)V

    .line 246
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->mSheetLayout:Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->expandFab()V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x7f0d00a0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/AddressActivity;->setContentView(I)V

    .line 70
    invoke-direct {p0}, Lcom/dodonew/online/ui/AddressActivity;->initView()V

    .line 71
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->userId:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/dodonew/online/ui/AddressActivity;->userId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/AddressActivity;->queryAddress(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onDestroy()V

    .line 216
    return-void
.end method

.method public onFabAnimationEnd()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dodonew/online/ui/AddAddressActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/dodonew/online/ui/AddressActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 234
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 227
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 228
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 221
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 222
    return-void
.end method
