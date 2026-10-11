.class Lcom/dodonew/online/ui/MyActiveActivity$1;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "MyActiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyActiveActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyActiveActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyActiveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyActiveActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/dodonew/online/ui/MyActiveActivity$1;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity$1;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyActiveActivity;->access$002(Lcom/dodonew/online/ui/MyActiveActivity;I)I

    .line 90
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity$1;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyActiveActivity;->access$102(Lcom/dodonew/online/ui/MyActiveActivity;I)I

    .line 91
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity$1;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyActiveActivity;->access$200(Lcom/dodonew/online/ui/MyActiveActivity;)V

    .line 92
    return-void
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity$1;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyActiveActivity;->access$300(Lcom/dodonew/online/ui/MyActiveActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity$1;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyActiveActivity$1;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/MyActiveActivity;->access$000(Lcom/dodonew/online/ui/MyActiveActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyActiveActivity;->access$002(Lcom/dodonew/online/ui/MyActiveActivity;I)I

    .line 98
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity$1;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyActiveActivity;->access$102(Lcom/dodonew/online/ui/MyActiveActivity;I)I

    .line 99
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity$1;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyActiveActivity;->access$200(Lcom/dodonew/online/ui/MyActiveActivity;)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity$1;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    const-string v1, "\u6ca1\u6709\u66f4\u591a"

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/MyActiveActivity;->showToast(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 109
    return-void
.end method
