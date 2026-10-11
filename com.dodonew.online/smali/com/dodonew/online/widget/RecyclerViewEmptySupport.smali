.class public Lcom/dodonew/online/widget/RecyclerViewEmptySupport;
.super Landroid/support/v7/widget/RecyclerView;
.source "RecyclerViewEmptySupport.java"


# instance fields
.field private emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private emptyView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;-><init>(Lcom/dodonew/online/widget/RecyclerViewEmptySupport;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport;->emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;-><init>(Lcom/dodonew/online/widget/RecyclerViewEmptySupport;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport;->emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/RecyclerViewEmptySupport$1;-><init>(Lcom/dodonew/online/widget/RecyclerViewEmptySupport;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport;->emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/RecyclerViewEmptySupport;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/RecyclerViewEmptySupport;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport;->emptyView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport;->emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport;->emptyObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 55
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dodonew/online/widget/RecyclerViewEmptySupport;->emptyView:Landroid/view/View;

    .line 59
    return-void
.end method
