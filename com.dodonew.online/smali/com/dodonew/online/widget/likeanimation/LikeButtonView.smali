.class public Lcom/dodonew/online/widget/likeanimation/LikeButtonView;
.super Landroid/widget/FrameLayout;
.source "LikeButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/likeanimation/LikeButtonView$OnClickListener;
    }
.end annotation


# static fields
.field private static final ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private static final DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private isChecked:Z

.field private ivStar:Landroid/widget/ImageView;

.field private onClickListener:Lcom/dodonew/online/widget/likeanimation/LikeButtonView$OnClickListener;

.field private vCircle:Lcom/dodonew/online/widget/likeanimation/CircleView;

.field private vDotsView:Lcom/dodonew/online/widget/likeanimation/DotsView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 33
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 34
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    invoke-direct {p0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->init()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/likeanimation/LikeButtonView;)Lcom/dodonew/online/widget/likeanimation/CircleView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->vCircle:Lcom/dodonew/online/widget/likeanimation/CircleView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/likeanimation/LikeButtonView;)Lcom/dodonew/online/widget/likeanimation/DotsView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->vDotsView:Lcom/dodonew/online/widget/likeanimation/DotsView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/likeanimation/LikeButtonView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/likeanimation/LikeButtonView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->ivStar:Landroid/widget/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 72
    const v0, 0x7f0d0234

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->ivStar:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f0d0232

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/likeanimation/DotsView;

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->vDotsView:Lcom/dodonew/online/widget/likeanimation/DotsView;

    .line 74
    const v0, 0x7f0d0233

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/likeanimation/CircleView;

    iput-object v0, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->vCircle:Lcom/dodonew/online/widget/likeanimation/CircleView;

    .line 75
    invoke-virtual {p0, p0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v12, 0xfa

    const/4 v9, 0x0

    const/4 v10, 0x2

    .line 81
    iget-boolean v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->isChecked:Z

    if-nez v5, :cond_3

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->isChecked:Z

    .line 82
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->onClickListener:Lcom/dodonew/online/widget/likeanimation/LikeButtonView$OnClickListener;

    if-eqz v5, :cond_0

    .line 83
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->onClickListener:Lcom/dodonew/online/widget/likeanimation/LikeButtonView$OnClickListener;

    iget-boolean v8, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->isChecked:Z

    invoke-interface {v5, v8}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView$OnClickListener;->click(Z)V

    .line 85
    :cond_0
    iget-object v8, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->ivStar:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->isChecked:Z

    if-eqz v5, :cond_4

    const v5, 0x7f0200a1

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_1

    .line 88
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 91
    :cond_1
    iget-boolean v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->isChecked:Z

    if-eqz v5, :cond_2

    .line 92
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->ivStar:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 93
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->ivStar:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 94
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->ivStar:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 95
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->vCircle:Lcom/dodonew/online/widget/likeanimation/CircleView;

    invoke-virtual {v5, v9}, Lcom/dodonew/online/widget/likeanimation/CircleView;->setInnerCircleRadiusProgress(F)V

    .line 96
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->vCircle:Lcom/dodonew/online/widget/likeanimation/CircleView;

    invoke-virtual {v5, v9}, Lcom/dodonew/online/widget/likeanimation/CircleView;->setOuterCircleRadiusProgress(F)V

    .line 97
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->vDotsView:Lcom/dodonew/online/widget/likeanimation/DotsView;

    invoke-virtual {v5, v9}, Lcom/dodonew/online/widget/likeanimation/DotsView;->setCurrentProgress(F)V

    .line 99
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 100
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->vCircle:Lcom/dodonew/online/widget/likeanimation/CircleView;

    sget-object v8, Lcom/dodonew/online/widget/likeanimation/CircleView;->OUTER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;

    new-array v9, v10, [F

    fill-array-data v9, :array_0

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 101
    .local v2, "outerCircleAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    sget-object v5, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->vCircle:Lcom/dodonew/online/widget/likeanimation/CircleView;

    sget-object v8, Lcom/dodonew/online/widget/likeanimation/CircleView;->INNER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;

    new-array v9, v10, [F

    fill-array-data v9, :array_1

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 105
    .local v1, "innerCircleAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    const-wide/16 v8, 0xc8

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 107
    sget-object v5, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->ivStar:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView;->SCALE_Y:Landroid/util/Property;

    new-array v9, v10, [F

    fill-array-data v9, :array_2

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 110
    .local v4, "starScaleYAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x15e

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 111
    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 112
    sget-object v5, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->ivStar:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView;->SCALE_X:Landroid/util/Property;

    new-array v9, v10, [F

    fill-array-data v9, :array_3

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 115
    .local v3, "starScaleXAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x15e

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 116
    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 117
    sget-object v5, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 119
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->vDotsView:Lcom/dodonew/online/widget/likeanimation/DotsView;

    sget-object v8, Lcom/dodonew/online/widget/likeanimation/DotsView;->DOTS_PROGRESS:Landroid/util/Property;

    new-array v9, v10, [F

    fill-array-data v9, :array_4

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 120
    .local v0, "dotsAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x384

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 121
    const-wide/16 v8, 0x32

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 122
    sget-object v5, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x5

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v2, v8, v7

    aput-object v1, v8, v6

    aput-object v4, v8, v10

    const/4 v6, 0x3

    aput-object v3, v8, v6

    const/4 v6, 0x4

    aput-object v0, v8, v6

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 132
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/dodonew/online/widget/likeanimation/LikeButtonView$1;

    invoke-direct {v6, p0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView$1;-><init>(Lcom/dodonew/online/widget/likeanimation/LikeButtonView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    iget-object v5, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 145
    .end local v0    # "dotsAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "innerCircleAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "outerCircleAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "starScaleXAnimator":Landroid/animation/ObjectAnimator;
    .end local v4    # "starScaleYAnimator":Landroid/animation/ObjectAnimator;
    :cond_2
    return-void

    :cond_3
    move v5, v7

    .line 81
    goto/16 :goto_0

    .line 85
    :cond_4
    const v5, 0x7f0200a0

    goto/16 :goto_1

    .line 100
    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 109
    :array_2
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 114
    :array_3
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 119
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    return v3

    .line 152
    :pswitch_0
    iget-object v4, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->ivStar:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 153
    invoke-virtual {p0, v3}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->setPressed(Z)V

    goto :goto_0

    .line 157
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 158
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 159
    .local v2, "y":F
    cmpl-float v4, v1, v5

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    cmpl-float v4, v2, v5

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    move v0, v3

    .line 160
    .local v0, "isInside":Z
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->isPressed()Z

    move-result v4

    if-eq v4, v0, :cond_0

    .line 161
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->setPressed(Z)V

    goto :goto_0

    .line 166
    .end local v0    # "isInside":Z
    .end local v1    # "x":F
    .end local v2    # "y":F
    :pswitch_2
    iget-object v4, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->ivStar:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 167
    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->performClick()Z

    .line 169
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->setPressed(Z)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->isChecked:Z

    .line 178
    iget-object v1, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->ivStar:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f0200a1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    return-void

    .line 178
    :cond_0
    const v0, 0x7f0200a0

    goto :goto_0
.end method

.method public setOnClickListener(Lcom/dodonew/online/widget/likeanimation/LikeButtonView$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Lcom/dodonew/online/widget/likeanimation/LikeButtonView$OnClickListener;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/dodonew/online/widget/likeanimation/LikeButtonView;->onClickListener:Lcom/dodonew/online/widget/likeanimation/LikeButtonView$OnClickListener;

    .line 185
    return-void
.end method
