.class public Lcom/dodonew/online/view/SearchRecordView;
.super Landroid/widget/LinearLayout;
.source "SearchRecordView.java"


# instance fields
.field public adapter:Lcom/dodonew/online/adapter/SearchRecordAdapter;

.field context:Landroid/content/Context;

.field public flag:I

.field public footView:Landroid/widget/TextView;

.field private inflater:Landroid/view/LayoutInflater;

.field public layout:Landroid/widget/LinearLayout;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public listView:Landroid/widget/ListView;

.field public list_city:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;"
        }
    .end annotation
.end field

.field public list_netBar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBar;",
            ">;"
        }
    .end annotation
.end field

.field private searchNetBarAdapter:Lcom/dodonew/online/adapter/SearchNetBarAdapter;

.field public titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/view/SearchRecordView;->flag:I

    .line 42
    iput-object p1, p0, Lcom/dodonew/online/view/SearchRecordView;->context:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->inflater:Landroid/view/LayoutInflater;

    .line 44
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a7

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-direct {p0}, Lcom/dodonew/online/view/SearchRecordView;->initView()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/view/SearchRecordView;->flag:I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/view/SearchRecordView;->flag:I

    .line 49
    iput-object p1, p0, Lcom/dodonew/online/view/SearchRecordView;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/dodonew/online/view/SearchRecordView;->list:Ljava/util/List;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->inflater:Landroid/view/LayoutInflater;

    .line 52
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a7

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    invoke-direct {p0}, Lcom/dodonew/online/view/SearchRecordView;->initView()V

    .line 54
    invoke-direct {p0}, Lcom/dodonew/online/view/SearchRecordView;->initData()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/City;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/City;>;"
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/view/SearchRecordView;->flag:I

    .line 58
    iput-object p1, p0, Lcom/dodonew/online/view/SearchRecordView;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/dodonew/online/view/SearchRecordView;->list_city:Ljava/util/List;

    .line 60
    iput p3, p0, Lcom/dodonew/online/view/SearchRecordView;->flag:I

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->inflater:Landroid/view/LayoutInflater;

    .line 62
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a7

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-direct {p0}, Lcom/dodonew/online/view/SearchRecordView;->initView()V

    .line 64
    invoke-direct {p0}, Lcom/dodonew/online/view/SearchRecordView;->initData()V

    .line 65
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 84
    iget v0, p0, Lcom/dodonew/online/view/SearchRecordView;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->footView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    new-instance v0, Lcom/dodonew/online/adapter/SearchRecordAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/SearchRecordView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/view/SearchRecordView;->list_city:Ljava/util/List;

    iget v3, p0, Lcom/dodonew/online/view/SearchRecordView;->flag:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dodonew/online/adapter/SearchRecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->adapter:Lcom/dodonew/online/adapter/SearchRecordAdapter;

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dodonew/online/view/SearchRecordView;->adapter:Lcom/dodonew/online/adapter/SearchRecordAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/dodonew/online/adapter/SearchRecordAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/SearchRecordView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/view/SearchRecordView;->list:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/SearchRecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->adapter:Lcom/dodonew/online/adapter/SearchRecordAdapter;

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 71
    const v0, 0x7f0d01f2

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/SearchRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->layout:Landroid/widget/LinearLayout;

    .line 72
    const v0, 0x7f0d018a

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/SearchRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->titleView:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0d01f3

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/SearchRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->listView:Landroid/widget/ListView;

    .line 74
    const v0, 0x7f0d01f4

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/SearchRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->footView:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->titleView:Landroid/widget/TextView;

    new-instance v1, Lcom/dodonew/online/view/SearchRecordView$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/SearchRecordView$1;-><init>(Lcom/dodonew/online/view/SearchRecordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->adapter:Lcom/dodonew/online/adapter/SearchRecordAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/SearchRecordAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method

.method public setCityData()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->adapter:Lcom/dodonew/online/adapter/SearchRecordAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/SearchRecordAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
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
    .line 104
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBar;>;"
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->list_netBar:Ljava/util/List;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->list_netBar:Ljava/util/List;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->list_netBar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->list_netBar:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-virtual {p0}, Lcom/dodonew/online/view/SearchRecordView;->setSearchNetBarAdapter()V

    .line 110
    return-void
.end method

.method public setSearchNetBarAdapter()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->searchNetBarAdapter:Lcom/dodonew/online/adapter/SearchNetBarAdapter;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/dodonew/online/adapter/SearchNetBarAdapter;

    iget-object v1, p0, Lcom/dodonew/online/view/SearchRecordView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dodonew/online/view/SearchRecordView;->list_netBar:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/adapter/SearchNetBarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->searchNetBarAdapter:Lcom/dodonew/online/adapter/SearchNetBarAdapter;

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dodonew/online/view/SearchRecordView;->searchNetBarAdapter:Lcom/dodonew/online/adapter/SearchNetBarAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/SearchRecordView;->searchNetBarAdapter:Lcom/dodonew/online/adapter/SearchNetBarAdapter;

    invoke-virtual {v0}, Lcom/dodonew/online/adapter/SearchNetBarAdapter;->notifyDataSetChanged()V

    .line 118
    return-void
.end method
