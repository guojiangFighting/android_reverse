.class public Lcom/stephentuso/welcome/ui/view/WelcomeScreenBackgroundView;
.super Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;
.source "WelcomeScreenBackgroundView.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/stephentuso/welcome/ui/view/ColorChangingBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 40
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/stephentuso/welcome/ui/view/WelcomeScreenBackgroundView;->setPosition(IF)V

    .line 34
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 37
    return-void
.end method

.method public setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getBackgroundColors()[Lcom/stephentuso/welcome/ui/BackgroundColor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stephentuso/welcome/ui/view/WelcomeScreenBackgroundView;->setColors([Lcom/stephentuso/welcome/ui/BackgroundColor;)V

    .line 29
    return-void
.end method
