.class public Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;
.super Landroid/view/ViewGroup;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;,
        Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;,
        Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;,
        Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SimplePanelSlideListener;,
        Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;,
        Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANCHOR_POINT:F = 1.0f

.field private static final DEFAULT_ATTRS:[I

.field private static final DEFAULT_CLIP_PANEL_FLAG:Z = true

.field private static final DEFAULT_FADE_COLOR:I = -0x67000000

.field private static final DEFAULT_MIN_FLING_VELOCITY:I = 0x190

.field private static final DEFAULT_OVERLAY_FLAG:Z = false

.field private static DEFAULT_PANEL_HEIGHT:I = 0x0

.field private static final DEFAULT_PARALLAX_OFFSET:I = 0x0

.field private static final DEFAULT_SHADOW_HEIGHT:I = 0x4

.field private static DEFAULT_SLIDE_STATE:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnchorPoint:F

.field private mClipPanel:Z

.field private mCoveredFadeColor:I

.field private final mCoveredFadePaint:Landroid/graphics/Paint;

.field private final mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

.field private mDragView:Landroid/view/View;

.field private mDragViewResId:I

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsScrollableViewHandlingTouch:Z

.field private mIsSlidingUp:Z

.field private mIsTouchEnabled:Z

.field private mIsUnableToDrag:Z

.field private mLastNotDraggingSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

.field private mMainView:Landroid/view/View;

.field private mMinFlingVelocity:I

.field private mOverlayContent:Z

.field private mPanelHeight:I

.field private mPanelSlideListener:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

.field private mParallaxOffset:I

.field private mPrevMotionY:F

.field private mScrollableView:Landroid/view/View;

.field private mScrollableViewHelper:Lcom/dodonew/online/widget/slidinguppanel/ScrollableViewHelper;

.field private mScrollableViewResId:I

.field private final mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

.field private mSlideableView:Landroid/view/View;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-class v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->TAG:Ljava/lang/String;

    .line 36
    const/16 v0, 0x37

    sput v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_PANEL_HEIGHT:I

    .line 46
    sget-object v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sput-object v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100af

    aput v2, v0, v1

    sput-object v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 297
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    const/16 v6, 0x190

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 85
    const/high16 v6, -0x67000000

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 95
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    .line 105
    const/4 v6, -0x1

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 110
    const/4 v6, -0x1

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 115
    const/4 v6, -0x1

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 125
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    .line 130
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    .line 142
    const/4 v6, -0x1

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 149
    new-instance v6, Lcom/dodonew/online/widget/slidinguppanel/ScrollableViewHelper;

    invoke-direct {v6}, Lcom/dodonew/online/widget/slidinguppanel/ScrollableViewHelper;-><init>()V

    iput-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mScrollableViewHelper:Lcom/dodonew/online/widget/slidinguppanel/ScrollableViewHelper;

    .line 172
    sget-object v6, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 177
    sget-object v6, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mLastNotDraggingSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 193
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 209
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 220
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 222
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 302
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 303
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 304
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    .line 375
    :goto_0
    return-void

    .line 308
    :cond_0
    const/4 v4, 0x0

    .line 309
    .local v4, "scrollerInterpolator":Landroid/view/animation/Interpolator;
    if-eqz p2, :cond_3

    .line 310
    sget-object v6, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 312
    .local v0, "defAttrs":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 313
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 314
    .local v2, "gravity":I
    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->setGravity(I)V

    .line 317
    .end local v2    # "gravity":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    sget-object v6, Lcom/dodonew/online/R$styleable;->SlidingUpPanelLayout:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 321
    .local v5, "ta":Landroid/content/res/TypedArray;
    if-eqz v5, :cond_2

    .line 322
    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 323
    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 324
    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 326
    const/4 v6, 0x4

    const/16 v7, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 327
    const/4 v6, 0x3

    const/high16 v7, -0x67000000

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 329
    const/4 v6, 0x5

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 330
    const/4 v6, 0x6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mScrollableViewResId:I

    .line 332
    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    .line 333
    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    .line 335
    const/16 v6, 0x9

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 337
    invoke-static {}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->values()[Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v6

    const/16 v7, 0xa

    sget-object v8, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v8}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 339
    const/16 v6, 0xb

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 340
    .local v3, "interpolatorResId":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 341
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 345
    .end local v3    # "interpolatorResId":I
    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 348
    .end local v0    # "defAttrs":Landroid/content/res/TypedArray;
    .end local v5    # "ta":Landroid/content/res/TypedArray;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->density:F

    .line 349
    .local v1, "density":F
    iget v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 350
    sget v6, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_PANEL_HEIGHT:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 352
    :cond_4
    iget v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 353
    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 355
    :cond_5
    iget v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    .line 356
    const/4 v6, 0x0

    mul-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 359
    :cond_6
    iget v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    if-lez v6, :cond_8

    .line 360
    iget-boolean v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v6, :cond_7

    .line 361
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 369
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->setWillNotDraw(Z)V

    .line 371
    const/high16 v6, 0x3f000000    # 0.5f

    new-instance v7, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;)V

    invoke-static {p0, v6, v4, v7}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/view/animation/Interpolator;Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper$Callback;)Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    .line 372
    iget-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    iget v7, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    invoke-virtual {v6, v7}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->setMinVelocity(F)V

    .line 374
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    goto/16 :goto_0

    .line 363
    :cond_7
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 366
    :cond_8
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    return v0
.end method

