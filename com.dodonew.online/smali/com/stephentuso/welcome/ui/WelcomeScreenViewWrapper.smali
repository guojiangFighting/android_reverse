.class public abstract Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;
.super Ljava/lang/Object;
.source "WelcomeScreenViewWrapper.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;


# instance fields
.field private mAnimate:Z

.field private mFirstPageIndex:I

.field private mLastPageIndex:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mFirstPageIndex:I

    .line 17
    iput v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mLastPageIndex:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mAnimate:Z

    .line 21
    iput-object p1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mView:Landroid/view/View;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;F)V
    .locals 0
    .param p0, "x0"    # Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;
    .param p1, "x1"    # F

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->setAlpha(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mView:Landroid/view/View;

    return-object v0
.end method

.method private setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 138
    :cond_0
    return-void
.end method

.method private show(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->showWithAnimation()V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->showImmediately()V

    goto :goto_0
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected hide(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->hideWithAnimation()V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->hideImmediately()V

    goto :goto_0
.end method

.method protected hideImmediately()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void
.end method

.method protected hideWithAnimation()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper$1;

    invoke-direct {v0, p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper$1;-><init>(Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;)V

    .line 105
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 106
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 35
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 27
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 31
    iget v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mFirstPageIndex:I

    iget v1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mLastPageIndex:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->onPageSelected(III)V

    .line 32
    return-void
.end method

.method public abstract onPageSelected(III)V
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method protected setVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mAnimate:Z

    invoke-virtual {p0, p1, v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->setVisibility(ZZ)V

    .line 50
    return-void
.end method

.method protected setVisibility(ZZ)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0, p2}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->show(Z)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, p2}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->hide(Z)V

    goto :goto_0
.end method

.method public setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->firstPageIndex()I

    move-result v0

    iput v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mFirstPageIndex:I

    .line 40
    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->lastViewablePageIndex()I

    move-result v0

    iput v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mLastPageIndex:I

    .line 41
    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getAnimateButtons()Z

    move-result v0

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mAnimate:Z

    .line 42
    return-void
.end method

.method protected showImmediately()V
    .locals 2

    .prologue
    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->setAlpha(F)V

    .line 83
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    return-void
.end method

.method protected showWithAnimation()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper$2;

    invoke-direct {v0, p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper$2;-><init>(Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;)V

    .line 128
    .local v0, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 129
    return-void
.end method
