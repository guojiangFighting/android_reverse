.class public Lcom/stephentuso/welcome/ui/PreviousButton;
.super Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;
.source "PreviousButton.java"


# instance fields
.field private shouldShow:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;-><init>(Landroid/view/View;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/PreviousButton;->shouldShow:Z

    .line 16
    return-void
.end method


# virtual methods
.method public onPageSelected(III)V
    .locals 1
    .param p1, "pageIndex"    # I
    .param p2, "firstPageIndex"    # I
    .param p3, "lastPageIndex"    # I

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/stephentuso/welcome/ui/PreviousButton;->shouldShow:Z

    if-eqz v0, :cond_0

    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/stephentuso/welcome/ui/PreviousButton;->setVisibility(Z)V

    .line 27
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V

    .line 21
    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getShowPrevButton()Z

    move-result v0

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/PreviousButton;->shouldShow:Z

    .line 22
    return-void
.end method
