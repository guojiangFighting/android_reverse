.class Lcom/dodonew/online/fragment/ActiveFragment$1;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "ActiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/ActiveFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/ActiveFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/ActiveFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/ActiveFragment;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 3
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/ActiveFragment;->access$002(Lcom/dodonew/online/fragment/ActiveFragment;I)I

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/ActiveFragment;->access$102(Lcom/dodonew/online/fragment/ActiveFragment;I)I

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v2}, Lcom/dodonew/online/fragment/ActiveFragment;->access$000(Lcom/dodonew/online/fragment/ActiveFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/ActiveFragment;->access$200(Lcom/dodonew/online/fragment/ActiveFragment;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    iget-object v1, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/ActiveFragment;->access$300(Lcom/dodonew/online/fragment/ActiveFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/ActiveFragment;->access$400(Lcom/dodonew/online/fragment/ActiveFragment;Ljava/util/Map;)V

    .line 115
    return-void
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 3
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/ActiveFragment;->access$500(Lcom/dodonew/online/fragment/ActiveFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    iget-object v1, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/ActiveFragment;->access$000(Lcom/dodonew/online/fragment/ActiveFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/ActiveFragment;->access$002(Lcom/dodonew/online/fragment/ActiveFragment;I)I

    .line 121
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/ActiveFragment;->access$102(Lcom/dodonew/online/fragment/ActiveFragment;I)I

    .line 122
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v2}, Lcom/dodonew/online/fragment/ActiveFragment;->access$000(Lcom/dodonew/online/fragment/ActiveFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/ActiveFragment;->access$200(Lcom/dodonew/online/fragment/ActiveFragment;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    iget-object v1, p0, Lcom/dodonew/online/fragment/ActiveFragment$1;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/ActiveFragment;->access$300(Lcom/dodonew/online/fragment/ActiveFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/ActiveFragment;->access$400(Lcom/dodonew/online/fragment/ActiveFragment;Ljava/util/Map;)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 132
    return-void
.end method
