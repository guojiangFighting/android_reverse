.class public Lcom/stephentuso/welcome/ui/SkipButton;
.super Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;
.source "SkipButton.java"


# instance fields
.field private enabled:Z

.field private onlyShowOnFirstPage:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;-><init>(Landroid/view/View;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/SkipButton;->enabled:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/SkipButton;->onlyShowOnFirstPage:Z

    .line 19
    iput-boolean p2, p0, Lcom/stephentuso/welcome/ui/SkipButton;->enabled:Z

    .line 20
    if-nez p2, :cond_0

    .line 21
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public onPageSelected(III)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "firstPageIndex"    # I
    .param p3, "lastPageIndex"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    iget-boolean v2, p0, Lcom/stephentuso/welcome/ui/SkipButton;->onlyShowOnFirstPage:Z

    if-eqz v2, :cond_1

    .line 34
    iget-boolean v2, p0, Lcom/stephentuso/welcome/ui/SkipButton;->enabled:Z

    if-eqz v2, :cond_0

    if-ne p1, p2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/stephentuso/welcome/ui/SkipButton;->setVisibility(Z)V

    .line 37
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    iget-boolean v2, p0, Lcom/stephentuso/welcome/ui/SkipButton;->enabled:Z

    if-eqz v2, :cond_2

    if-eq p1, p3, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/stephentuso/welcome/ui/SkipButton;->setVisibility(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V
    .locals 3
    .param p1, "config"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V

    .line 27
    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getShowPrevButton()Z

    move-result v0

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/SkipButton;->onlyShowOnFirstPage:Z

    .line 28
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/SkipButton;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getSkipButtonTypefacePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/stephentuso/welcome/util/WelcomeUtils;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    .line 29
    return-void
.end method
