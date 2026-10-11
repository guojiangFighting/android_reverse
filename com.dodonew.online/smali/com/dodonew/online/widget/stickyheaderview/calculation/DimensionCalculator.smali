.class public Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;
.super Ljava/lang/Object;
.source "DimensionCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initMarginRect(Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4
    .param p1, "marginRect"    # Landroid/graphics/Rect;
    .param p2, "marginLayoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 40
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    return-void
.end method


# virtual methods
.method public initMargins(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 4
    .param p1, "margins"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 24
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 25
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 26
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {p0, p1, v1}, Lcom/dodonew/online/widget/stickyheaderview/calculation/DimensionCalculator;->initMarginRect(Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 30
    .end local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
