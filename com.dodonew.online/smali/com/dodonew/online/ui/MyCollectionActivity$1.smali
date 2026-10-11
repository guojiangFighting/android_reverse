.class Lcom/dodonew/online/ui/MyCollectionActivity$1;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "MyCollectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyCollectionActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyCollectionActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyCollectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyCollectionActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/dodonew/online/ui/MyCollectionActivity$1;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$1;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$002(Lcom/dodonew/online/ui/MyCollectionActivity;I)I

    .line 92
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$1;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$102(Lcom/dodonew/online/ui/MyCollectionActivity;I)I

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->setLoadMore(Z)V

    .line 94
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$1;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$200(Lcom/dodonew/online/ui/MyCollectionActivity;)V

    .line 95
    return-void
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$1;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$300(Lcom/dodonew/online/ui/MyCollectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$1;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/MyCollectionActivity$1;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$000(Lcom/dodonew/online/ui/MyCollectionActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$002(Lcom/dodonew/online/ui/MyCollectionActivity;I)I

    .line 101
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$1;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$102(Lcom/dodonew/online/ui/MyCollectionActivity;I)I

    .line 102
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCollectionActivity$1;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyCollectionActivity;->access$200(Lcom/dodonew/online/ui/MyCollectionActivity;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 111
    return-void
.end method
