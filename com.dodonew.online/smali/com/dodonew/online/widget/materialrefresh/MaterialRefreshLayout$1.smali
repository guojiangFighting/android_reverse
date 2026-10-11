.class Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$1;
.super Ljava/lang/Object;
.source "MaterialRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->createAnimatorTranslationY(Landroid/view/View;FLandroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

.field final synthetic val$fl:Landroid/widget/FrameLayout;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$1;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    iput-object p2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$1;->val$fl:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 401
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$1;->val$v:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    .line 402
    .local v0, "height":F
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$1;->val$fl:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    float-to-int v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 403
    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$1;->val$fl:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 404
    return-void
.end method
