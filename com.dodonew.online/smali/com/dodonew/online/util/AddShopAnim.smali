.class public Lcom/dodonew/online/util/AddShopAnim;
.super Ljava/lang/Object;
.source "AddShopAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/util/AddShopAnim$OnAnimEndListener;
    }
.end annotation


# instance fields
.field private anim_mask_layout:Landroid/view/ViewGroup;

.field private cart:Landroid/view/View;

.field private context:Landroid/app/Activity;

.field private onAnimEndListener:Lcom/dodonew/online/util/AddShopAnim$OnAnimEndListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/dodonew/online/util/AddShopAnim$OnAnimEndListener;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "cart"    # Landroid/view/View;
    .param p3, "onAnimEndListener"    # Lcom/dodonew/online/util/AddShopAnim$OnAnimEndListener;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dodonew/online/util/AddShopAnim;->context:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lcom/dodonew/online/util/AddShopAnim;->cart:Landroid/view/View;

    .line 27
    iput-object p3, p0, Lcom/dodonew/online/util/AddShopAnim;->onAnimEndListener:Lcom/dodonew/online/util/AddShopAnim$OnAnimEndListener;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/util/AddShopAnim;)Lcom/dodonew/online/util/AddShopAnim$OnAnimEndListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/util/AddShopAnim;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dodonew/online/util/AddShopAnim;->onAnimEndListener:Lcom/dodonew/online/util/AddShopAnim$OnAnimEndListener;

    return-object v0
.end method

.method private addViewToAnimLayout(Landroid/view/ViewGroup;Landroid/view/View;[I)Landroid/view/View;
    .locals 5
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "location"    # [I

    .prologue
    const/4 v4, -0x2

    .line 56
    const/4 v3, 0x0

    aget v1, p3, v3

    .line 57
    .local v1, "x":I
    const/4 v3, 0x1

    aget v2, p3, v3

    .line 58
    .local v2, "y":I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 62
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    return-object p2
.end method

.method private createAnimLayout(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v4, -0x1

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 43
    .local v2, "rootView":Landroid/view/ViewGroup;
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "animLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 49
    const v3, 0x106000d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 50
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    return-object v0
.end method


# virtual methods
.method public setAnim(Landroid/view/View;[I)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "start_location"    # [I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 68
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/dodonew/online/util/AddShopAnim;->anim_mask_layout:Landroid/view/ViewGroup;

    .line 69
    iget-object v7, p0, Lcom/dodonew/online/util/AddShopAnim;->context:Landroid/app/Activity;

    invoke-direct {p0, v7}, Lcom/dodonew/online/util/AddShopAnim;->createAnimLayout(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v7

    iput-object v7, p0, Lcom/dodonew/online/util/AddShopAnim;->anim_mask_layout:Landroid/view/ViewGroup;

    .line 70
    iget-object v7, p0, Lcom/dodonew/online/util/AddShopAnim;->anim_mask_layout:Landroid/view/ViewGroup;

    invoke-virtual {v7, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    iget-object v7, p0, Lcom/dodonew/online/util/AddShopAnim;->anim_mask_layout:Landroid/view/ViewGroup;

    invoke-direct {p0, v7, p1, p2}, Lcom/dodonew/online/util/AddShopAnim;->addViewToAnimLayout(Landroid/view/ViewGroup;Landroid/view/View;[I)Landroid/view/View;

    move-result-object v6

    .line 73
    .local v6, "view":Landroid/view/View;
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 74
    .local v2, "end_location":[I
    iget-object v7, p0, Lcom/dodonew/online/util/AddShopAnim;->cart:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 76
    aget v7, p2, v10

    rsub-int/lit8 v7, v7, 0x0

    add-int/lit8 v0, v7, 0x28

    .line 77
    .local v0, "endX":I
    aget v7, v2, v11

    aget v8, p2, v11

    sub-int v1, v7, v8

    .line 78
    .local v1, "endY":I
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v0

    invoke-direct {v4, v9, v7, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 80
    .local v4, "translateAnimationX":Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 81
    invoke-virtual {v4, v10}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 82
    invoke-virtual {v4, v11}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 84
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    int-to-float v7, v1

    invoke-direct {v5, v9, v9, v9, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 86
    .local v5, "translateAnimationY":Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v5, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 87
    invoke-virtual {v5, v10}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 88
    invoke-virtual {v4, v11}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 90
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 91
    .local v3, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 92
    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 93
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    const-wide/16 v8, 0x320

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 95
    invoke-virtual {v6, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    new-instance v7, Lcom/dodonew/online/util/AddShopAnim$1;

    invoke-direct {v7, p0, p1}, Lcom/dodonew/online/util/AddShopAnim$1;-><init>(Lcom/dodonew/online/util/AddShopAnim;Landroid/view/View;)V

    invoke-virtual {v3, v7}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 122
    return-void
.end method
