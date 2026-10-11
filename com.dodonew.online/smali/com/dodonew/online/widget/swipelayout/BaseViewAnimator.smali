.class public abstract Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
.super Ljava/lang/Object;
.source "BaseViewAnimator.java"


# static fields
.field public static final DURATION:J = 0x3e8L


# instance fields
.field private mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

.field private mDuration:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mDuration:J

    .line 43
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 44
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
    .locals 1
    .param p1, "l"    # Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 101
    return-object p0
.end method

.method public animate()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->start()V

    .line 57
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->cancel()V

    .line 106
    return-void
.end method

.method public getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mDuration:J

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isStarted()Z

    move-result v0

    return v0
.end method

.method protected abstract prepare(Landroid/view/View;)V
.end method

.method public removeAllListener()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->removeAllListeners()V

    .line 122
    return-void
.end method

.method public removeAnimatorListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "l"    # Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/AnimatorSet;->removeListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 118
    return-void
.end method

.method public reset(Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 65
    invoke-static {p1, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 66
    invoke-static {p1, v1}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 67
    invoke-static {p1, v1}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 68
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 69
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 70
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setRotation(Landroid/view/View;F)V

    .line 71
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setRotationY(Landroid/view/View;F)V

    .line 72
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setRotationX(Landroid/view/View;F)V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setPivotX(Landroid/view/View;F)V

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    .line 75
    return-void
.end method

.method public setDuration(J)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mDuration:J

    .line 87
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 126
    return-object p0
.end method

.method public setStartDelay(J)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nineoldandroids/animation/AnimatorSet;->setStartDelay(J)V

    .line 92
    return-object p0
.end method

.method public setTarget(Landroid/view/View;)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->reset(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->prepare(Landroid/view/View;)V

    .line 52
    return-object p0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-wide v2, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mDuration:J

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 82
    iget-object v0, p0, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 83
    return-void
.end method
