.class public Lcom/dodonew/online/widget/swipelayout/YoYo;
.super Ljava/lang/Object;
.source "YoYo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/swipelayout/YoYo$YoYoString;,
        Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;,
        Lcom/dodonew/online/widget/swipelayout/YoYo$EmptyAnimatorListener;,
        Lcom/dodonew/online/widget/swipelayout/YoYo$AnimatorCallback;
    }
.end annotation


# static fields
.field private static final DURATION:J = 0x3e8L

.field private static final NO_DELAY:J


# instance fields
.field private animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nineoldandroids/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private delay:J

.field private duration:J

.field private interpolator:Landroid/view/animation/Interpolator;

.field private target:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)V
    .locals 2
    .param p1, "animationComposer"    # Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->access$000(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    .line 50
    invoke-static {p1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->access$100(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->duration:J

    .line 51
    invoke-static {p1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->access$200(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->delay:J

    .line 52
    invoke-static {p1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->access$300(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->interpolator:Landroid/view/animation/Interpolator;

    .line 53
    invoke-static {p1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->access$400(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->callbacks:Ljava/util/List;

    .line 54
    invoke-static {p1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;->access$500(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->target:Landroid/view/View;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;Lcom/dodonew/online/widget/swipelayout/YoYo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;
    .param p2, "x1"    # Lcom/dodonew/online/widget/swipelayout/YoYo$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/swipelayout/YoYo;-><init>(Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/dodonew/online/widget/swipelayout/YoYo;)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/swipelayout/YoYo;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dodonew/online/widget/swipelayout/YoYo;->play()Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    move-result-object v0

    return-object v0
.end method

.method private play()Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;
    .locals 4

    .prologue
    .line 189
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->target:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->setTarget(Landroid/view/View;)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    .line 190
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    iget-wide v2, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->duration:J

    invoke-virtual {v1, v2, v3}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->setDuration(J)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->interpolator:Landroid/view/animation/Interpolator;

    .line 191
    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    move-result-object v1

    iget-wide v2, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->delay:J

    .line 192
    invoke-virtual {v1, v2, v3}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->setStartDelay(J)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    .line 194
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 196
    .local v0, "callback":Lcom/nineoldandroids/animation/Animator$AnimatorListener;
    iget-object v2, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    invoke-virtual {v2, v0}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->addAnimatorListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    goto :goto_0

    .line 200
    .end local v0    # "callback":Lcom/nineoldandroids/animation/Animator$AnimatorListener;
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;->animate()V

    .line 201
    iget-object v1, p0, Lcom/dodonew/online/widget/swipelayout/YoYo;->animator:Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    return-object v1
.end method

.method public static with(Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;
    .locals 2
    .param p0, "animator"    # Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;

    .prologue
    .line 62
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;-><init>(Lcom/dodonew/online/widget/swipelayout/BaseViewAnimator;Lcom/dodonew/online/widget/swipelayout/YoYo$1;)V

    return-object v0
.end method

.method public static with(Lcom/dodonew/online/widget/swipelayout/Techniques;)Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;
    .locals 2
    .param p0, "techniques"    # Lcom/dodonew/online/widget/swipelayout/Techniques;

    .prologue
    .line 58
    new-instance v0, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/widget/swipelayout/YoYo$AnimationComposer;-><init>(Lcom/dodonew/online/widget/swipelayout/Techniques;Lcom/dodonew/online/widget/swipelayout/YoYo$1;)V

    return-object v0
.end method
