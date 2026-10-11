.class public Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;
.super Ljava/util/ArrayList;
.source "WelcomeScreenPageList.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/stephentuso/welcome/ui/WelcomeScreenPage;",
        ">;",
        "Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>([Lcom/stephentuso/welcome/ui/WelcomeScreenPage;)V
    .locals 1
    .param p1, "pages"    # [Lcom/stephentuso/welcome/ui/WelcomeScreenPage;

    .prologue
    .line 17
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getBackgroundColor(I)Lcom/stephentuso/welcome/ui/BackgroundColor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;

    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->getBackgroundColor()Lcom/stephentuso/welcome/ui/BackgroundColor;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColors()[Lcom/stephentuso/welcome/ui/BackgroundColor;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/stephentuso/welcome/ui/BackgroundColor;>;"
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;

    .line 31
    .local v1, "page":Lcom/stephentuso/welcome/ui/WelcomeScreenPage;
    invoke-virtual {v1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->getBackgroundColor()Lcom/stephentuso/welcome/ui/BackgroundColor;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    .end local v1    # "page":Lcom/stephentuso/welcome/ui/WelcomeScreenPage;
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/stephentuso/welcome/ui/BackgroundColor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/stephentuso/welcome/ui/BackgroundColor;

    return-object v2
.end method

.method public getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;

    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;

    .line 57
    .local v0, "page":Lcom/stephentuso/welcome/ui/WelcomeScreenPage;
    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 59
    .end local v0    # "page":Lcom/stephentuso/welcome/ui/WelcomeScreenPage;
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;

    .line 43
    .local v0, "page":Lcom/stephentuso/welcome/ui/WelcomeScreenPage;
    invoke-virtual {v0, p1, p2, p3}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->onPageScrolled(IFI)V

    goto :goto_0

    .line 45
    .end local v0    # "page":Lcom/stephentuso/welcome/ui/WelcomeScreenPage;
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;

    .line 50
    .local v0, "page":Lcom/stephentuso/welcome/ui/WelcomeScreenPage;
    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->onPageSelected(I)V

    goto :goto_0

    .line 52
    .end local v0    # "page":Lcom/stephentuso/welcome/ui/WelcomeScreenPage;
    :cond_0
    return-void
.end method

.method public reversePageOrder()V
    .locals 0

    .prologue
    .line 37
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 38
    return-void
.end method

.method public setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V
    .locals 3
    .param p1, "config"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;

    .line 64
    .local v0, "page":Lcom/stephentuso/welcome/ui/WelcomeScreenPage;
    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V

    goto :goto_0

    .line 66
    .end local v0    # "page":Lcom/stephentuso/welcome/ui/WelcomeScreenPage;
    :cond_0
    return-void
.end method
