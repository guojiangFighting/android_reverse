.class Lcom/dodonew/online/widget/swipelayout/YoYo$EmptyAnimatorListener;
.super Ljava/lang/Object;
.source "YoYo.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/swipelayout/YoYo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyAnimatorListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/swipelayout/YoYo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/swipelayout/YoYo$1;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/dodonew/online/widget/swipelayout/YoYo$EmptyAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 75
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 73
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 77
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 71
    return-void
.end method
