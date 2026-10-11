.class public abstract Lcom/dodonew/online/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected isVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract lazyLoad()V
.end method

.method protected onInvisible()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method protected onVisible()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/dodonew/online/base/BaseFragment;->lazyLoad()V

    .line 33
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/dodonew/online/base/BaseFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/base/BaseFragment;->isVisible:Z

    .line 21
    invoke-virtual {p0}, Lcom/dodonew/online/base/BaseFragment;->onVisible()V

    .line 26
    :goto_0
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/base/BaseFragment;->isVisible:Z

    .line 24
    invoke-virtual {p0}, Lcom/dodonew/online/base/BaseFragment;->onInvisible()V

    goto :goto_0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/dodonew/online/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/base/ProgressActivity;->showToast(Ljava/lang/String;)V

    .line 51
    return-void
.end method
