.class public Lcom/dodonew/online/view/PopView;
.super Landroid/widget/FrameLayout;
.source "PopView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/view/PopView$OnItemClickListener;
    }
.end annotation


# instance fields
.field private choice:Ljava/lang/String;

.field context:Landroid/content/Context;

.field inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

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

.field private onItemClickListener:Lcom/dodonew/online/view/PopView$OnItemClickListener;

.field private popAdapter:Lcom/dodonew/online/adapter/PopAdapter;

.field private searchNetBarAdapter:Lcom/dodonew/online/adapter/SearchNetBarAdapter;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/PopView;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/dodonew/online/view/PopView;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/view/PopView;)Lcom/dodonew/online/view/PopView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/PopView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->onItemClickListener:Lcom/dodonew/online/view/PopView$OnItemClickListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dodonew/online/view/PopView;->context:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b9

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/PopView;->view:Landroid/view/View;

    .line 56
    invoke-direct {p0}, Lcom/dodonew/online/view/PopView;->initView()V

    .line 57
    invoke-direct {p0}, Lcom/dodonew/online/view/PopView;->initEvent()V

    .line 58
    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/dodonew/online/view/PopView$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/PopView$1;-><init>(Lcom/dodonew/online/view/PopView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    return-void
.end method

.method private initPopupWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "showView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 69
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/dodonew/online/view/PopView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 81
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/dodonew/online/view/PopView;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/dodonew/online/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 82
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/dodonew/online/view/PopView;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/dodonew/online/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    div-int/lit16 v1, v1, 0x96

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 83
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 84
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/dodonew/online/view/PopView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 87
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0d021f

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/PopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dodonew/online/view/PopView;->listView:Landroid/widget/ListView;

    .line 62
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->view:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dodonew/online/view/PopView;->initPopupWindow(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method private setPopAdapter()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->popAdapter:Lcom/dodonew/online/adapter/PopAdapter;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/dodonew/online/adapter/PopAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/PopView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/view/PopView;->list:Ljava/util/List;

    iget-object v3, p0, Lcom/dodonew/online/view/PopView;->choice:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dodonew/online/adapter/PopAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dodonew/online/view/PopView;->popAdapter:Lcom/dodonew/online/adapter/PopAdapter;

    .line 145
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dodonew/online/view/PopView;->popAdapter:Lcom/dodonew/online/adapter/PopAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->popAdapter:Lcom/dodonew/online/adapter/PopAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/PopView;->choice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/adapter/PopAdapter;->setChoice(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private setSearchNetBarAdapter()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->searchNetBarAdapter:Lcom/dodonew/online/adapter/SearchNetBarAdapter;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/dodonew/online/adapter/SearchNetBarAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/PopView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/view/PopView;->netBars:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/SearchNetBarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/view/PopView;->searchNetBarAdapter:Lcom/dodonew/online/adapter/SearchNetBarAdapter;

    .line 153
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dodonew/online/view/PopView;->searchNetBarAdapter:Lcom/dodonew/online/adapter/SearchNetBarAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->searchNetBarAdapter:Lcom/dodonew/online/adapter/SearchNetBarAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/SearchNetBarAdapter;->notifyDataSetChanged()V

    .line 156
    return-void
.end method


# virtual methods
.method public dissPop()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 140
    :cond_0
    return-void
.end method

.method public setList(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "choice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/dodonew/online/view/PopView;->choice:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/PopView;->list:Ljava/util/List;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    invoke-direct {p0}, Lcom/dodonew/online/view/PopView;->setPopAdapter()V

    .line 119
    return-void
.end method

.method public setNetBars(Ljava/util/List;)V
    .locals 1
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
    .line 103
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBar;>;"
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->netBars:Ljava/util/List;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/PopView;->netBars:Ljava/util/List;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->netBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->netBars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-direct {p0}, Lcom/dodonew/online/view/PopView;->setSearchNetBarAdapter()V

    .line 109
    return-void
.end method

.method public setOnItemClickListener(Lcom/dodonew/online/view/PopView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/dodonew/online/view/PopView$OnItemClickListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/dodonew/online/view/PopView;->onItemClickListener:Lcom/dodonew/online/view/PopView$OnItemClickListener;

    .line 160
    return-void
.end method

.method public showPop(Landroid/view/View;)V
    .locals 1
    .param p1, "showView"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/PopView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0
.end method
