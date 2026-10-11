.class public Lcom/dodonew/online/fragment/MyOrderSeatFragment;
.super Lcom/dodonew/online/base/BaseFragment;
.source "MyOrderSeatFragment.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private activity:Landroid/app/Activity;

.field private isPrepared:Z

.field private mHasLoadedOnce:Z

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private openId:Ljava/lang/String;

.field private orderSeatAdapter:Lcom/dodonew/online/adapter/OrderSeatAdapter;

.field private orderSeats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/OrderSeat;",
            ">;"
        }
    .end annotation
.end field

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

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/dodonew/online/base/BaseFragment;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->para:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$002(Lcom/dodonew/online/fragment/MyOrderSeatFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyOrderSeatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->mHasLoadedOnce:Z

    return p1
.end method

.method static synthetic access$100(Lcom/dodonew/online/fragment/MyOrderSeatFragment;Lcom/dodonew/online/bean/MyOrderResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyOrderSeatFragment;
    .param p1, "x1"    # Lcom/dodonew/online/bean/MyOrderResult;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->setOrderResult(Lcom/dodonew/online/bean/MyOrderResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/fragment/MyOrderSeatFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/MyOrderSeatFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->orderSeats:Ljava/util/List;

    return-object v0
.end method

.method public static newInstance()Lcom/dodonew/online/fragment/MyOrderSeatFragment;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;

    invoke-direct {v0}, Lcom/dodonew/online/fragment/MyOrderSeatFragment;-><init>()V

    return-object v0
.end method

.method private queryMyOrder(Ljava/lang/String;)V
    .locals 3
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Lcom/dodonew/online/fragment/MyOrderSeatFragment$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/fragment/MyOrderSeatFragment$1;-><init>(Lcom/dodonew/online/fragment/MyOrderSeatFragment;)V

    .line 103
    invoke-virtual {v0}, Lcom/dodonew/online/fragment/MyOrderSeatFragment$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 104
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->para:Ljava/util/Map;

    const-string v1, "openId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->para:Ljava/util/Map;

    const-string v1, "payState"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "oth/bookOrderDetail"

    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 112
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
    .line 120
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

    .line 121
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->activity:Landroid/app/Activity;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/fragment/MyOrderSeatFragment$2;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/fragment/MyOrderSeatFragment$2;-><init>(Lcom/dodonew/online/fragment/MyOrderSeatFragment;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/fragment/MyOrderSeatFragment$3;

    invoke-direct {v5, p0}, Lcom/dodonew/online/fragment/MyOrderSeatFragment$3;-><init>(Lcom/dodonew/online/fragment/MyOrderSeatFragment;)V

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 140
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 141
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method private setOrderResult(Lcom/dodonew/online/bean/MyOrderResult;)V
    .locals 2
    .param p1, "orderResult"    # Lcom/dodonew/online/bean/MyOrderResult;

    .prologue
    .line 146
    iget-object v0, p1, Lcom/dodonew/online/bean/MyOrderResult;->code:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->orderSeats:Ljava/util/List;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->orderSeats:Ljava/util/List;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->orderSeats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->orderSeats:Ljava/util/List;

    iget-object v1, p1, Lcom/dodonew/online/bean/MyOrderResult;->center:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-direct {p0}, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->setOrderSeatAdapter()V

    .line 154
    :cond_1
    return-void
.end method

.method private setOrderSeatAdapter()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->orderSeats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 159
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->orderSeatAdapter:Lcom/dodonew/online/adapter/OrderSeatAdapter;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/dodonew/online/adapter/OrderSeatAdapter;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->orderSeats:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/OrderSeatAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->orderSeatAdapter:Lcom/dodonew/online/adapter/OrderSeatAdapter;

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->orderSeatAdapter:Lcom/dodonew/online/adapter/OrderSeatAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 162
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->orderSeatAdapter:Lcom/dodonew/online/adapter/OrderSeatAdapter;

    new-instance v1, Lcom/dodonew/online/fragment/MyOrderSeatFragment$4;

    invoke-direct {v1, p0}, Lcom/dodonew/online/fragment/MyOrderSeatFragment$4;-><init>(Lcom/dodonew/online/fragment/MyOrderSeatFragment;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/OrderSeatAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->orderSeatAdapter:Lcom/dodonew/online/adapter/OrderSeatAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/OrderSeatAdapter;->notifyDataSetChanged()V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method


# virtual methods
.method protected lazyLoad()V
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->isPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->mHasLoadedOnce:Z

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->openId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->queryMyOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->activity:Landroid/app/Activity;

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 68
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginLabel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->activity:Landroid/app/Activity;

    const-string v4, "LOGINLABEL"

    invoke-static {v3, v4}, Lcom/dodonew/online/util/Utils;->getJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginLabel:Ljava/lang/String;

    .line 71
    :cond_0
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginLabel:Ljava/lang/String;

    .line 72
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->view:Landroid/view/View;

    if-nez v3, :cond_2

    .line 84
    const v3, 0x7f03008e

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->view:Landroid/view/View;

    .line 85
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->view:Landroid/view/View;

    const v4, 0x7f0d0090

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 86
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->view:Landroid/view/View;

    const v4, 0x7f0d0244

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 87
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 90
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v4}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 91
    iput-boolean v5, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->isPrepared:Z

    .line 92
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->lazyLoad()V

    .line 94
    .end local v1    # "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_2
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 95
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_3

    .line 96
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 98
    :cond_3
    iget-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->view:Landroid/view/View;

    return-object v3

    .line 75
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_4
    const-string v3, "mobile"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 76
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getPhone()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->openId:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_5
    const-string v3, "QQ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 78
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getQqId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->openId:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_6
    const-string v3, "WX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    sget-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v3}, Lcom/dodonew/online/bean/User;->getOpenId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment;->openId:Ljava/lang/String;

    goto/16 :goto_0
.end method
