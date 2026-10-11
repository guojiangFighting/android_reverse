.class public Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;
.super Ljava/lang/Object;
.source "WelcomeScreenItemList.java"

# interfaces
.implements Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;


# instance fields
.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;)V
    .locals 2
    .param p1, "items"    # [Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;->mItems:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 35
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;

    .line 36
    .local v0, "changeListener":Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;
    invoke-interface {v0, p1}, Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 38
    .end local v0    # "changeListener":Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 21
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;

    .line 22
    .local v0, "changeListener":Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 24
    .end local v0    # "changeListener":Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 28
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;

    .line 29
    .local v0, "changeListener":Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;
    invoke-interface {v0, p1}, Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 31
    .end local v0    # "changeListener":Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;
    :cond_0
    return-void
.end method

.method public setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V
    .locals 3
    .param p1, "config"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;

    .line 43
    .local v0, "changeListener":Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;
    invoke-interface {v0, p1}, Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;->setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V

    goto :goto_0

    .line 45
    .end local v0    # "changeListener":Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;
    :cond_0
    return-void
.end method
