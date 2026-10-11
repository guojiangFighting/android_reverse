.class Lcom/dodonew/online/view/NetbarWelfareView$2;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "NetbarWelfareView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/NetbarWelfareView;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/NetbarWelfareView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/NetbarWelfareView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarWelfareView$2;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView$2;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$902(Lcom/dodonew/online/view/NetbarWelfareView;I)I

    .line 138
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView$2;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$1002(Lcom/dodonew/online/view/NetbarWelfareView;I)I

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView$2;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarWelfareView;->access$700(Lcom/dodonew/online/view/NetbarWelfareView;)V

    .line 140
    return-void
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView$2;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarWelfareView;->access$1100(Lcom/dodonew/online/view/NetbarWelfareView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView$2;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$2;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$900(Lcom/dodonew/online/view/NetbarWelfareView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$902(Lcom/dodonew/online/view/NetbarWelfareView;I)I

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView$2;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$1002(Lcom/dodonew/online/view/NetbarWelfareView;I)I

    .line 147
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarWelfareView$2;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarWelfareView;->access$700(Lcom/dodonew/online/view/NetbarWelfareView;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 157
    return-void
.end method
