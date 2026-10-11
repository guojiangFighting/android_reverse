.class public Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "StickyRecyclerHeadersDecoration.java"


# instance fields
.field private final mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

.field private final mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

.field private final mHeaderPositionCalculator:Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;

.field private final mHeaderProvider:Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;

.field private final mHeaderRects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

.field private final mRenderer:Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    .prologue
    .line 36
    new-instance v0, Lcom/dodonew/online/widget/stickyheaderview/util/LinearLayoutOrientationProvider;

    invoke-direct {v0}, Lcom/dodonew/online/widget/stickyheaderview/util/LinearLayoutOrientationProvider;-><init>()V

    new-instance v1, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    invoke-direct {v1}, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;-><init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;)V
    .locals 1
    .param p1, "adapter"    # Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;
    .param p2, "headerRenderer"    # Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;
    .param p3, "orientationProvider"    # Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;
    .param p4, "dimensionCalculator"    # Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;
    .param p5, "headerProvider"    # Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;
    .param p6, "headerPositionCalculator"    # Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderRects:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mTempRect:Landroid/graphics/Rect;

    .line 55
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    .line 56
    iput-object p5, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderProvider:Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;

    .line 57
    iput-object p3, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    .line 58
    iput-object p2, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mRenderer:Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;

    .line 59
    iput-object p4, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    .line 60
    iput-object p6, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderPositionCalculator:Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;

    .line 61
    return-void
.end method

.method private constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;)V
    .locals 6
    .param p1, "adapter"    # Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;
    .param p2, "orientationProvider"    # Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;
    .param p3, "dimensionCalculator"    # Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    .prologue
    .line 41
    new-instance v4, Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;

    invoke-direct {v4, p2}, Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;-><init>(Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;)V

    new-instance v5, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderViewCache;

    invoke-direct {v5, p1, p2}, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderViewCache;-><init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;-><init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;)V
    .locals 7
    .param p1, "adapter"    # Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;
    .param p2, "orientationProvider"    # Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;
    .param p3, "dimensionCalculator"    # Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;
    .param p4, "headerRenderer"    # Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;
    .param p5, "headerProvider"    # Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;

    .prologue
    .line 47
    new-instance v6, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;

    invoke-direct {v6, p1, p5, p2, p3}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;-><init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;-><init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;)V

    .line 50
    return-void
.end method

.method private setItemOffsetsForHeader(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 2
    .param p1, "itemOffsets"    # Landroid/graphics/Rect;
    .param p2, "header"    # Landroid/view/View;
    .param p3, "orientation"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p2}, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 85
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 86
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method


# virtual methods
.method public findHeaderPositionUnder(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderRects:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderRects:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderRects:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 133
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderRects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 137
    .end local v1    # "rect":Landroid/graphics/Rect;
    :goto_1
    return v2

    .line 131
    .restart local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getHeaderView(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "position"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderProvider:Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;

    invoke-interface {v0, p1, p2}, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;->getHeader(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 66
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 67
    .local v1, "itemPosition":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderPositionCalculator:Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;

    iget-object v3, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    invoke-interface {v3, p3}, Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;->isReverseLayout(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->hasNewHeader(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p0, p3, v1}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->getHeaderView(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "header":Landroid/view/View;
    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    invoke-interface {v2, p3}, Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;->getOrientation(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->setItemOffsetsForHeader(Landroid/graphics/Rect;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderProvider:Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;

    invoke-interface {v0}, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;->invalidate()V

    .line 158
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 96
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    .line 97
    .local v6, "childCount":I
    if-lez v6, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mAdapter:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    invoke-interface {v0}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 121
    :cond_0
    return-void

    .line 101
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 102
    invoke-virtual {p2, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 103
    .local v4, "itemView":Landroid/view/View;
    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    .line 104
    .local v8, "position":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_3

    .line 101
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderPositionCalculator:Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;

    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    invoke-interface {v2, p2}, Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;->getOrientation(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    invoke-virtual {v0, v4, v2, v8}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->hasStickyHeader(Landroid/view/View;II)Z

    move-result v5

    .line 109
    .local v5, "hasStickyHeader":Z
    if-nez v5, :cond_4

    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderPositionCalculator:Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;

    iget-object v2, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    invoke-interface {v2, p2}, Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;->isReverseLayout(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    invoke-virtual {v0, v8, v2}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->hasNewHeader(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderProvider:Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;

    invoke-interface {v0, p2, v8}, Lcom/dodonew/online/widget/stickyheaderview/caching/HeaderProvider;->getHeader(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, "header":Landroid/view/View;
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderRects:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 113
    .local v1, "headerOffset":Landroid/graphics/Rect;
    if-nez v1, :cond_5

    .line 114
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "headerOffset":Landroid/graphics/Rect;
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 115
    .restart local v1    # "headerOffset":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderRects:Landroid/util/SparseArray;

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mHeaderPositionCalculator:Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/dodonew/online/widget/stickyheaderview/HeaderPositionCalculator;->initHeaderBounds(Landroid/graphics/Rect;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;Z)V

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->mRenderer:Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;

    invoke-virtual {v0, p2, p1, v3, v1}, Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;->drawHeader(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1
.end method
