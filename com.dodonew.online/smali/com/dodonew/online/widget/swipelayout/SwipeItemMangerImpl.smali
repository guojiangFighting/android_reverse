.class public Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;
.super Ljava/lang/Object;
.source "SwipeItemMangerImpl.java"

# interfaces
.implements Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;,
        Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;,
        Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$ValueBox;,
        Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;
    }
.end annotation


# instance fields
.field public final INVALID_POSITION:I

.field protected adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private isRecyclerView:Z

.field protected mAdapter:Landroid/widget/BaseAdapter;

.field protected mOpenPosition:I

.field protected mOpenPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mShownLayouts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dodonew/online/widget/swipelayout/SwipeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    const/4 v1, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->Single:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mode:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    .line 19
    iput v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->INVALID_POSITION:I

    .line 21
    iput v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPosition:I

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->isRecyclerView:Z

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    instance-of v0, p1, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerInterface;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter should implement the SwipeAdapterInterface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->isRecyclerView:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->Single:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mode:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    .line 19
    iput v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->INVALID_POSITION:I

    .line 21
    iput v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPosition:I

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->isRecyclerView:Z

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    instance-of v0, p1, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerInterface;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter should implement the SwipeAdapterInterface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mAdapter:Landroid/widget/BaseAdapter;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;)Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mode:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    return-object v0
.end method

.method private getSwipeLayoutId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->isRecyclerView:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeAdapterInterface;

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeAdapterInterface;

    .line 105
    invoke-interface {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeAdapterInterface;->getSwipeLayoutResourceId(I)I

    move-result v0

    .line 108
    :goto_0
    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeAdapterInterface;

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeAdapterInterface;

    .line 108
    invoke-interface {v0, p1}, Lcom/dodonew/online/widget/swipelayout/SwipeAdapterInterface;->getSwipeLayoutResourceId(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public closeAllExcept(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 3
    .param p1, "layout"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .line 145
    .local v0, "s":Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
    if-eq v0, p1, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->close()V

    goto :goto_0

    .line 148
    .end local v0    # "s":Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
    :cond_1
    return-void
.end method

.method public closeItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mode:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->Multiple:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->isRecyclerView:Z

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 140
    :goto_1
    return-void

    .line 132
    :cond_1
    iget v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPosition:I

    if-ne v0, p1, :cond_0

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPosition:I

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public getMode()Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mode:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    return-object v0
.end method

.method public getOpenItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mode:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->Multiple:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_0

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getOpenLayouts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/swipelayout/SwipeLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public initialize(Landroid/view/View;I)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 71
    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->getSwipeLayoutId(I)I

    move-result v1

    .line 73
    .local v1, "resId":I
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;

    invoke-direct {v0, p0, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;-><init>(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;I)V

    .line 74
    .local v0, "onLayoutListener":Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .line 75
    .local v2, "swipeLayout":Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
    if-nez v2, :cond_0

    .line 76
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "can not find SwipeLayout in target view"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_0
    new-instance v3, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;

    invoke-direct {v3, p0, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;-><init>(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;I)V

    .line 80
    .local v3, "swipeMemory":Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;
    invoke-virtual {v2, v3}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->addSwipeListener(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$SwipeListener;)V

    .line 81
    invoke-virtual {v2, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->addOnLayoutListener(Lcom/dodonew/online/widget/swipelayout/SwipeLayout$OnLayout;)V

    .line 82
    new-instance v4, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$ValueBox;

    invoke-direct {v4, p0, p2, v3, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$ValueBox;-><init>(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;ILcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;)V

    invoke-virtual {v2, v1, v4}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->setTag(ILjava/lang/Object;)V

    .line 85
    iget-object v4, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public isOpen(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mode:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->Multiple:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPosition:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mode:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    sget-object v1, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;->Multiple:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->isRecyclerView:Z

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 125
    :goto_1
    return-void

    .line 118
    :cond_1
    iput p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPosition:I

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public removeShownLayouts(Lcom/dodonew/online/widget/swipelayout/SwipeLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public setMode(Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mode:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$Mode;

    .line 65
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 66
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->mOpenPosition:I

    .line 68
    return-void
.end method

.method public updateConvertView(Landroid/view/View;I)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 89
    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl;->getSwipeLayoutId(I)I

    move-result v0

    .line 91
    .local v0, "resId":I
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;

    .line 92
    .local v1, "swipeLayout":Lcom/dodonew/online/widget/swipelayout/SwipeLayout;
    if-nez v1, :cond_0

    .line 93
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can not find SwipeLayout in target view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :cond_0
    invoke-virtual {v1, v0}, Lcom/dodonew/online/widget/swipelayout/SwipeLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$ValueBox;

    .line 97
    .local v2, "valueBox":Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$ValueBox;
    iget-object v3, v2, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$ValueBox;->swipeMemory:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;

    invoke-virtual {v3, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$SwipeMemory;->setPosition(I)V

    .line 98
    iget-object v3, v2, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$ValueBox;->onLayoutListener:Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;

    invoke-virtual {v3, p2}, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$OnLayoutListener;->setPosition(I)V

    .line 99
    iput p2, v2, Lcom/dodonew/online/widget/swipelayout/SwipeItemMangerImpl$ValueBox;->position:I

    .line 100
    return-void
.end method
