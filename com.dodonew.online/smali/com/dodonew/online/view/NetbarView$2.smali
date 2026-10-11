.class Lcom/dodonew/online/view/NetbarView$2;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "NetbarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/NetbarView;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/NetbarView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/NetbarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/NetbarView;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarView$2;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 3
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$2;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarView;->access$1202(Lcom/dodonew/online/view/NetbarView;I)I

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$2;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarView;->access$802(Lcom/dodonew/online/view/NetbarView;I)I

    .line 138
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$2;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarView;->access$602(Lcom/dodonew/online/view/NetbarView;Z)Z

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$2;->this$0:Lcom/dodonew/online/view/NetbarView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView$2;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v2}, Lcom/dodonew/online/view/NetbarView;->access$1200(Lcom/dodonew/online/view/NetbarView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarView;->access$1300(Lcom/dodonew/online/view/NetbarView;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 3
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$2;->this$0:Lcom/dodonew/online/view/NetbarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarView;->access$602(Lcom/dodonew/online/view/NetbarView;Z)Z

    .line 145
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$2;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$1400(Lcom/dodonew/online/view/NetbarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$2;->this$0:Lcom/dodonew/online/view/NetbarView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView$2;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarView;->access$1200(Lcom/dodonew/online/view/NetbarView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarView;->access$1202(Lcom/dodonew/online/view/NetbarView;I)I

    .line 147
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$2;->this$0:Lcom/dodonew/online/view/NetbarView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarView;->access$802(Lcom/dodonew/online/view/NetbarView;I)I

    .line 148
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$2;->this$0:Lcom/dodonew/online/view/NetbarView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView$2;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v2}, Lcom/dodonew/online/view/NetbarView;->access$1200(Lcom/dodonew/online/view/NetbarView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarView;->access$1300(Lcom/dodonew/online/view/NetbarView;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 158
    return-void
.end method
