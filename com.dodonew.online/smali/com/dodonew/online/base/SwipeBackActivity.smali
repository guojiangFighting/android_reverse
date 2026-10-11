.class public Lcom/dodonew/online/base/SwipeBackActivity;
.super Lcom/dodonew/online/base/ProgressActivity;
.source "SwipeBackActivity.java"

# interfaces
.implements Lcom/dodonew/online/base/SwipeBackActivityBase;


# instance fields
.field private mHelper:Lcom/dodonew/online/base/SwipeBackActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/dodonew/online/base/ProgressActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/dodonew/online/base/ProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/base/SwipeBackActivity;->mHelper:Lcom/dodonew/online/base/SwipeBackActivityHelper;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/dodonew/online/base/SwipeBackActivity;->mHelper:Lcom/dodonew/online/base/SwipeBackActivityHelper;

    invoke-virtual {v1, p1}, Lcom/dodonew/online/base/SwipeBackActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method public getSwipeBackLayout()Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivity;->mHelper:Lcom/dodonew/online/base/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lcom/dodonew/online/base/SwipeBackActivityHelper;->getSwipeBackLayout()Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/dodonew/online/base/ProgressActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v0, Lcom/dodonew/online/base/SwipeBackActivityHelper;

    invoke-direct {v0, p0}, Lcom/dodonew/online/base/SwipeBackActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivity;->mHelper:Lcom/dodonew/online/base/SwipeBackActivityHelper;

    .line 23
    iget-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivity;->mHelper:Lcom/dodonew/online/base/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lcom/dodonew/online/base/SwipeBackActivityHelper;->onActivityCreate()V

    .line 24
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/dodonew/online/base/ProgressActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 29
    iget-object v0, p0, Lcom/dodonew/online/base/SwipeBackActivity;->mHelper:Lcom/dodonew/online/base/SwipeBackActivityHelper;

    invoke-virtual {v0}, Lcom/dodonew/online/base/SwipeBackActivityHelper;->onPostCreate()V

    .line 30
    return-void
.end method

.method public scrollToFinishActivity()V
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->convertActivityToTranslucent(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p0}, Lcom/dodonew/online/base/SwipeBackActivity;->getSwipeBackLayout()Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->scrollToFinishActivity()V

    .line 54
    return-void
.end method

.method public setSwipeBackEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/dodonew/online/base/SwipeBackActivity;->getSwipeBackLayout()Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->setEnableGesture(Z)V

    .line 48
    return-void
.end method
