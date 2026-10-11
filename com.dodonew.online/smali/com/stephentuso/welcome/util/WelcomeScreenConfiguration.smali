.class public Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;
.super Ljava/lang/Object;
.source "WelcomeScreenConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;,
        Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Theme;
    }
.end annotation


# static fields
.field public static final NO_ANIMATION_SET:I = -0x1


# instance fields
.field private mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;


# direct methods
.method public constructor <init>(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)V
    .locals 5
    .param p1, "parameters"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .line 44
    invoke-virtual {p0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->isRtl()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$002(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;Z)Z

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$000(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    new-instance v1, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;

    new-instance v2, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$1;

    invoke-direct {v2, p0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$1;-><init>(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V

    iget-object v3, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    .line 53
    invoke-static {v3}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$100(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    move-result-object v3

    invoke-virtual {p0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->lastPageIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->getBackgroundColor(I)Lcom/stephentuso/welcome/ui/BackgroundColor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;-><init>(Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;Lcom/stephentuso/welcome/ui/BackgroundColor;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->addPage(Lcom/stephentuso/welcome/ui/WelcomeScreenPage;)V

    .line 55
    :cond_2
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$100(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;

    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPage;->createFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public firstPageIndex()I
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$100(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimateButtons()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$1100(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z

    move-result v0

    return v0
.end method

.method public getBackButtonNavigatesPages()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$400(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z

    move-result v0

    return v0
.end method

.method public getBackButtonSkips()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$300(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z

    move-result v0

    return v0
.end method

.method public getBackgroundColors()[Lcom/stephentuso/welcome/ui/BackgroundColor;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$100(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->getBackgroundColors()[Lcom/stephentuso/welcome/ui/BackgroundColor;

    move-result-object v0

    return-object v0
.end method

.method public getCanSkip()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$700(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$200(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDoneButtonTypefacePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$600(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitAnimation()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$1000(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)I

    move-result v0

    return v0
.end method

.method public getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$100(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getPages()Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$100(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    move-result-object v0

    return-object v0
.end method

.method public getShowActionBarBackButton()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$1500(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z

    move-result v0

    return v0
.end method

.method public getShowNextButton()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$1300(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z

    move-result v0

    return v0
.end method

.method public getShowPrevButton()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$1400(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z

    move-result v0

    return v0
.end method

.method public getSkipButtonTypefacePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$500(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeToDismiss()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$000(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z

    move-result v0

    return v0
.end method

.method public getThemeResId()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$900(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)I

    move-result v0

    return v0
.end method

.method public getUseCustomDoneButton()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$1200(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z

    move-result v0

    return v0
.end method

.method public isRtl()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$800(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z

    move-result v0

    return v0
.end method

.method public lastPageIndex()I
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$100(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public lastViewablePageIndex()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$000(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->lastPageIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->lastPageIndex()I

    move-result v0

    goto :goto_0
.end method

.method public pageCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$100(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->size()I

    move-result v0

    return v0
.end method

.method public viewablePageCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$000(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$100(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->mParameters:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;->access$100(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;->size()I

    move-result v0

    goto :goto_0
.end method
