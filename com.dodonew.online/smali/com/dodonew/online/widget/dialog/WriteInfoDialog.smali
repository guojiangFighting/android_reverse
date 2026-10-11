.class public Lcom/dodonew/online/widget/dialog/WriteInfoDialog;
.super Landroid/app/DialogFragment;
.source "WriteInfoDialog.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private account:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private chooseNetbarAdapter:Lcom/dodonew/online/adapter/ChooseNetbarAdapter;

.field private domainId:Ljava/lang/String;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field public netBarCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBarCaption;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

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

.field private tvBindNet:Landroid/widget/TextView;

.field private tvProvince:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/dialog/WriteInfoDialog;Lcom/dodonew/online/bean/NetBarList;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/WriteInfoDialog;
    .param p1, "x1"    # Lcom/dodonew/online/bean/NetBarList;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->setNetBarCaption(Lcom/dodonew/online/bean/NetBarList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/dialog/WriteInfoDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/dialog/WriteInfoDialog;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->setChooseNetbarAdapter()V

    return-void
.end method

.method private getNetBarByAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "domainId"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog$1;-><init>(Lcom/dodonew/online/widget/dialog/WriteInfoDialog;)V

    .line 109
    invoke-virtual {v0}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->para:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 111
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->para:Ljava/util/Map;

    const-string v1, "username"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->para:Ljava/util/Map;

    const-string v1, "domainId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "netCard/allbar"

    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->para:Ljava/util/Map;

    iget-object v2, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V

    .line 114
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/dodonew/online/widget/dialog/WriteInfoDialog;
    .locals 3
    .param p0, "account"    # Ljava/lang/String;
    .param p1, "domainId"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v1, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;

    invoke-direct {v1}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;-><init>()V

    .line 65
    .local v1, "informationDialog":Lcom/dodonew/online/widget/dialog/WriteInfoDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "domainId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v1
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
    .line 122
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

    .line 123
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->activity:Landroid/app/Activity;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/widget/dialog/WriteInfoDialog$2;

    invoke-direct {v4, p0, p1}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog$2;-><init>(Lcom/dodonew/online/widget/dialog/WriteInfoDialog;Ljava/lang/String;)V

    new-instance v5, Lcom/dodonew/online/widget/dialog/WriteInfoDialog$3;

    invoke-direct {v5, p0}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog$3;-><init>(Lcom/dodonew/online/widget/dialog/WriteInfoDialog;)V

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p2}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 140
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method private setChooseNetbarAdapter()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->chooseNetbarAdapter:Lcom/dodonew/online/adapter/ChooseNetbarAdapter;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;

    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->netBarCaptions:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->chooseNetbarAdapter:Lcom/dodonew/online/adapter/ChooseNetbarAdapter;

    .line 159
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->chooseNetbarAdapter:Lcom/dodonew/online/adapter/ChooseNetbarAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 160
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->chooseNetbarAdapter:Lcom/dodonew/online/adapter/ChooseNetbarAdapter;

    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->chooseNetbarAdapter:Lcom/dodonew/online/adapter/ChooseNetbarAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/ChooseNetbarAdapter;->notifyDataSetChanged()V

    .line 165
    return-void
.end method

.method private setNetBarCaption(Lcom/dodonew/online/bean/NetBarList;)V
    .locals 2
    .param p1, "netBarList"    # Lcom/dodonew/online/bean/NetBarList;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->netBarCaptions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->netBarCaptions:Ljava/util/List;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->netBarCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->netBarCaptions:Ljava/util/List;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBarList;->getNetbarList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->netBarCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->activity:Landroid/app/Activity;

    .line 76
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 78
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->account:Ljava/lang/String;

    .line 79
    const-string v1, "domainId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->domainId:Ljava/lang/String;

    .line 81
    :cond_0
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

    .line 86
    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 88
    const v1, 0x7f03007f

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->view:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->view:Landroid/view/View;

    const v2, 0x7f0d0090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 90
    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    div-int/lit16 v4, v4, 0x96

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->view:Landroid/view/View;

    const v2, 0x7f0d0244

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 92
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 95
    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->para:Ljava/util/Map;

    .line 97
    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->account:Ljava/lang/String;

    iget-object v2, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->domainId:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->getNetBarByAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->view:Landroid/view/View;

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 105
    return-void
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/interfaces/OnItemClickListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->onItemClickListener:Lcom/dodonew/online/interfaces/OnItemClickListener;

    .line 169
    return-void
.end method
