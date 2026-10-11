.class Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_BORDER_COLOR_ALPHA:B = 0x26t

.field private static final DEFAULT_BOTTOM_BORDER_THICKNESS_DIPS:I = 0x2

.field private static final DEFAULT_DIVIDER_COLOR_ALPHA:B = 0x20t

.field private static final DEFAULT_DIVIDER_HEIGHT:F = 0.5f

.field private static final DEFAULT_DIVIDER_THICKNESS_DIPS:I = 0x1

.field private static final DEFAULT_SELECTED_INDICATOR_COLOR:I = -0xcc4a1b

.field private static final SELECTED_INDICATOR_THICKNESS_DIPS:I = 0x6


# instance fields
.field private final mBottomBorderPaint:Landroid/graphics/Paint;

.field private final mBottomBorderThickness:I

.field private mCustomTabColorizer:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;

.field private final mDefaultBottomBorderColor:I

.field private final mDefaultTabColorizer:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;

.field private final mDividerHeight:F

.field private final mDividerPaint:Landroid/graphics/Paint;

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private final mSelectedIndicatorThickness:I

.field private mSelectedPosition:I

.field private mSelectionOffset:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-virtual {p0, v6}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->setWillNotDraw(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 69
    .local v0, "density":F
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 70
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010030

    invoke-virtual {v3, v4, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 71
    iget v2, v1, Landroid/util/TypedValue;->data:I

    .line 73
    .local v2, "themeForegroundColor":I
    const/16 v3, 0x26

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->setColorAlpha(IB)I

    move-result v3

    iput v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDefaultBottomBorderColor:I

    .line 76
    new-instance v3, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$1;)V

    iput-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDefaultTabColorizer:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;

    .line 77
    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDefaultTabColorizer:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;

    new-array v4, v7, [I

    const v5, -0xcc4a1b

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 78
    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDefaultTabColorizer:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;

    new-array v4, v7, [I

    const/16 v5, 0x20

    invoke-static {v2, v5}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->setColorAlpha(IB)I

    move-result v5

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;->setDividerColors([I)V

    .line 81
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mBottomBorderThickness:I

    .line 82
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDefaultBottomBorderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectedIndicatorThickness:I

    .line 86
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 88
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDividerHeight:F

    .line 89
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    return-void
.end method

.method private static blendColors(IIF)I
    .locals 7
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 181
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, p2

    .line 182
    .local v2, "inverseRation":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v3, v4, v5

    .line 183
    .local v3, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v1, v4, v5

    .line 184
    .local v1, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v0, v4, v5

    .line 185
    .local v0, "b":F
    float-to-int v4, v3

    float-to-int v5, v1

    float-to-int v6, v0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    return v4
.end method

.method private static setColorAlpha(IB)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "alpha"    # B

    .prologue
    .line 171
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->getHeight()I

    move-result v11

    .line 121
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->getChildCount()I

    move-result v8

    .line 122
    .local v8, "childCount":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDividerHeight:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v2, v11

    mul-float/2addr v1, v2

    float-to-int v10, v1

    .line 123
    .local v10, "dividerHeightPx":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mCustomTabColorizer:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mCustomTabColorizer:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;

    move-object/from16 v19, v0

    .line 128
    .local v19, "tabColorizer":Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;
    :goto_0
    if-lez v8, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 130
    .local v17, "selectedTitle":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 131
    .local v13, "left":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v16

    .line 132
    .local v16, "right":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectedPosition:I

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v9

    .line 134
    .local v9, "color":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectionOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v14

    .line 136
    .local v14, "nextColor":I
    if-eq v9, v14, :cond_0

    .line 137
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectionOffset:F

    invoke-static {v14, v9, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->blendColors(IIF)I

    move-result v9

    .line 141
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 142
    .local v15, "nextTitle":Landroid/view/View;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v2, v3

    int-to-float v3, v13

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v13, v1

    .line 144
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v2, v3

    move/from16 v0, v16

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v16, v0

    .line 148
    .end local v14    # "nextColor":I
    .end local v15    # "nextTitle":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    int-to-float v2, v13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectedIndicatorThickness:I

    sub-int v1, v11, v1

    int-to-float v3, v1

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 155
    .end local v9    # "color":I
    .end local v13    # "left":I
    .end local v16    # "right":I
    .end local v17    # "selectedTitle":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mBottomBorderThickness:I

    sub-int v1, v11, v1

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->getWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 158
    sub-int v1, v11, v10

    div-int/lit8 v18, v1, 0x2

    .line 159
    .local v18, "separatorTop":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    add-int/lit8 v1, v8, -0x1

    if-ge v12, v1, :cond_4

    .line 160
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 161
    .local v7, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;->getDividerColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v2, v1

    move/from16 v0, v18

    int-to-float v3, v0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    add-int v1, v18, v10

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 159
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 123
    .end local v7    # "child":Landroid/view/View;
    .end local v12    # "i":I
    .end local v18    # "separatorTop":I
    .end local v19    # "tabColorizer":Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDefaultTabColorizer:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;

    move-object/from16 v19, v0

    goto/16 :goto_0

    .line 165
    .restart local v12    # "i":I
    .restart local v18    # "separatorTop":I
    .restart local v19    # "tabColorizer":Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;
    :cond_4
    return-void
.end method

.method onViewPagerPageChanged(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 113
    iput p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectedPosition:I

    .line 114
    iput p2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mSelectionOffset:F

    .line 115
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->invalidate()V

    .line 116
    return-void
.end method

.method setCustomTabColorizer(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;)V
    .locals 0
    .param p1, "customTabColorizer"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mCustomTabColorizer:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;

    .line 95
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->invalidate()V

    .line 96
    return-void
.end method

.method varargs setDividerColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mCustomTabColorizer:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;

    .line 108
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDefaultTabColorizer:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;->setDividerColors([I)V

    .line 109
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->invalidate()V

    .line 110
    return-void
.end method

.method varargs setSelectedIndicatorColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mCustomTabColorizer:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;

    .line 101
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->mDefaultTabColorizer:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 102
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->invalidate()V

    .line 103
    return-void
.end method
