.class public Lcom/dodonew/online/widget/circualreveal/SheetLayout;
.super Landroid/widget/FrameLayout;
.source "SheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/circualreveal/SheetLayout$OnFabAnimationEndListener;,
        Lcom/dodonew/online/widget/circualreveal/SheetLayout$Fab;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0x15e

.field private static final DEFAULT_FAB_SIZE:I = 0x38

.field private static final FAB_CIRCLE:I = 0x0

.field private static final FAB_EXPAND:I = 0x1


# instance fields
.field private animationDuration:I

.field mAnimatingFab:Z

.field private mFab:Landroid/view/View;

.field private mFabExpandLayout:Landroid/widget/LinearLayout;

.field private mFabSize:I

.field mFabType:I

.field mListener:Lcom/dodonew/online/widget/circualreveal/SheetLayout$OnFabAnimationEndListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabType:I

    .line 45
    iput-boolean v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mAnimatingFab:Z

    .line 53
    invoke-direct {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabType:I

    .line 45
    iput-boolean v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mAnimatingFab:Z

    .line 58
    invoke-direct {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->init()V

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->loadAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabType:I

    .line 45
    iput-boolean v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mAnimatingFab:Z

    .line 64
    invoke-direct {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->init()V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->loadAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->expandAnimationEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/circualreveal/SheetLayout;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->contractAnimationEnd()V

    return-void
.end method

.method private calculateStartRadius(II)F
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    .line 348
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    .line 349
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    .line 347
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private canAddViewToContainer()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private centerX(Landroid/view/View;)F
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 358
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getX(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private centerY(Landroid/view/View;)F
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 362
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private contractAnimationEnd()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 338
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFab:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 339
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mAnimatingFab:Z

    .line 342
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 344
    return-void
.end method

.method private contractLollipop(IIFF)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 284
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 286
    .local v0, "toolbarContractAnim":Landroid/animation/Animator;
    iget v1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->animationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 288
    new-instance v1, Lcom/dodonew/online/widget/circualreveal/SheetLayout$3;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout$3;-><init>(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 297
    return-void
.end method

.method private contractPreLollipop(IIFF)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .prologue
    .line 302
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    .line 303
    invoke-static {v1, p1, p2, p3, p4}, Lcom/dodonew/online/widget/circualreveal/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;

    move-result-object v0

    .line 304
    .local v0, "toolbarContractAnim":Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;
    iget v1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->animationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 306
    new-instance v1, Lcom/dodonew/online/widget/circualreveal/SheetLayout$4;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout$4;-><init>(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;->addListener(Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;)V

    .line 328
    invoke-virtual {v0}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;->start()V

    .line 329
    return-void
.end method

.method private expandAnimationEnd()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mAnimatingFab:Z

    .line 333
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mListener:Lcom/dodonew/online/widget/circualreveal/SheetLayout$OnFabAnimationEndListener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mListener:Lcom/dodonew/online/widget/circualreveal/SheetLayout$OnFabAnimationEndListener;

    invoke-interface {v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout$OnFabAnimationEndListener;->onFabAnimationEnd()V

    .line 335
    :cond_0
    return-void
.end method

.method private expandLollipop(IIFF)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 227
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 229
    .local v0, "toolbarExpandAnim":Landroid/animation/Animator;
    iget v1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->animationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 230
    new-instance v1, Lcom/dodonew/online/widget/circualreveal/SheetLayout$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout$1;-><init>(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 246
    return-void
.end method

.method private expandPreLollipop(IIFF)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .prologue
    .line 250
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    .line 251
    invoke-static {v1, p1, p2, p3, p4}, Lcom/dodonew/online/widget/circualreveal/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;

    move-result-object v0

    .line 253
    .local v0, "toolbarExpandAnim":Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;
    iget v1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->animationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 254
    new-instance v1, Lcom/dodonew/online/widget/circualreveal/SheetLayout$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout$2;-><init>(Lcom/dodonew/online/widget/circualreveal/SheetLayout;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;->addListener(Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;)V

    .line 278
    invoke-virtual {v0}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;->start()V

    .line 279
    return-void
.end method

.method private getFabSizePx()I
    .locals 4

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 354
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabSize:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private getGravity(I)I
    .locals 1
    .param p1, "gravityEnum"    # I

    .prologue
    const/4 v0, 0x1

    .line 105
    if-nez p1, :cond_1

    const v0, 0x800003

    :cond_0
    :goto_0
    or-int/lit8 v0, v0, 0x10

    return v0

    :cond_1
    if-eq p1, v0, :cond_0

    const v0, 0x800005

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030070

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    const v0, 0x7f0d00af

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    .line 71
    return-void
.end method

.method private loadAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 74
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 75
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 78
    .local v3, "theme":Landroid/content/res/Resources$Theme;
    const v4, 0x7f01015b

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 80
    invoke-virtual {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcom/dodonew/online/R$styleable;->FooterLayout:[I

    invoke-virtual {v4, p2, v5, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    :try_start_0
    iget v5, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->setColor(I)V

    .line 89
    const/4 v4, 0x1

    const/16 v5, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->animationDuration:I

    .line 91
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 92
    .local v1, "containerGravity":I
    const/4 v4, 0x3

    const/16 v5, 0x38

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->getGravity(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 98
    return-void

    .line 94
    .end local v1    # "containerGravity":I
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v4
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->canAddViewToContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->canAddViewToContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->canAddViewToContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->canAddViewToContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public contractFab()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->isFabExpanded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 218
    :goto_0
    return-void

    .line 199
    :cond_0
    iput v6, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabType:I

    .line 200
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mAnimatingFab:Z

    .line 202
    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFab:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 203
    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFab:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFab:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->centerX(Landroid/view/View;)F

    move-result v4

    float-to-int v2, v4

    .line 207
    .local v2, "x":I
    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFab:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->centerY(Landroid/view/View;)F

    move-result v4

    float-to-int v3, v4

    .line 210
    .local v3, "y":I
    invoke-direct {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->getFabSizePx()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    .line 211
    .local v0, "endRadius":F
    invoke-direct {p0, v2, v3}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->calculateStartRadius(II)F

    move-result v1

    .line 213
    .local v1, "startRadius":F
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1

    .line 214
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->contractPreLollipop(IIFF)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->contractLollipop(IIFF)V

    goto :goto_0
.end method

.method public expandFab()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 168
    iput v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabType:I

    .line 169
    iput-boolean v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mAnimatingFab:Z

    .line 172
    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFab:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->centerX(Landroid/view/View;)F

    move-result v4

    float-to-int v2, v4

    .line 173
    .local v2, "x":I
    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFab:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->centerY(Landroid/view/View;)F

    move-result v4

    float-to-int v3, v4

    .line 176
    .local v3, "y":I
    invoke-direct {p0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->getFabSizePx()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    .line 177
    .local v1, "startRadius":F
    invoke-direct {p0, v2, v3}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->calculateStartRadius(II)F

    move-result v0

    .line 179
    .local v0, "endRadius":F
    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 180
    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFab:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFab:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 184
    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFab:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 186
    iget-object v4, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFab:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 187
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    .line 188
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->expandPreLollipop(IIFF)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->expandLollipop(IIFF)V

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabType:I

    .line 156
    return-void
.end method

.method public isFabExpanded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 221
    iget v1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 112
    return-void
.end method

.method public setFab(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFab:Landroid/view/View;

    .line 102
    return-void
.end method

.method public setFabAnimationEndListener(Lcom/dodonew/online/widget/circualreveal/SheetLayout$OnFabAnimationEndListener;)V
    .locals 0
    .param p1, "eventListener"    # Lcom/dodonew/online/widget/circualreveal/SheetLayout$OnFabAnimationEndListener;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mListener:Lcom/dodonew/online/widget/circualreveal/SheetLayout$OnFabAnimationEndListener;

    .line 371
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabExpandLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    const/4 v0, 0x1

    iput v0, p0, Lcom/dodonew/online/widget/circualreveal/SheetLayout;->mFabType:I

    .line 161
    return-void
.end method
