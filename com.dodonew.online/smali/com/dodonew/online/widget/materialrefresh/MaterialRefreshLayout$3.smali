.class Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$3;
.super Ljava/lang/Object;
.source "MaterialRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$3;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$3;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->access$000(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$3;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->access$100(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$3;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->access$102(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;Z)Z

    .line 504
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$3;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->access$000(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$3;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->onComlete(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V

    .line 506
    :cond_0
    return-void
.end method
