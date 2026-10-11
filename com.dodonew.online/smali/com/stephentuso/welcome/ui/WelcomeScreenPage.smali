.class public Lcom/stephentuso/welcome/ui/WelcomeScreenPage;
.super Ljava/lang/Object;
.source "WelcomeScreenPage.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;
    }
.end annotation


# instance fields
.field private final backgroundColor:Lcom/stephentuso/welcome/ui/BackgroundColor;

.field private final fragmentHolder:Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;

.field private index:I

.field private isRtl:Z

.field private totalPages:I


# direct methods
.method public constructor <init>(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;Lcom/stephentuso/welcome/ui/BackgroundColor;)V
    .locals 2
    .param p1, "fragmentHolder"    # Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;
    .param p2, "backgroundColor"    # Lcom/stephentuso/welcome/ui/BackgroundColor;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x2

    iput v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->index:I

    .line 15
    iput-boolean v1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->isRtl:Z

    .line 16
    iput v1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->totalPages:I

    .line 47
    iput-object p1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->fragmentHolder:Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;

    .line 48
    iput-object p2, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->backgroundColor:Lcom/stephentuso/welcome/ui/BackgroundColor;

    .line 49
    return-void
.end method


# virtual methods
.method public createFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->fragmentHolder:Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;

    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;->createFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()Lcom/stephentuso/welcome/ui/BackgroundColor;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->backgroundColor:Lcom/stephentuso/welcome/ui/BackgroundColor;

    return-object v0
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->fragmentHolder:Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;

    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;

    iget v1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->index:I

    invoke-interface {v0, v1, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;->onWelcomeScreenPageScrollStateChanged(II)V

    .line 108
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 77
    iget-boolean v6, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->isRtl:Z

    if-eqz v6, :cond_0

    .line 78
    iget v6, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->totalPages:I

    add-int/lit8 v6, v6, -0x1

    sub-int p1, v6, p1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v6

    instance-of v6, v6, Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->index:I

    sub-int v6, p1, v6

    if-gt v6, v2, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 83
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    const/4 v1, 0x0

    .line 84
    .local v1, "fragmentWidth":I
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 85
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 88
    :cond_1
    iget-boolean v6, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->isRtl:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->index:I

    if-le p1, v6, :cond_4

    .line 89
    .local v2, "lowerPosition":Z
    :cond_2
    :goto_0
    if-eqz v2, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p2

    neg-float v3, v5

    .line 90
    .local v3, "offset":F
    :goto_1
    if-eqz v2, :cond_7

    sub-int v5, v1, p3

    neg-int v4, v5

    .line 92
    .local v4, "offsetPixels":I
    :goto_2
    check-cast v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    iget v5, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->index:I

    invoke-interface {v0, v5, v3, v4}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;->onWelcomeScreenPageScrolled(IFI)V

    .line 94
    .end local v1    # "fragmentWidth":I
    .end local v2    # "lowerPosition":Z
    .end local v3    # "offset":F
    .end local v4    # "offsetPixels":I
    :cond_3
    return-void

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .restart local v1    # "fragmentWidth":I
    :cond_4
    move v2, v5

    .line 88
    goto :goto_0

    :cond_5
    iget v6, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->index:I

    if-lt p1, v6, :cond_2

    move v2, v5

    goto :goto_0

    .restart local v2    # "lowerPosition":Z
    :cond_6
    move v3, p2

    .line 89
    goto :goto_1

    .restart local v3    # "offset":F
    :cond_7
    move v4, p3

    .line 90
    goto :goto_2
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;

    iget v1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->index:I

    invoke-interface {v0, v1, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage$OnChangeListener;->onWelcomeScreenPageSelected(II)V

    .line 101
    :cond_0
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->index:I

    .line 53
    return-void
.end method

.method public setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->isRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->isRtl:Z

    .line 70
    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->pageCount()I

    move-result v0

    iput v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->totalPages:I

    .line 71
    return-void
.end method
