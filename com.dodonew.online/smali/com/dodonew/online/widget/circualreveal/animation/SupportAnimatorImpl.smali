.class final Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;
.super Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;
.source "SupportAnimatorImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field mAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/animation/Animator;Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "target"    # Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;

    .prologue
    .line 16
    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator;-><init>(Lcom/dodonew/online/widget/circualreveal/animation/RevealAnimator;)V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    .line 18
    return-void
.end method


# virtual methods
.method public addListener(Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 59
    .local v0, "a":Landroid/animation/Animator;
    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 63
    :cond_0
    if-nez p1, :cond_1

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 68
    :cond_1
    new-instance v1, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl$1;-><init>(Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 100
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 103
    :cond_0
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 108
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 111
    :cond_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 132
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 133
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    .line 136
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getStartDelay()J
    .locals 4

    .prologue
    .line 115
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 116
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    .line 119
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public isNativeAnimator()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 94
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDuration(J)Landroid/animation/Animator;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 41
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 42
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 45
    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 2
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 51
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    :cond_0
    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 124
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 125
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 128
    :cond_0
    return-void
.end method

.method public setupEndValues()V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 150
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/animation/Animator;->setupEndValues()V

    .line 153
    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 142
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/animation/Animator;->setupStartValues()V

    .line 145
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 33
    iget-object v1, p0, Lcom/dodonew/online/widget/circualreveal/animation/SupportAnimatorImpl;->mAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 34
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 37
    :cond_0
    return-void
.end method
