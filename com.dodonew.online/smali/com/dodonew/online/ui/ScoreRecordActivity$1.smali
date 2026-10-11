.class Lcom/dodonew/online/ui/ScoreRecordActivity$1;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "ScoreRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ScoreRecordActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ScoreRecordActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ScoreRecordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ScoreRecordActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dodonew/online/ui/ScoreRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ScoreRecordActivity;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ScoreRecordActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ScoreRecordActivity;->access$002(Lcom/dodonew/online/ui/ScoreRecordActivity;I)I

    .line 84
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ScoreRecordActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ScoreRecordActivity;->access$102(Lcom/dodonew/online/ui/ScoreRecordActivity;I)I

    .line 85
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ScoreRecordActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->access$200(Lcom/dodonew/online/ui/ScoreRecordActivity;)V

    .line 86
    return-void
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ScoreRecordActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->access$300(Lcom/dodonew/online/ui/ScoreRecordActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ScoreRecordActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/ScoreRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ScoreRecordActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ScoreRecordActivity;->access$000(Lcom/dodonew/online/ui/ScoreRecordActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ScoreRecordActivity;->access$002(Lcom/dodonew/online/ui/ScoreRecordActivity;I)I

    .line 92
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ScoreRecordActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/ScoreRecordActivity;->access$102(Lcom/dodonew/online/ui/ScoreRecordActivity;I)I

    .line 93
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ScoreRecordActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ScoreRecordActivity;->access$200(Lcom/dodonew/online/ui/ScoreRecordActivity;)V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ScoreRecordActivity$1;->this$0:Lcom/dodonew/online/ui/ScoreRecordActivity;

    const-string v1, "\u5df2\u5168\u90e8\u52a0\u8f7d\u5b8c\u6210."

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/ScoreRecordActivity;->showToast(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 103
    return-void
.end method
