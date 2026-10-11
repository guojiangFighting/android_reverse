.class public Lcom/dodonew/online/fragment/VideoFragment;
.super Lcom/dodonew/online/base/BaseFragment;
.source "VideoFragment.java"


# instance fields
.field private game:Lcom/dodonew/online/bean/Game;

.field private gameDataView:Lcom/dodonew/online/view/GameDataView;

.field private gameTitleAdapter:Lcom/dodonew/online/adapter/GameTitleAdapter;

.field private games:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Game;",
            ">;"
        }
    .end annotation
.end field

.field private isPrepared:Z

.field private mHasLoadedOnce:Z

.field private onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

.field private rvTitle:Landroid/support/v7/widget/RecyclerView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dodonew/online/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/fragment/VideoFragment;)Lcom/dodonew/online/bean/Game;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/VideoFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->game:Lcom/dodonew/online/bean/Game;

    return-object v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/fragment/VideoFragment;Lcom/dodonew/online/bean/Game;)Lcom/dodonew/online/bean/Game;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/fragment/VideoFragment;
    .param p1, "x1"    # Lcom/dodonew/online/bean/Game;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dodonew/online/fragment/VideoFragment;->game:Lcom/dodonew/online/bean/Game;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dodonew/online/fragment/VideoFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/VideoFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->games:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/fragment/VideoFragment;)Lcom/dodonew/online/adapter/GameTitleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/VideoFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->gameTitleAdapter:Lcom/dodonew/online/adapter/GameTitleAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/fragment/VideoFragment;)Lcom/dodonew/online/view/GameDataView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/fragment/VideoFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->gameDataView:Lcom/dodonew/online/view/GameDataView;

    return-object v0
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->games:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->games:Ljava/util/List;

    new-instance v1, Lcom/dodonew/online/bean/Game;

    const-string v2, "4"

    const-string v3, "\u82f1\u96c4\u8054\u76df"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/dodonew/online/bean/Game;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->games:Ljava/util/List;

    new-instance v1, Lcom/dodonew/online/bean/Game;

    const-string v2, "7"

    const-string v3, "\u7a7f\u8d8a\u706b\u7ebf"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/dodonew/online/bean/Game;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->games:Ljava/util/List;

    new-instance v1, Lcom/dodonew/online/bean/Game;

    const-string v2, "29"

    const-string v3, "\u7089\u77f3\u4f20\u8bf4"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/dodonew/online/bean/Game;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->games:Ljava/util/List;

    new-instance v1, Lcom/dodonew/online/bean/Game;

    const-string v2, ""

    const-string v3, "\u7f8e\u5973\u76f4\u64ad"

    const-string v4, "1"

    invoke-direct {v1, v2, v3, v4}, Lcom/dodonew/online/bean/Game;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->games:Ljava/util/List;

    new-instance v1, Lcom/dodonew/online/bean/Game;

    const-string v2, ""

    const-string v3, "\u5176\u4ed6"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/dodonew/online/bean/Game;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->games:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Game;

    iput-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->game:Lcom/dodonew/online/bean/Game;

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->rvTitle:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/fragment/VideoFragment;->games:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 111
    new-instance v0, Lcom/dodonew/online/adapter/GameTitleAdapter;

    invoke-virtual {p0}, Lcom/dodonew/online/fragment/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/fragment/VideoFragment;->games:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/GameTitleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->gameTitleAdapter:Lcom/dodonew/online/adapter/GameTitleAdapter;

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->gameTitleAdapter:Lcom/dodonew/online/adapter/GameTitleAdapter;

    new-instance v1, Lcom/dodonew/online/fragment/VideoFragment$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/fragment/VideoFragment$1;-><init>(Lcom/dodonew/online/fragment/VideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/GameTitleAdapter;->setOnItemClickListener(Lcom/dodonew/online/interfaces/OnItemClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->rvTitle:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dodonew/online/fragment/VideoFragment;->gameTitleAdapter:Lcom/dodonew/online/adapter/GameTitleAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 121
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->gameDataView:Lcom/dodonew/online/view/GameDataView;

    iget-object v1, p0, Lcom/dodonew/online/fragment/VideoFragment;->game:Lcom/dodonew/online/bean/Game;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/GameDataView;->setGame(Lcom/dodonew/online/bean/Game;)V

    .line 122
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->view:Landroid/view/View;

    const v1, 0x7f0d01de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->rvTitle:Landroid/support/v7/widget/RecyclerView;

    .line 97
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->rvTitle:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 98
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->rvTitle:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 99
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->view:Landroid/view/View;

    const v1, 0x7f0d00b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/view/GameDataView;

    iput-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->gameDataView:Lcom/dodonew/online/view/GameDataView;

    .line 100
    return-void
.end method

.method public static newInstance()Lcom/dodonew/online/fragment/VideoFragment;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/dodonew/online/fragment/VideoFragment;

    invoke-direct {v0}, Lcom/dodonew/online/fragment/VideoFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected lazyLoad()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 127
    iget-boolean v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->isPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->mHasLoadedOnce:Z

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iput-boolean v1, p0, Lcom/dodonew/online/fragment/VideoFragment;->mHasLoadedOnce:Z

    .line 131
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/dodonew/online/fragment/VideoFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    invoke-interface {v0, v1}, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;->onResponse(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/VideoFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/interfaces/OnNetworkResponseListener;

    iput-object v1, p0, Lcom/dodonew/online/fragment/VideoFragment;->onNetworkResponseListener:Lcom/dodonew/online/interfaces/OnNetworkResponseListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Calling fragment must implement HomeFragment.OnNetworkResponseListener interface"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lcom/dodonew/online/fragment/VideoFragment;->view:Landroid/view/View;

    if-nez v1, :cond_0

    .line 82
    const v1, 0x7f030094

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/fragment/VideoFragment;->view:Landroid/view/View;

    .line 83
    invoke-direct {p0}, Lcom/dodonew/online/fragment/VideoFragment;->initView()V

    .line 84
    invoke-direct {p0}, Lcom/dodonew/online/fragment/VideoFragment;->initData()V

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dodonew/online/fragment/VideoFragment;->isPrepared:Z

    .line 86
    invoke-virtual {p0}, Lcom/dodonew/online/fragment/VideoFragment;->lazyLoad()V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/fragment/VideoFragment;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 89
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 90
    iget-object v1, p0, Lcom/dodonew/online/fragment/VideoFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/fragment/VideoFragment;->view:Landroid/view/View;

    return-object v1
.end method
