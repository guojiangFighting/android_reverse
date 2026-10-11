.class Lcom/dodonew/online/ui/MyGuessActivity$1;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "MyGuessActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyGuessActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyGuessActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyGuessActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyGuessActivity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/dodonew/online/ui/MyGuessActivity$1;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity$1;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyGuessActivity;->access$002(Lcom/dodonew/online/ui/MyGuessActivity;I)I

    .line 94
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity$1;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyGuessActivity;->access$102(Lcom/dodonew/online/ui/MyGuessActivity;I)I

    .line 95
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity$1;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyGuessActivity;->access$200(Lcom/dodonew/online/ui/MyGuessActivity;)V

    .line 96
    return-void
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity$1;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyGuessActivity;->access$300(Lcom/dodonew/online/ui/MyGuessActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity$1;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyGuessActivity$1;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/MyGuessActivity;->access$000(Lcom/dodonew/online/ui/MyGuessActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyGuessActivity;->access$002(Lcom/dodonew/online/ui/MyGuessActivity;I)I

    .line 102
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity$1;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyGuessActivity;->access$102(Lcom/dodonew/online/ui/MyGuessActivity;I)I

    .line 103
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity$1;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyGuessActivity;->access$200(Lcom/dodonew/online/ui/MyGuessActivity;)V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyGuessActivity$1;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    const-string v1, "\u5df2\u5168\u90e8\u52a0\u8f7d\u5b8c\u6210."

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/MyGuessActivity;->showToast(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 113
    return-void
.end method