.method static synthetic access$102(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;)Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;
    .param p1, "x1"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;F)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;
    .param p1, "x1"    # F

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    return v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    return v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 29
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$602(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;
    .param p1, "x1"    # F

    .prologue
    .line 29
    iput p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    return p1
.end method

.method static synthetic access$700(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;I)F
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->applyParallaxForCurrentSlideOffset()V

    return-void
.end method

.method static synthetic access$900(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->onPanelDragged(I)V

    return-void
.end method

.method private applyParallaxForCurrentSlideOffset()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1129
    iget v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    if-lez v1, :cond_0

    .line 1130
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getCurrentParallaxOffset()I

    move-result v0

    .line 1131
    .local v0, "mainViewOffset":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 1132
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1137
    .end local v0    # "mainViewOffset":I
    :cond_0
    :goto_0
    return-void

    .line 1134
    .restart local v0    # "mainViewOffset":I
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-static {v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V

    goto :goto_0
.end method

.method private computePanelTopPosition(F)I
    .locals 4
    .param p1, "slideOffset"    # F

    .prologue
    .line 1054
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1055
    .local v1, "slidingViewHeight":I
    :goto_0
    iget v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    .line 1057
    .local v0, "slidePixelOffset":I
    iget-boolean v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v2, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 1059
    :goto_1
    return v2

    .line 1054
    .end local v0    # "slidePixelOffset":I
    .end local v1    # "slidingViewHeight":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1059
    .restart local v0    # "slidePixelOffset":I
    .restart local v1    # "slidingViewHeight":I
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    goto :goto_1
.end method

.method private computeSlideOffset(I)F
    .locals 3
    .param p1, "topPosition"    # I

    .prologue
    .line 1067
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v0

    .line 1071
    .local v0, "topBoundCollapsed":I
    iget-boolean v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    sub-int v1, v0, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    sub-int v1, p1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 723
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 724
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isViewUnder(Landroid/view/View;II)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1039
    if-nez p1, :cond_0

    .line 1047
    :goto_0
    return v5

    .line 1040
    :cond_0
    new-array v3, v6, [I

    .line 1041
    .local v3, "viewLocation":[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1042
    new-array v0, v6, [I

    .line 1043
    .local v0, "parentLocation":[I
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getLocationOnScreen([I)V

    .line 1044
    aget v6, v0, v5

    add-int v1, v6, p2

    .line 1045
    .local v1, "screenX":I
    aget v6, v0, v4

    add-int v2, v6, p3

    .line 1046
    .local v2, "screenY":I
    aget v6, v3, v5

    if-lt v1, v6, :cond_1

    aget v6, v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v1, v6, :cond_1

    aget v6, v3, v4

    if-lt v2, v6, :cond_1

    aget v6, v3, v4

    .line 1047
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_1

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method private onPanelDragged(I)V
    .locals 5
    .param p1, "newTop"    # I

    .prologue
    const/4 v4, -0x1

    .line 1140
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mLastNotDraggingSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1141
    sget-object v2, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1143
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v2

    iput v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    .line 1144
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->applyParallaxForCurrentSlideOffset()V

    .line 1146
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 1149
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 1150
    .local v1, "lp":Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int v0, v2, v3

    .line 1152
    .local v0, "defaultHeight":I
    iget v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    iget-boolean v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v2, :cond_3

    .line 1154
    iget-boolean v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    sub-int v2, p1, v2

    :goto_0
    iput v2, v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 1155
    iget v2, v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-ne v2, v0, :cond_0

    .line 1156
    iput v4, v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 1158
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1163
    :cond_1
    :goto_1
    return-void

    .line 1154
    :cond_2
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    goto :goto_0

    .line 1159
    :cond_3
    iget v2, v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-eq v2, v4, :cond_1

    iget-boolean v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v2, :cond_1

    .line 1160
    iput v4, v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 1161
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_1
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 1270
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 1271
    check-cast v7, Landroid/view/ViewGroup;

    .line 1272
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1273
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1274
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1276
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 1277
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1278
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    .line 1279
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    .line 1280
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    .line 1281
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 1280
    invoke-virtual/range {v0 .. v5}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    const/4 v0, 0x1

    .line 1286
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 1276
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1286
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1304
    instance-of v0, p1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->abort()V

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelAnchored(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelAnchored(Landroid/view/View;)V

    .line 668
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 669
    return-void
.end method

.method dispatchOnPanelCollapsed(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelCollapsed(Landroid/view/View;)V

    .line 661
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 662
    return-void
.end method

.method dispatchOnPanelExpanded(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelExpanded(Landroid/view/View;)V

    .line 654
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 655
    return-void
.end method

.method dispatchOnPanelHidden(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelHidden(Landroid/view/View;)V

    .line 675
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 676
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    iget v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 648
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, -0x1

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 961
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 963
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 964
    :cond_0
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {v4}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->cancel()V

    .line 965
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1035
    :goto_0
    return v4

    .line 968
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 970
    .local v3, "y":F
    if-nez v0, :cond_3

    .line 971
    iput-boolean v9, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 972
    iput v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPrevMotionY:F

    .line 1035
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 973
    :cond_3
    const/4 v6, 0x2

    if-ne v0, v6, :cond_c

    .line 974
    iget v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPrevMotionY:F

    sub-float v1, v3, v6

    .line 975
    .local v1, "dy":F
    iput v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPrevMotionY:F

    .line 979
    iget-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    iget v7, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    float-to-int v7, v7

    iget v8, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    float-to-int v8, v8

    invoke-direct {p0, v6, v7, v8}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->isViewUnder(Landroid/view/View;II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 980
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 984
    :cond_4
    iget-boolean v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v6, :cond_5

    move v6, v5

    :goto_2
    int-to-float v6, v6

    mul-float/2addr v6, v1

    cmpl-float v6, v6, v10

    if-lez v6, :cond_8

    .line 987
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mScrollableViewHelper:Lcom/dodonew/online/widget/slidinguppanel/ScrollableViewHelper;

    iget-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    iget-boolean v7, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    invoke-virtual {v4, v6, v7}, Lcom/dodonew/online/widget/slidinguppanel/ScrollableViewHelper;->getScrollableViewScrollPosition(Landroid/view/View;Z)I

    move-result v4

    if-lez v4, :cond_6

    .line 988
    iput-boolean v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 989
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    :cond_5
    move v6, v4

    .line 984
    goto :goto_2

    .line 995
    :cond_6
    iget-boolean v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-eqz v4, :cond_7

    .line 997
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 998
    .local v2, "up":Landroid/view/MotionEvent;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 999
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1000
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1004
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1007
    .end local v2    # "up":Landroid/view/MotionEvent;
    :cond_7
    iput-boolean v9, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 1008
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 1009
    :cond_8
    iget-boolean v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v6, :cond_9

    move v4, v5

    :cond_9
    int-to-float v4, v4

    mul-float/2addr v4, v1

    cmpg-float v4, v4, v10

    if-gez v4, :cond_2

    .line 1012
    iget v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_a

    .line 1013
    iput-boolean v9, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 1014
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1020
    :cond_a
    iget-boolean v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {v4}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->isDragging()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1021
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {v4}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->cancel()V

    .line 1022
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1025
    :cond_b
    iput-boolean v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 1026
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1028
    .end local v1    # "dy":F
    :cond_c
    if-ne v0, v5, :cond_2

    iget-boolean v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-eqz v4, :cond_2

    .line 1031
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {v4, v9}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->setDragState(I)V

    goto/16 :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1238
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1241
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1242
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1245
    .local v2, "right":I
    iget-boolean v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v4, :cond_1

    .line 1246
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    sub-int v3, v4, v5

    .line 1247
    .local v3, "top":I
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1252
    .local v0, "bottom":I
    :goto_0
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1253
    .local v1, "left":I
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1254
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1256
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_0
    return-void

    .line 1249
    .restart local v2    # "right":I
    :cond_1
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1250
    .restart local v3    # "top":I
    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    add-int v0, v4, v5

    .restart local v0    # "bottom":I
    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1168
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->save(I)I

    move-result v4

    .line 1170
    .local v4, "save":I
    iget-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eq v5, p2, :cond_4

    .line 1173
    iget-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1174
    iget-boolean v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v5, :cond_0

    .line 1175
    iget-boolean v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v5, :cond_3

    .line 1176
    iget-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1181
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    if-eqz v5, :cond_1

    .line 1182
    iget-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1185
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .line 1187
    .local v3, "result":Z
    iget v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 1188
    iget v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const/high16 v6, -0x1000000

    and-int/2addr v5, v6

    ushr-int/lit8 v0, v5, 0x18

    .line 1189
    .local v0, "baseAlpha":I
    int-to-float v5, v0

    iget v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 1190
    .local v2, "imag":I
    shl-int/lit8 v5, v2, 0x18

    iget v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const v7, 0xffffff

    and-int/2addr v6, v7

    or-int v1, v5, v6

    .line 1191
    .local v1, "color":I
    iget-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1192
    iget-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1198
    .end local v0    # "baseAlpha":I
    .end local v1    # "color":I
    .end local v2    # "imag":I
    :cond_2
    :goto_1
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1200
    return v3

    .line 1178
    .end local v3    # "result":Z
    :cond_3
    iget-object v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1195
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    .restart local v3    # "result":Z
    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1292
    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1309
    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1297
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getAnchorPoint()F
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    return v0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getCurrentParallaxOffset()I
    .locals 4

    .prologue
    .line 489
    iget v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 490
    .local v0, "offset":I
    iget-boolean v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    .end local v0    # "offset":I
    :cond_0
    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    return v0
.end method

.method public getPanelHeight()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    return v0
.end method

.method public getPanelState()Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    return-object v0
.end method

.method public getShadowHeight()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    return v0
.end method

.method public isClipPanel()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    return v0
.end method

.method public isOverlayed()Z
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    return v0
.end method

.method public isTouchEnabled()Z
    .locals 2

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 729
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 731
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 735
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 737
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 382
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 383
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    if-eq v0, v1, :cond_0

    .line 384
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 386
    :cond_0
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mScrollableViewResId:I

    if-eq v0, v1, :cond_1

    .line 387
    iget v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mScrollableViewResId:I

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->setScrollableView(Landroid/view/View;)V

    .line 389
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 901
    iget-boolean v8, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-eqz v8, :cond_0

    .line 902
    iget-object v7, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {v7}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->cancel()V

    .line 942
    :goto_0
    return v6

    .line 906
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 907
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 908
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 910
    .local v5, "y":F
    packed-switch v0, :pswitch_data_0

    .line 942
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {v6, p1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 912
    :pswitch_0
    iput-boolean v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    .line 913
    iput v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 914
    iput v5, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    goto :goto_1

    .line 919
    :pswitch_1
    iget v8, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 920
    .local v1, "adx":F
    iget v8, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 921
    .local v2, "ady":F
    iget-object v8, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {v8}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->getTouchSlop()I

    move-result v3

    .line 923
    .local v3, "dragSlop":I
    int-to-float v8, v3

    cmpl-float v8, v2, v8

    if-lez v8, :cond_2

    cmpl-float v8, v1, v2

    if-gtz v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    iget v9, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    float-to-int v9, v9

    iget v10, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    float-to-int v10, v10

    invoke-direct {p0, v8, v9, v10}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->isViewUnder(Landroid/view/View;II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 924
    :cond_3
    iget-object v8, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {v8}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->cancel()V

    .line 925
    iput-boolean v7, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    goto :goto_0

    .line 936
    .end local v1    # "adx":F
    .end local v2    # "ady":F
    .end local v3    # "dragSlop":I
    :pswitch_2
    iget-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {v6}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->isDragging()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 937
    iget-object v6, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {v6, p1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    move v6, v7

    .line 938
    goto :goto_0

    .line 910
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v10

    .line 831
    .local v10, "paddingLeft":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v11

    .line 833
    .local v11, "paddingTop":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v2

    .line 835
    .local v2, "childCount":I
    iget-boolean v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v12, :cond_0

    .line 836
    sget-object v12, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$2;->$SwitchMap$com$dodonew$online$widget$slidinguppanel$SlidingUpPanelLayout$PanelState:[I

    iget-object v13, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v13}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 848
    const/4 v12, 0x0

    iput v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    .line 853
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_6

    .line 854
    invoke-virtual {p0, v7}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 855
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 858
    .local v8, "lp":Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_3

    if-eqz v7, :cond_1

    iget-boolean v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v12, :cond_3

    .line 853
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 838
    .end local v0    # "child":Landroid/view/View;
    .end local v7    # "i":I
    .end local v8    # "lp":Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
    :pswitch_0
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 841
    :pswitch_1
    iget v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    iput v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 844
    :pswitch_2
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v13

    iget-boolean v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v12, :cond_2

    iget v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    :goto_3
    add-int v9, v13, v12

    .line 845
    .local v9, "newTop":I
    invoke-direct {p0, v9}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v12

    iput v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 844
    .end local v9    # "newTop":I
    :cond_2
    iget v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    neg-int v12, v12

    goto :goto_3

    .line 862
    .restart local v0    # "child":Landroid/view/View;
    .restart local v7    # "i":I
    .restart local v8    # "lp":Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 863
    .local v3, "childHeight":I
    move v6, v11

    .line 865
    .local v6, "childTop":I
    iget-object v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v0, v12, :cond_4

    .line 866
    iget v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-direct {p0, v12}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v6

    .line 869
    :cond_4
    iget-boolean v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-nez v12, :cond_5

    .line 870
    iget-object v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    if-ne v0, v12, :cond_5

    iget-boolean v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v12, :cond_5

    .line 871
    iget v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-direct {p0, v12}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v12

    iget-object v13, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int v6, v12, v13

    .line 874
    :cond_5
    add-int v1, v6, v3

    .line 875
    .local v1, "childBottom":I
    iget v12, v8, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->leftMargin:I

    add-int v4, v10, v12

    .line 876
    .local v4, "childLeft":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int v5, v4, v12

    .line 878
    .local v5, "childRight":I
    invoke-virtual {v0, v4, v6, v5, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 881
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childHeight":I
    .end local v4    # "childLeft":I
    .end local v5    # "childRight":I
    .end local v6    # "childTop":I
    .end local v8    # "lp":Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
    :cond_6
    iget-boolean v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v12, :cond_7

    .line 882
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 884
    :cond_7
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->applyParallaxForCurrentSlideOffset()V

    .line 886
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 887
    return-void

    .line 836
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 741
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 742
    .local v13, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 743
    .local v14, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 744
    .local v6, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 746
    .local v7, "heightSize":I
    const/high16 v15, 0x40000000    # 2.0f

    if-eq v13, v15, :cond_0

    .line 747
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 748
    :cond_0
    const/high16 v15, 0x40000000    # 2.0f

    if-eq v6, v15, :cond_1

    .line 749
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Height must have an exact value or MATCH_PARENT"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 752
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v2

    .line 754
    .local v2, "childCount":I
    const/4 v15, 0x2

    if-eq v2, v15, :cond_2

    .line 755
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Sliding up panel layout must have exactly 2 children!"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 758
    :cond_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    .line 759
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 760
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-nez v15, :cond_3

    .line 761
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 765
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eqz v15, :cond_4

    .line 766
    sget-object v15, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 769
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v16

    sub-int v9, v15, v16

    .line 770
    .local v9, "layoutHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v15

    sub-int v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v16

    sub-int v10, v15, v16

    .line 773
    .local v10, "layoutWidth":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_f

    .line 774
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 775
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 778
    .local v11, "lp":Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    if-nez v8, :cond_6

    .line 773
    :cond_5
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 782
    :cond_6
    move v5, v9

    .line 783
    .local v5, "height":I
    move v12, v10

    .line 784
    .local v12, "width":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    if-ne v1, v15, :cond_9

    .line 785
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v16, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_7

    .line 786
    move-object/from16 v0, p0

    iget v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int/2addr v5, v15

    .line 789
    :cond_7
    iget v15, v11, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->leftMargin:I

    iget v0, v11, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->rightMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    sub-int/2addr v12, v15

    .line 797
    :cond_8
    :goto_2
    iget v15, v11, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 798
    const/high16 v15, -0x80000000

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 806
    .local v4, "childWidthSpec":I
    :goto_3
    iget v15, v11, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 807
    const/high16 v15, -0x80000000

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 818
    .local v3, "childHeightSpec":I
    :goto_4
    invoke-virtual {v1, v4, v3}, Landroid/view/View;->measure(II)V

    .line 820
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v1, v15, :cond_5

    .line 821
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    goto :goto_1

    .line 790
    .end local v3    # "childHeightSpec":I
    .end local v4    # "childWidthSpec":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v1, v15, :cond_8

    .line 793
    iget v15, v11, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v15

    goto :goto_2

    .line 799
    :cond_a
    iget v15, v11, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 800
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v12, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "childWidthSpec":I
    goto :goto_3

    .line 802
    .end local v4    # "childWidthSpec":I
    :cond_b
    iget v15, v11, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "childWidthSpec":I
    goto :goto_3

    .line 810
    :cond_c
    iget v15, v11, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_e

    iget v15, v11, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v15, v15, v16

    if-gez v15, :cond_e

    .line 811
    int-to-float v15, v5

    iget v0, v11, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v5, v15

    .line 815
    :cond_d
    :goto_5
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .restart local v3    # "childHeightSpec":I
    goto :goto_4

    .line 812
    .end local v3    # "childHeightSpec":I
    :cond_e
    iget v15, v11, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_d

    .line 813
    iget v5, v11, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    goto :goto_5

    .line 825
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "childWidthSpec":I
    .end local v5    # "height":I
    .end local v11    # "lp":Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$LayoutParams;
    .end local v12    # "width":I
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->setMeasuredDimension(II)V

    .line 826
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1327
    move-object v0, p1

    check-cast v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;

    .line 1328
    .local v0, "ss":Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;
    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1329
    iget-object v1, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    :goto_0
    iput-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1330
    return-void

    .line 1329
    :cond_0
    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 1314
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1316
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;

    invoke-direct {v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1317
    .local v0, "ss":Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v3, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v2, v3, :cond_0

    .line 1318
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v2, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1322
    :goto_0
    return-object v0

    .line 1320
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mLastNotDraggingSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v2, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 891
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 893
    if-eq p2, p4, :cond_0

    .line 894
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 896
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 948
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 955
    :goto_0
    return v1

    .line 951
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    invoke-virtual {v1, p1}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    const/4 v1, 0x1

    goto :goto_0

    .line 953
    :catch_0
    move-exception v0

    .line 955
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 5

    .prologue
    .line 714
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 715
    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 716
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 717
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 714
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 720
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setAnchorPoint(F)V
    .locals 1
    .param p1, "anchorPoint"    # F

    .prologue
    .line 598
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 599
    iput p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 601
    :cond_0
    return-void
.end method

.method public setClipPanel(Z)V
    .locals 0
    .param p1, "clip"    # Z

    .prologue
    .line 634
    iput-boolean p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    .line 635
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 408
    iput p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 409
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    .line 410
    return-void
.end method

.method public setDragView(I)V
    .locals 1
    .param p1, "dragViewResId"    # I

    .prologue
    .line 569
    iput p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 570
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 571
    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 3
    .param p1, "dragView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    :cond_0
    iput-object p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    .line 540
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 542
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 543
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 544
    iget-object v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    new-instance v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$1;-><init>(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    :cond_1
    return-void
.end method

.method public setGravity(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    const/16 v1, 0x50

    .line 392
    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gravity must be set to either top or bottom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    .line 396
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    .line 399
    :cond_1
    return-void

    .line 395
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMinFlingVelocity(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 518
    iput p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 519
    return-void
.end method

.method public setOverlayed(Z)V
    .locals 0
    .param p1, "overlayed"    # Z

    .prologue
    .line 618
    iput-boolean p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    .line 619
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPanelHeight()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iput p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 443
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    .line 447
    :cond_2
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPanelState()Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-ne v0, v1, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->smoothToBottom()V

    .line 449
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    goto :goto_0
.end method

.method public setPanelSlideListener(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListener:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    .line 528
    return-void
.end method

.method public setPanelState(Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;)V
    .locals 5
    .param p1, "state"    # Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1091
    if-eqz p1, :cond_0

    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-ne p1, v1, :cond_1

    .line 1092
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Panel state cannot be null or DRAGGING."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1094
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v2, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-ne v1, v2, :cond_4

    .line 1122
    :cond_3
    :goto_0
    return-void

    .line 1099
    :cond_4
    iget-boolean v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v1, :cond_5

    .line 1100
    iput-object p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    goto :goto_0

    .line 1102
    :cond_5
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v2, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-ne v1, v2, :cond_6

    .line 1103
    iget-object v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    .line 1106
    :cond_6
    sget-object v1, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$2;->$SwitchMap$com$dodonew$online$widget$slidinguppanel$SlidingUpPanelLayout$PanelState:[I

    invoke-virtual {p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1114
    :pswitch_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_0

    .line 1108
    :pswitch_1
    iget v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    invoke-virtual {p0, v1, v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_0

    .line 1111
    :pswitch_2
    invoke-virtual {p0, v4, v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_0

    .line 1117
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v2

    iget-boolean v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    :goto_1
    add-int v0, v2, v1

    .line 1118
    .local v0, "newTop":I
    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    goto :goto_0

    .line 1117
    .end local v0    # "newTop":I
    :cond_7
    iget v1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    neg-int v1, v1

    goto :goto_1

    .line 1106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setParallaxOffset(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 499
    iput p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 500
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    .line 503
    :cond_0
    return-void
.end method

.method public setScrollableView(Landroid/view/View;)V
    .locals 0
    .param p1, "scrollableView"    # Landroid/view/View;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    .line 581
    return-void
.end method

.method public setScrollableViewHelper(Lcom/dodonew/online/widget/slidinguppanel/ScrollableViewHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/dodonew/online/widget/slidinguppanel/ScrollableViewHelper;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mScrollableViewHelper:Lcom/dodonew/online/widget/slidinguppanel/ScrollableViewHelper;

    .line 589
    return-void
.end method

.method public setShadowHeight(I)V
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 471
    iput p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 472
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    .line 475
    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 425
    iput-boolean p1, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    .line 426
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 5
    .param p1, "slideOffset"    # F
    .param p2, "velocity"    # I

    .prologue
    const/4 v1, 0x0

    .line 1210
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1221
    :cond_0
    :goto_0
    return v1

    .line 1215
    :cond_1
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v0

    .line 1216
    .local v0, "panelTop":I
    iget-object v2, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;

    iget-object v3, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    iget-object v4, p0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/dodonew/online/widget/slidinguppanel/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1217
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 1218
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1219
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected smoothToBottom()V
    .locals 2

    .prologue
    .line 455
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    .line 456
    return-void
.end method

.method updateObscuredViewVisibility()V
    .locals 17

    .prologue
    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v15

    if-nez v15, :cond_0

    .line 711
    :goto_0
    return-void

    .line 682
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v9

    .line 683
    .local v9, "leftBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v16

    sub-int v11, v15, v16

    .line 684
    .local v11, "rightBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v13

    .line 685
    .local v13, "topBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v16

    sub-int v2, v15, v16

    .line 690
    .local v2, "bottomBound":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-static {v15}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 691
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 692
    .local v8, "left":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v10

    .line 693
    .local v10, "right":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v12

    .line 694
    .local v12, "top":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 698
    .local v1, "bottom":I
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/dodonew/online/widget/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 699
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 700
    .local v5, "clampedChildLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 701
    .local v7, "clampedChildTop":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 702
    .local v6, "clampedChildRight":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 704
    .local v4, "clampedChildBottom":I
    if-lt v5, v8, :cond_2

    if-lt v7, v12, :cond_2

    if-gt v6, v10, :cond_2

    if-gt v4, v1, :cond_2

    .line 706
    const/4 v14, 0x4

    .line 710
    .local v14, "vis":I
    :goto_2
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 696
    .end local v1    # "bottom":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "clampedChildBottom":I
    .end local v5    # "clampedChildLeft":I
    .end local v6    # "clampedChildRight":I
    .end local v7    # "clampedChildTop":I
    .end local v8    # "left":I
    .end local v10    # "right":I
    .end local v12    # "top":I
    .end local v14    # "vis":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "bottom":I
    move v12, v1

    .restart local v12    # "top":I
    move v10, v1

    .restart local v10    # "right":I
    move v8, v1

    .restart local v8    # "left":I
    goto :goto_1

    .line 708
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "clampedChildBottom":I
    .restart local v5    # "clampedChildLeft":I
    .restart local v6    # "clampedChildRight":I
    .restart local v7    # "clampedChildTop":I
    :cond_2
    const/4 v14, 0x0

    .restart local v14    # "vis":I
    goto :goto_2
.end method
