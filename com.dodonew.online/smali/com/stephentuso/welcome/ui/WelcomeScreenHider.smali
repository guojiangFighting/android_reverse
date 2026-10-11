.class public Lcom/stephentuso/welcome/ui/WelcomeScreenHider;
.super Ljava/lang/Object;
.source "WelcomeScreenHider.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stephentuso/welcome/ui/WelcomeScreenHider$OnViewHiddenListener;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private mLastPage:Ljava/lang/Integer;

.field private mListener:Lcom/stephentuso/welcome/ui/WelcomeScreenHider$OnViewHiddenListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "viewToHide"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->mLastPage:Ljava/lang/Integer;

    .line 15
    iput-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->mListener:Lcom/stephentuso/welcome/ui/WelcomeScreenHider$OnViewHiddenListener;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->enabled:Z

    .line 19
    iput-object p1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->mView:Landroid/view/View;

    .line 20
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 67
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    iget-boolean v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->enabled:Z

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->mLastPage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->mListener:Lcom/stephentuso/welcome/ui/WelcomeScreenHider$OnViewHiddenListener;

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->mListener:Lcom/stephentuso/welcome/ui/WelcomeScreenHider$OnViewHiddenListener;

    invoke-interface {v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenHider$OnViewHiddenListener;->onViewHidden()V

    .line 47
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->mLastPage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->mView:Landroid/view/View;

    sub-float v1, v2, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->mLastPage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 62
    return-void
.end method

.method public setOnViewHiddenListener(Lcom/stephentuso/welcome/ui/WelcomeScreenHider$OnViewHiddenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/stephentuso/welcome/ui/WelcomeScreenHider$OnViewHiddenListener;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->mListener:Lcom/stephentuso/welcome/ui/WelcomeScreenHider$OnViewHiddenListener;

    .line 28
    return-void
.end method

.method public setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getSwipeToDismiss()Z

    move-result v0

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->enabled:Z

    .line 33
    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->lastPageIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->mLastPage:Ljava/lang/Integer;

    .line 34
    return-void
.end method
