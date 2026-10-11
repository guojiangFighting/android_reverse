.class public Lcom/stephentuso/welcome/ui/view/WelcomeScreenViewPagerIndicator;
.super Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;
.source "WelcomeScreenViewPagerIndicator.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/stephentuso/welcome/ui/view/SimpleViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->viewablePageCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/stephentuso/welcome/ui/view/WelcomeScreenViewPagerIndicator;->setTotalPages(I)V

    .line 31
    return-void
.end method
