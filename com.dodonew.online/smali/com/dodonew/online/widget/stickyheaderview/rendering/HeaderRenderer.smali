.class public Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;
.super Ljava/lang/Object;
.source "HeaderRenderer.java"


# instance fields
.field private final mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

.field private final mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;)V
    .locals 1
    .param p1, "orientationProvider"    # Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    .prologue
    .line 28
    new-instance v0, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    invoke-direct {v0}, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;-><init>(Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;)V
    .locals 1
    .param p1, "orientationProvider"    # Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;
    .param p2, "dimensionCalculator"    # Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;->mTempRect:Landroid/graphics/Rect;

    .line 33
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    .line 34
    iput-object p2, p0, Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;->mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    .line 35
    return-void
.end method

.method private initClipRectForHeader(Landroid/graphics/Rect;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 5
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "header"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;->mDimensionCalculator:Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;

    invoke-virtual {v0, p1, p3}, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;->initMargins(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;->mOrientationProvider:Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;

    invoke-interface {v0, p2}, Lcom/dodonew/online/widget/stickyheaderview/util/OrientationProvider;->getOrientation(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 77
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    .line 78
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 79
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 75
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 83
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    .line 84
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 85
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 81
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public drawHeader(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "header"    # Landroid/view/View;
    .param p4, "offset"    # Landroid/graphics/Rect;

    .prologue
    .line 47
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 49
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p3}, Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;->initClipRectForHeader(Landroid/graphics/Rect;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/rendering/HeaderRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 55
    :cond_0
    iget v0, p4, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p4, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    invoke-virtual {p3, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 59
    return-void
.end method
