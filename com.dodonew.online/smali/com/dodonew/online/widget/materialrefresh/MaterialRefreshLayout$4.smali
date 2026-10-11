.class Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$4;
.super Ljava/lang/Object;
.source "MaterialRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setHeaderView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field final synthetic val$headerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$4;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object p2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$4;->val$headerView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$4;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iget-object v0, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$4;->val$headerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 516
    return-void
.end method
