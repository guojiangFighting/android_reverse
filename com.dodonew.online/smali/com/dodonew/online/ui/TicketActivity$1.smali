.class Lcom/dodonew/online/ui/TicketActivity$1;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "TicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/TicketActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/TicketActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/TicketActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/TicketActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 6
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/TicketActivity;->access$002(Lcom/dodonew/online/ui/TicketActivity;I)I

    .line 101
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/TicketActivity;->access$102(Lcom/dodonew/online/ui/TicketActivity;I)I

    .line 102
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/TicketActivity;->access$200(Lcom/dodonew/online/ui/TicketActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/TicketActivity;->access$300(Lcom/dodonew/online/ui/TicketActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/TicketActivity;->access$400(Lcom/dodonew/online/ui/TicketActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v5}, Lcom/dodonew/online/ui/TicketActivity;->access$000(Lcom/dodonew/online/ui/TicketActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dodonew/online/ui/TicketActivity;->access$500(Lcom/dodonew/online/ui/TicketActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 6
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/TicketActivity;->access$600(Lcom/dodonew/online/ui/TicketActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/TicketActivity;->access$000(Lcom/dodonew/online/ui/TicketActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/TicketActivity;->access$002(Lcom/dodonew/online/ui/TicketActivity;I)I

    .line 109
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/TicketActivity;->access$102(Lcom/dodonew/online/ui/TicketActivity;I)I

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/TicketActivity;->access$200(Lcom/dodonew/online/ui/TicketActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/TicketActivity;->access$300(Lcom/dodonew/online/ui/TicketActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/TicketActivity;->access$400(Lcom/dodonew/online/ui/TicketActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dodonew/online/ui/TicketActivity$1;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v5}, Lcom/dodonew/online/ui/TicketActivity;->access$000(Lcom/dodonew/online/ui/TicketActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dodonew/online/ui/TicketActivity;->access$500(Lcom/dodonew/online/ui/TicketActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 120
    return-void
.end method
