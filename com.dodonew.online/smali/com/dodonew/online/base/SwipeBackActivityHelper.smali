.class public Lcom/dodonew/online/base/SwipeBackActivityHelper;
.super Ljava/lang/Object;
.source "SwipeBackActivityHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSwipeBackLayout:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/base/SwipeBackActivityHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/base/SwipeBackActivityHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSwipeBackLayout()Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    return-object v0
.end method

.method public onActivityCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    iget-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ae

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    iput-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .line 33
    iget-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    new-instance v1, Lcom/dodonew/online/base/SwipeBackActivityHelper$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/base/SwipeBackActivityHelper$1;-><init>(Lcom/dodonew/online/base/SwipeBackActivityHelper;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->addSwipeListener(Lcom/dodonew/online/widget/swipeback/SwipeBackLayout$SwipeListener;)V

    .line 48
    return-void
.end method

.method public onPostCreate()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper;->mSwipeBackLayout:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    iget-object v1, p0, Lcom/dodonew/online/base/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->attachToActivity(Landroid/app/Activity;)V

    .line 52
    return-void
.end method
