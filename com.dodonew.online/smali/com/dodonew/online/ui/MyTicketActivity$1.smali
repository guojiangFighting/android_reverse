.class Lcom/dodonew/online/ui/MyTicketActivity$1;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "MyTicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyTicketActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyTicketActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyTicketActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyTicketActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dodonew/online/ui/MyTicketActivity$1;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity$1;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyTicketActivity;->access$002(Lcom/dodonew/online/ui/MyTicketActivity;I)I

    .line 109
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity$1;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyTicketActivity;->access$102(Lcom/dodonew/online/ui/MyTicketActivity;I)I

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity$1;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyTicketActivity;->access$200(Lcom/dodonew/online/ui/MyTicketActivity;)V

    .line 111
    return-void
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity$1;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyTicketActivity;->access$300(Lcom/dodonew/online/ui/MyTicketActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity$1;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyTicketActivity$1;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/MyTicketActivity;->access$000(Lcom/dodonew/online/ui/MyTicketActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyTicketActivity;->access$002(Lcom/dodonew/online/ui/MyTicketActivity;I)I

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity$1;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyTicketActivity;->access$102(Lcom/dodonew/online/ui/MyTicketActivity;I)I

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/ui/MyTicketActivity$1;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyTicketActivity;->access$200(Lcom/dodonew/online/ui/MyTicketActivity;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 128
    return-void
.end method
