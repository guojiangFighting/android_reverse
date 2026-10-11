.class public Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;
.super Ljava/lang/Object;
.source "HeaderPositionCalculator.java"


# instance fields
.field private final mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

.field private final mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

.field private final mHeaderProvider:Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;

.field private final mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;)V
    .locals 1
    .param p1, "adapter"    # Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;
    .param p2, "headerProvider"    # Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;
    .param p3, "orientationProvider"    # Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;
    .param p4, "dimensionCalculator"    # Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    .line 34
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    .line 35
    iput-object p2, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mHeaderProvider:Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;

    .line 36
    iput-object p3, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    .line 37
    iput-object p4, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    .line 38
    return-void
.end method

.method private getFirstViewUnobscuredByHeader(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "firstHeader"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v5, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    invoke-interface {v5, p1}, Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;->isReverseLayout(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    .line 199
    .local v3, "isReverseLayout":Z
    if-eqz v3, :cond_0

    const/4 v4, -0x1

    .line 200
    .local v4, "step":I
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 201
    .local v1, "from":I
    :goto_1
    move v2, v1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v2, v5, :cond_3

    .line 202
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    invoke-interface {v5, p1}, Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;->getOrientation(Landroid/support/v7/widget/RecyclerView;)I

    move-result v5

    invoke-direct {p0, p1, v0, p2, v5}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->itemIsObscuredByHeader(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 207
    .end local v0    # "child":Landroid/view/View;
    :goto_3
    return-object v0

    .line 199
    .end local v1    # "from":I
    .end local v2    # "i":I
    .end local v4    # "step":I
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 200
    .restart local v4    # "step":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 201
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "from":I
    .restart local v2    # "i":I
    :cond_2
    add-int/2addr v2, v4

    goto :goto_2

    .line 207
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private getListLeft(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getListTop(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private indexOutOfBounds(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    invoke-interface {v0}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDefaultHeaderOffset(Landroid/graphics/Rect;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)V
    .locals 9
    .param p1, "headerMargins"    # Landroid/graphics/Rect;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "header"    # Landroid/view/View;
    .param p4, "firstView"    # Landroid/view/View;
    .param p5, "orientation"    # I

    .prologue
    .line 114
    iget-object v6, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    iget-object v7, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p3}, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 116
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 117
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 118
    .local v1, "leftMargin":I
    const/4 v3, 0x0

    .line 119
    .local v3, "topMargin":I
    instance-of v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_0

    move-object v2, v0

    .line 120
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 121
    .local v2, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 122
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 125
    .end local v2    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/4 v6, 0x1

    if-ne p5, v6, :cond_1

    .line 126
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v1

    iget-object v7, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int v4, v6, v7

    .line 128
    .local v4, "translationX":I
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    .line 129
    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->getListTop(Landroid/support/v7/widget/RecyclerView;)I

    move-result v7

    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    .line 127
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 137
    .local v5, "translationY":I
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    .line 138
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    .line 137
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    return-void

    .line 131
    .end local v4    # "translationX":I
    .end local v5    # "translationY":I
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v3

    iget-object v7, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int v5, v6, v7

    .line 133
    .restart local v5    # "translationY":I
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 134
    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->getListLeft(Landroid/support/v7/widget/RecyclerView;)I

    move-result v7

    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    .line 132
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .restart local v4    # "translationX":I
    goto :goto_0
.end method

.method private isStickyHeaderBeingPushedOffscreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 12
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "stickyHeader"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->getFirstViewUnobscuredByHeader(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    .line 143
    .local v7, "viewAfterHeader":Landroid/view/View;
    invoke-virtual {p1, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 144
    .local v1, "firstViewUnderHeaderPosition":I
    const/4 v10, -0x1

    if-ne v1, v10, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v8

    .line 148
    :cond_1
    iget-object v10, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    invoke-interface {v10, p1}, Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;->isReverseLayout(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    .line 149
    .local v2, "isReverseLayout":Z
    if-lez v1, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->hasNewHeader(IZ)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 150
    iget-object v10, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mHeaderProvider:Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;

    invoke-interface {v10, p1, v1}, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;->getHeader(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v4

    .line 151
    .local v4, "nextHeader":Landroid/view/View;
    iget-object v10, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    iget-object v11, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v10, v11, v4}, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 152
    iget-object v10, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    iget-object v11, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v10, v11, p2}, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 154
    iget-object v10, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    invoke-interface {v10, p1}, Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;->getOrientation(Landroid/support/v7/widget/RecyclerView;)I

    move-result v10

    if-ne v10, v9, :cond_2

    .line 155
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v6, v10, v11

    .line 156
    .local v6, "topOfNextHeader":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v0, v10, v11

    .line 157
    .local v0, "bottomOfThisHeader":I
    if-ge v6, v0, :cond_0

    move v8, v9

    .line 158
    goto :goto_0

    .line 161
    .end local v0    # "bottomOfThisHeader":I
    .end local v6    # "topOfNextHeader":I
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v3, v10, v11

    .line 162
    .local v3, "leftOfNextHeader":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v5, v10, v11

    .line 163
    .local v5, "rightOfThisHeader":I
    if-ge v3, v5, :cond_0

    move v8, v9

    .line 164
    goto/16 :goto_0
.end method

.method private itemIsObscuredByHeader(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)Z
    .locals 10
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "item"    # Landroid/view/View;
    .param p3, "header"    # Landroid/view/View;
    .param p4, "orientation"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 221
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 222
    .local v5, "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    iget-object v9, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v8, v9, p3}, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 224
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 225
    .local v0, "adapterPosition":I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    iget-object v8, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mHeaderProvider:Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;

    invoke-interface {v8, p1, v0}, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;->getHeader(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v8

    if-eq v8, p3, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v6

    .line 231
    :cond_1
    if-ne p4, v7, :cond_3

    .line 232
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v4, v8, v9

    .line 233
    .local v4, "itemTop":I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v9, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int v1, v8, v9

    .line 234
    .local v1, "headerBottom":I
    if-gt v4, v1, :cond_0

    .end local v1    # "headerBottom":I
    .end local v4    # "itemTop":I
    :cond_2
    move v6, v7

    .line 245
    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v3, v8, v9

    .line 239
    .local v3, "itemLeft":I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int v2, v8, v9

    .line 240
    .local v2, "headerRight":I
    if-le v3, v2, :cond_2

    goto :goto_0
.end method

.method private translateHeaderWithNextHeader(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "orientation"    # I
    .param p3, "translation"    # Landroid/graphics/Rect;
    .param p4, "currentHeader"    # Landroid/view/View;
    .param p5, "viewAfterNextHeader"    # Landroid/view/View;
    .param p6, "nextHeader"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, p6}, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 175
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, p4}, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 176
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 177
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->getListTop(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v2, v3, v4

    .line 178
    .local v2, "topOfStickyHeader":I
    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v1, v3, v2

    .line 179
    .local v1, "shiftFromNextHeader":I
    if-ge v1, v2, :cond_0

    .line 180
    iget v3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, p3, Landroid/graphics/Rect;->top:I

    .line 189
    .end local v2    # "topOfStickyHeader":I
    :cond_0
    :goto_0
    return-void

    .line 183
    .end local v1    # "shiftFromNextHeader":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->getListLeft(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int v0, v3, v4

    .line 184
    .local v0, "leftOfStickyHeader":I
    invoke-virtual {p5}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p6}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v1, v3, v0

    .line 185
    .restart local v1    # "shiftFromNextHeader":I
    if-ge v1, v0, :cond_0

    .line 186
    iget v3, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, p3, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method


# virtual methods
.method public hasNewHeader(IZ)Z
    .locals 12
    .param p1, "position"    # I
    .param p2, "isReverseLayout"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->indexOutOfBounds(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v8

    .line 79
    :cond_1
    iget-object v6, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    invoke-interface {v6, p1}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;->getHeaderId(I)J

    move-result-wide v2

    .line 81
    .local v2, "headerId":J
    const-wide/16 v10, 0x0

    cmp-long v6, v2, v10

    if-ltz v6, :cond_0

    .line 85
    const-wide/16 v4, -0x1

    .line 86
    .local v4, "nextItemHeaderId":J
    if-eqz p2, :cond_4

    move v6, v7

    :goto_1
    add-int v1, p1, v6

    .line 87
    .local v1, "nextItemPosition":I
    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->indexOutOfBounds(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 88
    iget-object v6, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    invoke-interface {v6, v1}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;->getHeaderId(I)J

    move-result-wide v4

    .line 90
    :cond_2
    if-eqz p2, :cond_5

    iget-object v6, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    invoke-interface {v6}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;->getItemCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 92
    .local v0, "firstItemPosition":I
    :goto_2
    if-eq p1, v0, :cond_3

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    :cond_3
    :goto_3
    move v8, v7

    goto :goto_0

    .line 86
    .end local v0    # "firstItemPosition":I
    .end local v1    # "nextItemPosition":I
    :cond_4
    const/4 v6, -0x1

    goto :goto_1

    .restart local v1    # "nextItemPosition":I
    :cond_5
    move v0, v8

    .line 90
    goto :goto_2

    .restart local v0    # "firstItemPosition":I
    :cond_6
    move v7, v8

    .line 92
    goto :goto_3
.end method

.method public hasStickyHeader(Landroid/view/View;II)Z
    .locals 8
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "orientation"    # I
    .param p3, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 53
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, p1}, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 54
    if-ne p2, v2, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 56
    .local v1, "offset":I
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 62
    .local v0, "margin":I
    :goto_0
    if-gt v1, v0, :cond_1

    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    invoke-interface {v3, p3}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;->getHeaderId(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    :goto_1
    return v2

    .line 58
    .end local v0    # "margin":I
    .end local v1    # "offset":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 59
    .restart local v1    # "offset":I
    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mTempRect1:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->left:I

    .restart local v0    # "margin":I
    goto :goto_0

    .line 62
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public initHeaderBounds(Landroid/graphics/Rect;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;Z)V
    .locals 17
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "header"    # Landroid/view/View;
    .param p4, "firstView"    # Landroid/view/View;
    .param p5, "firstHeader"    # Z

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;->getOrientation(Landroid/support/v7/widget/RecyclerView;)I

    move-result v8

    .local v8, "orientation":I
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 101
    invoke-direct/range {v3 .. v8}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->initDefaultHeaderOffset(Landroid/graphics/Rect;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)V

    .line 103
    if-eqz p5, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->isStickyHeaderBeingPushedOffscreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->getFirstViewUnobscuredByHeader(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 105
    .local v14, "viewAfterNextHeader":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v16

    .line 106
    .local v16, "firstViewUnderHeaderPosition":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mHeaderProvider:Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v3, v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;->getHeader(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v15

    .line 107
    .local v15, "secondHeader":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;->getOrientation(Landroid/support/v7/widget/RecyclerView;)I

    move-result v11

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    invoke-direct/range {v9 .. v15}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->translateHeaderWithNextHeader(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 110
    .end local v14    # "viewAfterNextHeader":Landroid/view/View;
    .end local v15    # "secondHeader":Landroid/view/View;
    .end local v16    # "firstViewUnderHeaderPosition":I
    :cond_0
    return-void
.end method
