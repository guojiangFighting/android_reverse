.class public abstract Lcom/stephentuso/welcome/ui/WelcomeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stephentuso/welcome/ui/WelcomeActivity$WelcomeFragmentPagerAdapter;,
        Lcom/stephentuso/welcome/ui/WelcomeActivity$OnCompleteWelcomeListener;
    }
.end annotation


# static fields
.field public static final WELCOME_SCREEN_KEY:Ljava/lang/String; = "welcome_screen_key"


# instance fields
.field mAdapter:Lcom/stephentuso/welcome/ui/WelcomeActivity$WelcomeFragmentPagerAdapter;

.field mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

.field mItems:Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;

.field mOnCompleteWelcomeListener:Lcom/stephentuso/welcome/ui/WelcomeActivity$OnCompleteWelcomeListener;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;

    invoke-direct {v0, v1}, Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;-><init>([Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;)V

    iput-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mItems:Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/stephentuso/welcome/ui/WelcomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/ui/WelcomeActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->scrollToPreviousPage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/stephentuso/welcome/ui/WelcomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/stephentuso/welcome/ui/WelcomeActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->scrollToNextPage()Z

    move-result v0

    return v0
.end method

.method private canScrollToNextPage()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    iget-object v2, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v2}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->getNextPageIndex()I

    move-result v2

    iget-object v3, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v3}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->lastViewablePageIndex()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->getNextPageIndex()I

    move-result v2

    iget-object v3, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v3}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->lastViewablePageIndex()I

    move-result v3

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private canScrollToPreviousPage()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    iget-object v2, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v2}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->getPreviousPageIndex()I

    move-result v2

    iget-object v3, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v3}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->firstPageIndex()I

    move-result v3

    if-gt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->getPreviousPageIndex()I

    move-result v2

    iget-object v3, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v3}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->firstPageIndex()I

    move-result v3

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/stephentuso/welcome/util/WelcomeUtils;->getKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNextPageIndex()I
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getPreviousPageIndex()I
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private scrollToNextPage()Z
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->canScrollToNextPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->getNextPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 117
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private scrollToPreviousPage()Z
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->canScrollToPreviousPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->getPreviousPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 124
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setWelcomeScreenResult(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "welcome_screen_key"

    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, p1, v0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->setResult(ILandroid/content/Intent;)V

    .line 201
    return-void
.end method


# virtual methods
.method protected cancelWelcomeScreen()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->setWelcomeScreenResult(I)V

    .line 163
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 164
    return-void
.end method

.method protected completeWelcomeScreen()V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stephentuso/welcome/util/SharedPreferencesHelper;->storeWelcomeCompleted(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mOnCompleteWelcomeListener:Lcom/stephentuso/welcome/ui/WelcomeActivity$OnCompleteWelcomeListener;

    invoke-interface {v0}, Lcom/stephentuso/welcome/ui/WelcomeActivity$OnCompleteWelcomeListener;->onComplete()V

    .line 152
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 153
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getExitAnimation()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 154
    sget v0, Lcom/stephentuso/welcome/R$anim;->none:I

    iget-object v1, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getExitAnimation()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->overridePendingTransition(II)V

    .line 155
    :cond_0
    return-void
.end method

.method protected abstract configuration()Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "scrolledBack":Z
    iget-object v1, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v1}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getBackButtonNavigatesPages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->scrollToPreviousPage()Z

    move-result v0

    .line 174
    :cond_0
    if-nez v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->cancelWelcomeScreen()V

    .line 184
    :cond_1
    return-void
.end method

.method protected abstract onCompleteWelcomeListener()Lcom/stephentuso/welcome/ui/WelcomeActivity$OnCompleteWelcomeListener;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .line 33
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->configuration()Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    move-result-object v8

    iput-object v8, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    .line 34
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->onCompleteWelcomeListener()Lcom/stephentuso/welcome/ui/WelcomeActivity$OnCompleteWelcomeListener;

    move-result-object v8

    iput-object v8, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mOnCompleteWelcomeListener:Lcom/stephentuso/welcome/ui/WelcomeActivity$OnCompleteWelcomeListener;

    .line 36
    iget-object v8, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v8}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getThemeResId()I

    move-result v8

    invoke-super {p0, v8}, Landroid/support/v7/app/AppCompatActivity;->setTheme(I)V

    .line 41
    const/4 v8, 0x0

    invoke-super {p0, v8}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v8, Lcom/stephentuso/welcome/R$layout;->activity_welcome_:I

    invoke-virtual {p0, v8}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->setContentView(I)V

    .line 44
    new-instance v8, Lcom/stephentuso/welcome/ui/WelcomeActivity$WelcomeFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/stephentuso/welcome/ui/WelcomeActivity$WelcomeFragmentPagerAdapter;-><init>(Lcom/stephentuso/welcome/ui/WelcomeActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v8, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mAdapter:Lcom/stephentuso/welcome/ui/WelcomeActivity$WelcomeFragmentPagerAdapter;

    .line 46
    sget v8, Lcom/stephentuso/welcome/R$id;->view_pager:I

    invoke-virtual {p0, v8}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    iput-object v8, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 47
    iget-object v8, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mAdapter:Lcom/stephentuso/welcome/ui/WelcomeActivity$WelcomeFragmentPagerAdapter;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 49
    iget-object v8, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v8}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getShowActionBarBackButton()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 51
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, v11}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    :cond_0
    new-instance v7, Lcom/stephentuso/welcome/ui/SkipButton;

    sget v8, Lcom/stephentuso/welcome/R$id;->button_skip:I

    invoke-virtual {p0, v8}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v9}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getCanSkip()Z

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/stephentuso/welcome/ui/SkipButton;-><init>(Landroid/view/View;Z)V

    .line 56
    .local v7, "skip":Lcom/stephentuso/welcome/ui/SkipButton;
    new-instance v8, Lcom/stephentuso/welcome/ui/WelcomeActivity$1;

    invoke-direct {v8, p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity$1;-><init>(Lcom/stephentuso/welcome/ui/WelcomeActivity;)V

    invoke-virtual {v7, v8}, Lcom/stephentuso/welcome/ui/SkipButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v6, Lcom/stephentuso/welcome/ui/PreviousButton;

    sget v8, Lcom/stephentuso/welcome/R$id;->button_prev:I

    invoke-virtual {p0, v8}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/stephentuso/welcome/ui/PreviousButton;-><init>(Landroid/view/View;)V

    .line 64
    .local v6, "prev":Lcom/stephentuso/welcome/ui/PreviousButton;
    new-instance v8, Lcom/stephentuso/welcome/ui/WelcomeActivity$2;

    invoke-direct {v8, p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity$2;-><init>(Lcom/stephentuso/welcome/ui/WelcomeActivity;)V

    invoke-virtual {v6, v8}, Lcom/stephentuso/welcome/ui/PreviousButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v5, Lcom/stephentuso/welcome/ui/NextButton;

    sget v8, Lcom/stephentuso/welcome/R$id;->button_next:I

    invoke-virtual {p0, v8}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/stephentuso/welcome/ui/NextButton;-><init>(Landroid/view/View;)V

    .line 72
    .local v5, "next":Lcom/stephentuso/welcome/ui/NextButton;
    new-instance v8, Lcom/stephentuso/welcome/ui/WelcomeActivity$3;

    invoke-direct {v8, p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity$3;-><init>(Lcom/stephentuso/welcome/ui/WelcomeActivity;)V

    invoke-virtual {v5, v8}, Lcom/stephentuso/welcome/ui/NextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v2, Lcom/stephentuso/welcome/ui/DoneButton;

    sget v8, Lcom/stephentuso/welcome/R$id;->button_done:I

    invoke-virtual {p0, v8}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/stephentuso/welcome/ui/DoneButton;-><init>(Landroid/view/View;)V

    .line 80
    .local v2, "done":Lcom/stephentuso/welcome/ui/DoneButton;
    new-instance v8, Lcom/stephentuso/welcome/ui/WelcomeActivity$4;

    invoke-direct {v8, p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity$4;-><init>(Lcom/stephentuso/welcome/ui/WelcomeActivity;)V

    invoke-virtual {v2, v8}, Lcom/stephentuso/welcome/ui/DoneButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v8, Lcom/stephentuso/welcome/R$id;->pager_indicator:I

    invoke-virtual {p0, v8}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/stephentuso/welcome/ui/view/WelcomeScreenViewPagerIndicator;

    .line 88
    .local v4, "indicator":Lcom/stephentuso/welcome/ui/view/WelcomeScreenViewPagerIndicator;
    sget v8, Lcom/stephentuso/welcome/R$id;->background_view:I

    invoke-virtual {p0, v8}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/stephentuso/welcome/ui/view/WelcomeScreenBackgroundView;

    .line 90
    .local v1, "background":Lcom/stephentuso/welcome/ui/view/WelcomeScreenBackgroundView;
    new-instance v3, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;

    sget v8, Lcom/stephentuso/welcome/R$id;->root:I

    invoke-virtual {p0, v8}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;-><init>(Landroid/view/View;)V

    .line 91
    .local v3, "hider":Lcom/stephentuso/welcome/ui/WelcomeScreenHider;
    new-instance v8, Lcom/stephentuso/welcome/ui/WelcomeActivity$5;

    invoke-direct {v8, p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity$5;-><init>(Lcom/stephentuso/welcome/ui/WelcomeActivity;)V

    invoke-virtual {v3, v8}, Lcom/stephentuso/welcome/ui/WelcomeScreenHider;->setOnViewHiddenListener(Lcom/stephentuso/welcome/ui/WelcomeScreenHider$OnViewHiddenListener;)V

    .line 98
    new-instance v8, Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    aput-object v4, v9, v11

    const/4 v10, 0x2

    aput-object v7, v9, v10

    const/4 v10, 0x3

    aput-object v6, v9, v10

    const/4 v10, 0x4

    aput-object v5, v9, v10

    const/4 v10, 0x5

    aput-object v2, v9, v10

    const/4 v10, 0x6

    aput-object v3, v9, v10

    const/4 v10, 0x7

    iget-object v11, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v11}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getPages()Lcom/stephentuso/welcome/ui/WelcomeScreenPageList;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v8, v9}, Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;-><init>([Lcom/stephentuso/welcome/ui/OnWelcomeScreenPageChangeListener;)V

    iput-object v8, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mItems:Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;

    .line 99
    iget-object v8, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mItems:Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 100
    iget-object v8, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v9}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->firstPageIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 101
    iget-object v8, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mItems:Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;

    iget-object v9, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v8, v9}, Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;->setup(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V

    .line 102
    iget-object v8, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mItems:Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;

    iget-object v9, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/stephentuso/welcome/ui/WelcomeScreenItemList;->onPageSelected(I)V

    .line 103
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->clearOnPageChangeListeners()V

    .line 111
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/stephentuso/welcome/ui/WelcomeActivity;->mConfiguration:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-virtual {v0}, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;->getShowActionBarBackButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/stephentuso/welcome/ui/WelcomeActivity;->cancelWelcomeScreen()V

    .line 191
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
