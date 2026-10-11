.class Lcom/dodonew/online/fragment/MyOrderRechargeFragment$1;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "MyOrderRechargeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$1;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$1;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->access$002(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;I)I

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$1;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->access$102(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;I)I

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$1;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->access$200(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)V

    .line 114
    return-void
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$1;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->access$300(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$1;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    iget-object v1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$1;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->access$000(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->access$002(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;I)I

    .line 120
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$1;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->access$102(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;I)I

    .line 121
    iget-object v0, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$1;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->access$200(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 130
    return-void
.end method
