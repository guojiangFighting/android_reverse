.class public Lcom/dodonew/online/widget/circualreveal/animation/ViewAnimationUtils;
.super Ljava/lang/Object;
.source "ViewAnimationUtils.java"


# static fields
.field private static final LOLLIPOP_PLUS:Z

.field public static final SCALE_UP_DURATION:I = 0x1f4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dodonew/online/widget/circualreveal/animation/ViewAnimationUtils;->LOLLIPOP_PLUS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Landroid/view/View;IIFF)Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 43
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/dodonew/online/widget/circualreveal/animation/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFFI)Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static createCircularReveal(Landroid/view/View;IIFFI)Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F
    .param p5, "layerType"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View must be inside RevealFrameLayout or RevealLinearLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;

    .line 76
    .local v7, "revealLayout":Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;
    new-instance v0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;-><init>(IIFFLjava/lang/ref/WeakReference;)V

    invoke-interface {v7, v0}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;->attachRevealInfo(Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealInfo;)V

    .line 79
    sget-boolean v0, Lcom/dodonew/online/widget/circualreveal/animation/ViewAnimationUtils;->LOLLIPOP_PLUS:Z

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;

    .line 81
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;-><init>(Landroid/animation/Animator;Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;)V

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_1
    sget-object v0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;->CLIP_RADIUS:Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealRadius;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v2, 0x1

    aput p4, v1, v2

    invoke-static {v7, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 85
    .local v6, "reveal":Landroid/animation/ObjectAnimator;
    new-instance v0, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealFinishedIceCreamSandwich;

    invoke-direct {v0, v7, p5}, Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator$RevealFinishedIceCreamSandwich;-><init>(Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;I)V

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    new-instance v0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;

    invoke-direct {v0, v6, v7}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;-><init>(Landroid/animation/Animator;Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;)V

    goto :goto_0
.end method

.method public static liftingFromBottom(Landroid/view/View;FFII)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "baseRotation"    # F
    .param p2, "fromY"    # F
    .param p3, "duration"    # I
    .param p4, "startDelay"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 102
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p3

    .line 106
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p4

    .line 107
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 112
    return-void
.end method

.method public static liftingFromBottom(Landroid/view/View;FI)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "baseRotation"    # F
    .param p2, "duration"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    .line 151
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 156
    return-void
.end method

.method public static liftingFromBottom(Landroid/view/View;FII)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "baseRotation"    # F
    .param p2, "duration"    # I
    .param p3, "startDelay"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    .line 129
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p3

    .line 130
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 135
    return-void
.end method
