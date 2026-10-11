.class public Lcom/dodonew/online/base/BaseActivity;
.super Lcom/dodonew/online/base/SwipeBackActivity;
.source "BaseActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mSwipeBackLayout:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

.field protected mUseImmerse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/dodonew/online/base/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/base/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/dodonew/online/base/SwipeBackActivity;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/base/BaseActivity;->mUseImmerse:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/dodonew/online/base/BaseActivity;->requestWindowFeature(I)Z

    .line 20
    invoke-super {p0, p1}, Lcom/dodonew/online/base/SwipeBackActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/dodonew/online/base/BaseActivity;->getSwipeBackLayout()Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/base/BaseActivity;->mSwipeBackLayout:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    .line 22
    const/4 v0, 0x1

    .line 23
    .local v0, "edgeFlag":I
    iget-object v1, p0, Lcom/dodonew/online/base/BaseActivity;->mSwipeBackLayout:Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/widget/swipeback/SwipeBackLayout;->setEdgeTrackingEnabled(I)V

    .line 24
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/dodonew/online/base/SwipeBackActivity;->setContentView(I)V

    .line 31
    return-void
.end method
