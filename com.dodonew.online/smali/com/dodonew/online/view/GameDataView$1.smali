.class Lcom/dodonew/online/view/GameDataView$1;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "GameDataView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/GameDataView;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/GameDataView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/GameDataView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/dodonew/online/view/GameDataView$1;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView$1;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-static {v0, v1}, Lcom/dodonew/online/view/GameDataView;->access$002(Lcom/dodonew/online/view/GameDataView;I)I

    .line 99
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView$1;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-static {v0, v1}, Lcom/dodonew/online/view/GameDataView;->access$102(Lcom/dodonew/online/view/GameDataView;I)I

    .line 100
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView$1;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-virtual {v0}, Lcom/dodonew/online/view/GameDataView;->queryGameById()V

    .line 101
    return-void
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 3
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView$1;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-static {v0}, Lcom/dodonew/online/view/GameDataView;->access$200(Lcom/dodonew/online/view/GameDataView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView$1;->this$0:Lcom/dodonew/online/view/GameDataView;

    iget-object v1, p0, Lcom/dodonew/online/view/GameDataView$1;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-static {v1}, Lcom/dodonew/online/view/GameDataView;->access$000(Lcom/dodonew/online/view/GameDataView;)I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/view/GameDataView$1;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-static {v2}, Lcom/dodonew/online/view/GameDataView;->access$300(Lcom/dodonew/online/view/GameDataView;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/dodonew/online/view/GameDataView;->access$002(Lcom/dodonew/online/view/GameDataView;I)I

    .line 107
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView$1;->this$0:Lcom/dodonew/online/view/GameDataView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/view/GameDataView;->access$102(Lcom/dodonew/online/view/GameDataView;I)I

    .line 108
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView$1;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-virtual {v0}, Lcom/dodonew/online/view/GameDataView;->queryGameById()V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 117
    return-void
.end method
