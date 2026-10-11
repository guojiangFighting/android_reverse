.class public Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderViewCache;
.super Ljava/lang/Object;
.source "HeaderViewCache.java"

# interfaces
.implements Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;


# instance fields
.field private final mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

.field private final mHeaderViews:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;)V
    .locals 1
    .param p1, "adapter"    # Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;
    .param p2, "orientationProvider"    # Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderViewCache;->mHeaderViews:Landroid/support/v4/util/LongSparseArray;

    .line 24
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderViewCache;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    .line 25
    iput-object p2, p0, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderViewCache;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    .line 26
    return-void
.end method


# virtual methods
.method public getHeader(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 12
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "position"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v9, -0x2

    const/4 v10, 0x0

    .line 30
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderViewCache;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    invoke-interface {v8, p2}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;->getHeaderId(I)J

    move-result-wide v4

    .line 32
    .local v4, "headerId":J
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderViewCache;->mHeaderViews:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v8, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 33
    .local v2, "header":Landroid/view/View;
    if-nez v2, :cond_1

    .line 35
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderViewCache;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    invoke-interface {v8, p1}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 36
    .local v6, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderViewCache;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    invoke-interface {v8, v6, p2}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;->onBindHeaderViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 37
    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_0

    .line 39
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    :cond_0
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderViewCache;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    invoke-interface {v8, p1}, Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;->getOrientation(Landroid/support/v7/widget/RecyclerView;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 47
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 48
    .local v7, "widthSpec":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 55
    .local v3, "heightSpec":I
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 57
    .local v1, "childWidth":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    invoke-static {v3, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 58
    .local v0, "childHeight":I
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v2, v10, v10, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 60
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderViewCache;->mHeaderViews:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 62
    .end local v0    # "childHeight":I
    .end local v1    # "childWidth":I
    .end local v3    # "heightSpec":I
    .end local v6    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v7    # "widthSpec":I
    :cond_1
    return-object v2

    .line 50
    .restart local v6    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 51
    .restart local v7    # "widthSpec":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "heightSpec":I
    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderViewCache;->mHeaderViews:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 68
    return-void
.end method
