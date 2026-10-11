.class public Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HeaderAndFooterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_FOOTER_VIEW:I = -0x7fffffff

.field private static final TYPE_HEADER_VIEW:I = -0x80000000


# instance fields
.field private mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private mFooterViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;-><init>(Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "innerAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$1;-><init>(Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 66
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 67
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "footer is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 112
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "header is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 102
    return-void
.end method

.method public getFooterView()Landroid/view/View;
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getInnerAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getFooterViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    const v5, 0x3fffffff    # 1.9999999f

    .line 189
    iget-object v3, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 190
    .local v1, "innerCount":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v0

    .line 191
    .local v0, "headerViewsCountCount":I
    if-ge p1, v0, :cond_0

    .line 192
    const/high16 v3, -0x80000000

    add-int/2addr v3, p1

    .line 201
    :goto_0
    return v3

    .line 193
    :cond_0
    if-gt v0, p1, :cond_2

    add-int v3, v0, v1

    if-ge p1, v3, :cond_2

    .line 195
    iget-object v3, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    sub-int v4, p1, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v2

    .line 196
    .local v2, "innerItemViewType":I
    if-lt v2, v5, :cond_1

    .line 197
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "your adapter\'s return value of getViewTypeCount() must < Integer.MAX_VALUE / 2"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :cond_1
    add-int v3, v2, v5

    goto :goto_0

    .line 201
    .end local v2    # "innerItemViewType":I
    :cond_2
    const v3, -0x7fffffff

    add-int/2addr v3, p1

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    goto :goto_0
.end method

.method public isFooter(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 154
    .local v0, "lastPosition":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getFooterViewsCount()I

    move-result v1

    if-lez v1, :cond_0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHeader(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v0

    .line 172
    .local v0, "headerViewsCountCount":I
    if-lt p2, v0, :cond_1

    iget-object v2, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/2addr v2, v0

    if-ge p2, v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    sub-int v3, p2, v0

    invoke-virtual {v2, p1, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 176
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v2, :cond_0

    .line 177
    check-cast v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v2, 0x3fffffff    # 1.9999999f

    const v4, -0x7fffffff

    const/high16 v3, -0x80000000

    .line 159
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v0

    .line 160
    .local v0, "headerViewsCountCount":I
    add-int v1, v3, v0

    if-ge p2, v1, :cond_0

    .line 161
    new-instance v2, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$ViewHolder;

    iget-object v1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    sub-int v3, p2, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {v2, v1}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    move-object v1, v2

    .line 165
    :goto_0
    return-object v1

    .line 162
    :cond_0
    if-lt p2, v4, :cond_1

    if-ge p2, v2, :cond_1

    .line 163
    new-instance v2, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$ViewHolder;

    iget-object v1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    sub-int v3, p2, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {v2, v1}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    move-object v1, v2

    goto :goto_0

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    sub-int v2, p2, v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 138
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 133
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    if-eqz p1, :cond_0

    .line 76
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "your adapter must be a RecyclerView.Adapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->notifyItemRangeRemoved(II)V

    .line 82
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 85
    :cond_1
    iput-object p1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 86
    iget-object v0, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 87
    invoke-virtual {p0}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->getHeaderViewsCount()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->mInnerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dodonew/online/widget/HeaderAndFooterRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    .line 88
    return-void
.end method
