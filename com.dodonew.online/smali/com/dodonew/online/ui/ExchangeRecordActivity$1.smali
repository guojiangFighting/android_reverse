.class Lcom/dodonew/online/ui/ExchangeRecordActivity$1;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "ExchangeRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ExchangeRecordActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ExchangeRecordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ExchangeRecordActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->access$002(Lcom/dodonew/online/ui/ExchangeRecordActivity;I)I

    .line 88
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->access$102(Lcom/dodonew/online/ui/ExchangeRecordActivity;I)I

    .line 89
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->access$200(Lcom/dodonew/online/ui/ExchangeRecordActivity;)V

    .line 90
    return-void
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->access$300(Lcom/dodonew/online/ui/ExchangeRecordActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->access$000(Lcom/dodonew/online/ui/ExchangeRecordActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->access$002(Lcom/dodonew/online/ui/ExchangeRecordActivity;I)I

    .line 96
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->access$102(Lcom/dodonew/online/ui/ExchangeRecordActivity;I)I

    .line 97
    iget-object v0, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ExchangeRecordActivity;->access$200(Lcom/dodonew/online/ui/ExchangeRecordActivity;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 106
    return-void
.end method
