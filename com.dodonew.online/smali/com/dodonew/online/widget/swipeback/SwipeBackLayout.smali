.class public Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;,
        Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DEFAULT_SCROLL_THRESHOLD:F = 0.3f

.field public static final EDGE_ALL:I = 0xb

.field public static final EDGE_BOTTOM:I = 0x8

.field private static final EDGE_FLAGS:[I

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final FULL_ALPHA:I = 0xff

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final OVERSCROLL_DISTANCE:I = 0xa

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentLeft:I

.field private mContentTop:I

.field private mContentView:Landroid/view/View;

.field private mDragHelper:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

.field private mEdgeFlag:I

.field private mEnable:Z

.field private mInLayout:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrollPercent:F

.field private mScrollThreshold:F

.field private mShadowBottom:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTrackingEdge:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->EDGE_FLAGS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x8
        0xb
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 130
    const/high16 v0, 0x7f010000

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    const v6, 0x3e99999a    # 0.3f

    iput v6, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrollThreshold:F

    .line 89
    iput-boolean v8, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mEnable:Z

    .line 114
    const/high16 v6, -0x67000000

    iput v6, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrimColor:I

    .line 118
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 135
    new-instance v6, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$ViewDragCallback;-><init>(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$1;)V

    invoke-static {p0, v6}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/dodonew/online/widget/swipeback/ViewDragHelper$Callback;)Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mDragHelper:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    .line 137
    sget-object v6, Lcom/dodonew/online/R$styleable;->SwipeBackLayout:[I

    const v7, 0x7f0900db

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, -0x1

    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 142
    .local v2, "edgeSize":I
    if-lez v2, :cond_0

    .line 143
    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->setEdgeSize(I)V

    .line 144
    :cond_0
    sget-object v6, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->EDGE_FLAGS:[I

    .line 145
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget v4, v6, v7

    .line 146
    .local v4, "mode":I
    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->setEdgeTrackingEnabled(I)V

    .line 148
    const/4 v6, 0x2

    const v7, 0x7f02010e

    .line 149
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 158
    .local v5, "shadowLeft":I
    invoke-virtual {p0, v5, v8}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->setShadow(II)V

    .line 163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->density:F

    .line 165
    .local v1, "density":F
    const/high16 v6, 0x43c80000    # 400.0f

    mul-float v3, v6, v1

    .line 166
    .local v3, "minVel":F
    iget-object v6, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mDragHelper:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    invoke-virtual {v6, v3}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->setMinVelocity(F)V

    .line 167
    iget-object v6, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mDragHelper:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v3

    invoke-virtual {v6, v7}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->setMaxVelocity(F)V

    .line 168
    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .prologue
    .line 21
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mEdgeFlag:I

    return v0
.end method

.method static synthetic access$1002(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentLeft:I

    return p1
.end method

.method static synthetic access$1102(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentTop:I

    return p1
.end method

.method static synthetic access$1200(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .prologue
    .line 21
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrollThreshold:F

    return v0
.end method

.method static synthetic access$1300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Lcom/dodonew/online/widget/swipeback/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mDragHelper:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .prologue
    .line 21
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mTrackingEdge:I

    return v0
.end method

.method static synthetic access$302(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mTrackingEdge:I

    return p1
.end method

.method static synthetic access$400(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .prologue
    .line 21
    iget v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrollPercent:F

    return v0
.end method

.method static synthetic access$502(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;
    .param p1, "x1"    # F

    .prologue
    .line 21
    iput p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrollPercent:F

    return p1
.end method

.method static synthetic access$600(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private drawScrim(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 433
    iget v3, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrimColor:I

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    ushr-int/lit8 v1, v3, 0x18

    .line 434
    .local v1, "baseAlpha":I
    int-to-float v3, v1

    iget v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrimOpacity:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 435
    .local v0, "alpha":I
    shl-int/lit8 v3, v0, 0x18

    iget v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrimColor:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    or-int v2, v3, v4

    .line 437
    .local v2, "color":I
    iget v3, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mTrackingEdge:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 438
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->getHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 445
    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 446
    return-void

    .line 439
    :cond_1
    iget v3, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mTrackingEdge:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 440
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->getHeight()I

    move-result v5

    invoke-virtual {p1, v3, v6, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 441
    :cond_2
    iget v3, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mTrackingEdge:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 442
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->getRight()I

    move-result v5

    .line 443
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->getHeight()I

    move-result v6

    .line 442
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0
.end method

.method private drawShadow(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x437f0000    # 255.0f

    .line 449
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 450
    .local v0, "childRect":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 452
    iget v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 454
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 453
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 456
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrimOpacity:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 457
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 460
    :cond_0
    iget v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 462
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 461
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 464
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrimOpacity:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 465
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 468
    :cond_1
    iget v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 469
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    .line 471
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 469
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 472
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrimOpacity:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 473
    iget-object v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 475
    :cond_2
    return-void
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentView:Landroid/view/View;

    .line 190
    return-void
.end method


# virtual methods
.method public addSwipeListener(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mListeners:Ljava/util/List;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 478
    iput-object p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mActivity:Landroid/app/Activity;

    .line 479
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x1010054

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 481
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 482
    .local v1, "background":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 484
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 485
    .local v2, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 486
    .local v3, "decorChild":Landroid/view/ViewGroup;
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 487
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 488
    invoke-virtual {p0, v3}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->addView(Landroid/view/View;)V

    .line 489
    invoke-direct {p0, v3}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->setContentView(Landroid/view/View;)V

    .line 490
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 491
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 495
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrollPercent:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrimOpacity:F

    .line 496
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mDragHelper:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 499
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 421
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentView:Landroid/view/View;

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    .line 423
    .local v0, "drawContent":Z
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 424
    .local v1, "ret":Z
    iget v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mDragHelper:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    .line 425
    invoke-virtual {v2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->getViewDragState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->drawShadow(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 427
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->drawScrim(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 429
    :cond_0
    return v1

    .line 421
    .end local v0    # "drawContent":Z
    .end local v1    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-boolean v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mEnable:Z

    if-nez v2, :cond_0

    .line 388
    :goto_0
    return v1

    .line 384
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mDragHelper:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    invoke-virtual {v2, p1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mInLayout:Z

    .line 405
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentView:Landroid/view/View;

    iget v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentLeft:I

    iget v2, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentTop:I

    iget v3, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentLeft:I

    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentView:Landroid/view/View;

    .line 407
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentTop:I

    iget-object v5, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentView:Landroid/view/View;

    .line 408
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 406
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 409
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mInLayout:Z

    .line 410
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mEnable:Z

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 398
    :goto_0
    return v0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mDragHelper:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 398
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeSwipeListener(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 415
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 417
    :cond_0
    return-void
.end method

.method public scrollToFinishActivity()V
    .locals 6

    .prologue
    .line 356
    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 357
    .local v1, "childWidth":I
    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 359
    .local v0, "childHeight":I
    const/4 v2, 0x0

    .local v2, "left":I
    const/4 v3, 0x0

    .line 360
    .local v3, "top":I
    iget v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 361
    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, 0xa

    .line 363
    const/4 v4, 0x1

    iput v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mTrackingEdge:I

    .line 374
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mDragHelper:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    iget-object v5, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5, v2, v3}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 375
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->invalidate()V

    .line 376
    return-void

    .line 364
    :cond_1
    iget v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 365
    neg-int v4, v1

    iget-object v5, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v2, v4, -0xa

    .line 367
    const/4 v4, 0x2

    iput v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mTrackingEdge:I

    goto :goto_0

    .line 368
    :cond_2
    iget v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mEdgeFlag:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    .line 369
    neg-int v4, v0

    iget-object v5, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, -0xa

    .line 371
    const/16 v4, 0x8

    iput v4, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mTrackingEdge:I

    goto :goto_0
.end method

.method public setEdgeSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mDragHelper:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->setEdgeSize(I)V

    .line 230
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 2
    .param p1, "edgeFlags"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mEdgeFlag:I

    .line 205
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mDragHelper:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    iget v1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mEdgeFlag:I

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 206
    return-void
.end method

.method public setEnableGesture(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mEnable:Z

    .line 194
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrimColor:I

    .line 217
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->invalidate()V

    .line 218
    return-void
.end method

.method public setScrollThresHold(F)V
    .locals 2
    .param p1, "threshold"    # F

    .prologue
    .line 308
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold value should be between 0 and 1.0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    iput p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mScrollThreshold:F

    .line 313
    return-void
.end method

.method public setSensitivity(Landroid/content/Context;F)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensitivity"    # F

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mDragHelper:Lcom/dodonew/online/widget/swipeback/ViewDragHelper;

    invoke-virtual {v0, p1, p2}, Lcom/dodonew/online/widget/swipeback/ViewDragHelper;->setSensitivity(Landroid/content/Context;F)V

    .line 181
    return-void
.end method

.method public setShadow(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "edgeFlag"    # I

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->setShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 350
    return-void
.end method

.method public setShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeFlag"    # I

    .prologue
    .line 327
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 328
    iput-object p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 334
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->invalidate()V

    .line 335
    return-void

    .line 329
    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    .line 330
    iput-object p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 331
    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 332
    iput-object p1, p0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setSwipeListener(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->addSwipeListener(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;)V

    .line 243
    return-void
.end method
