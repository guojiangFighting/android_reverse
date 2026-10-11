.class public Lcom/stephentuso/welcome/ui/DoneButton;
.super Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;
.source "DoneButton.java"


# instance fields
.field private shouldShow:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;-><init>(Landroid/view/View;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/DoneButton;->shouldShow:Z

    .line 18
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/DoneButton;->hideImmediately()V

    .line 19
    return-void
.end method


# virtual methods
.method public onPageSelected(III)V
    .locals 1
    .param p1, "pageIndex"    # I
    .param p2, "firstPageIndex"    # I
    .param p3, "lastPageIndex"    # I

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/stephentuso/welcome/ui/DoneButton;->shouldShow:Z

    if-eqz v0, :cond_0

    if-ne p1, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/stephentuso/welcome/ui/DoneButton;->setVisibility(Z)V

    .line 31
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V
    .locals 3
    .param p1, "config"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenViewWrapper;->setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V

    .line 24
    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getUseCustomDoneButton()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/stephentuso/welcome/ui/DoneButton;->shouldShow:Z

    .line 25
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/DoneButton;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getDoneButtonTypefacePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/stephentuso/welcome/util/WelcomeUtils;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    .line 26
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
