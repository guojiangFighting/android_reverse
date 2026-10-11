.class public Lcom/dodonew/online/base/TitleActivity;
.super Lcom/dodonew/online/base/BaseActivity;
.source "TitleActivity.java"


# instance fields
.field private contentView:Landroid/widget/FrameLayout;

.field public rootView:Landroid/view/View;

.field public toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dodonew/online/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f0d0125

    invoke-virtual {p0, v0}, Lcom/dodonew/online/base/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/dodonew/online/base/TitleActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 36
    const v0, 0x7f0d0124

    invoke-virtual {p0, v0}, Lcom/dodonew/online/base/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/base/TitleActivity;->rootView:Landroid/view/View;

    .line 37
    const v0, 0x7f0d0126

    invoke-virtual {p0, v0}, Lcom/dodonew/online/base/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dodonew/online/base/TitleActivity;->contentView:Landroid/widget/FrameLayout;

    .line 38
    iget-object v0, p0, Lcom/dodonew/online/base/TitleActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/base/TitleActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected enterFromBottomAnimation()V
    .locals 2

    .prologue
    .line 94
    const v0, 0x7f04000e

    const v1, 0x7f04000d

    invoke-virtual {p0, v0, v1}, Lcom/dodonew/online/base/TitleActivity;->overridePendingTransition(II)V

    .line 95
    return-void
.end method

.method protected exitToBottomAnimation()V
    .locals 2

    .prologue
    .line 98
    const v0, 0x7f04000d

    const v1, 0x7f04000a

    invoke-virtual {p0, v0, v1}, Lcom/dodonew/online/base/TitleActivity;->overridePendingTransition(II)V

    .line 99
    return-void
.end method

.method protected navigationOnClick()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/base/TitleActivity;->setContentView(Landroid/view/View;)V

    .line 23
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 27
    const v0, 0x7f030049

    invoke-super {p0, v0}, Lcom/dodonew/online/base/BaseActivity;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;->initView()V

    .line 29
    iget-object v0, p0, Lcom/dodonew/online/base/TitleActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 31
    return-void
.end method

.method public setNavigationIcon()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/dodonew/online/base/TitleActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/dodonew/online/base/TitleActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/dodonew/online/base/TitleActivity$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/base/TitleActivity$2;-><init>(Lcom/dodonew/online/base/TitleActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/dodonew/online/base/TitleActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/dodonew/online/base/TitleActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/dodonew/online/base/TitleActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/base/TitleActivity$1;-><init>(Lcom/dodonew/online/base/TitleActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/dodonew/online/base/TitleActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
