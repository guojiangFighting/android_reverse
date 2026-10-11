.class Lcom/dodonew/online/fragment/NewsFragment$1;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/NewsFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/NewsFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/NewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/NewsFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 3
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/NewsFragment;->access$002(Lcom/dodonew/online/fragment/NewsFragment;I)I

    .line 111
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/NewsFragment;->access$102(Lcom/dodonew/online/fragment/NewsFragment;I)I

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v2}, Lcom/dodonew/online/fragment/NewsFragment;->access$000(Lcom/dodonew/online/fragment/NewsFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/NewsFragment;->access$200(Lcom/dodonew/online/fragment/NewsFragment;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    iget-object v1, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/NewsFragment;->access$300(Lcom/dodonew/online/fragment/NewsFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/NewsFragment;->access$400(Lcom/dodonew/online/fragment/NewsFragment;Ljava/util/Map;)V

    .line 114
    return-void
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 3
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NewsFragment;->access$500(Lcom/dodonew/online/fragment/NewsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    iget-object v1, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/NewsFragment;->access$000(Lcom/dodonew/online/fragment/NewsFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/NewsFragment;->access$002(Lcom/dodonew/online/fragment/NewsFragment;I)I

    .line 120
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/NewsFragment;->access$102(Lcom/dodonew/online/fragment/NewsFragment;I)I

    .line 121
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v2}, Lcom/dodonew/online/fragment/NewsFragment;->access$000(Lcom/dodonew/online/fragment/NewsFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/NewsFragment;->access$200(Lcom/dodonew/online/fragment/NewsFragment;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    iget-object v1, p0, Lcom/dodonew/online/fragment/NewsFragment$1;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/NewsFragment;->access$300(Lcom/dodonew/online/fragment/NewsFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/NewsFragment;->access$400(Lcom/dodonew/online/fragment/NewsFragment;Ljava/util/Map;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 131
    return-void
.end method
