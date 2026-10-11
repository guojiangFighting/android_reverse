.class Lcom/dodonew/online/view/NetbarView$1;
.super Ljava/lang/Object;
.source "NetbarView.java"

# interfaces
.implements Lcom/dodonew/online/view/PopView$OnItemClickListener;


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
    .line 117
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemClick(I)V
    .locals 6
    .param p1, "pos"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$000(Lcom/dodonew/online/view/NetbarView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "area"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$200(Lcom/dodonew/online/view/NetbarView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dodonew/online/view/NetbarView;->access$102(Lcom/dodonew/online/view/NetbarView;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$300(Lcom/dodonew/online/view/NetbarView;)V

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarView;->access$602(Lcom/dodonew/online/view/NetbarView;Z)Z

    .line 128
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$700(Lcom/dodonew/online/view/NetbarView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->showProgress()V

    .line 129
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/view/NetbarView;->access$802(Lcom/dodonew/online/view/NetbarView;I)I

    .line 130
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarView;->access$900(Lcom/dodonew/online/view/NetbarView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v3}, Lcom/dodonew/online/view/NetbarView;->access$400(Lcom/dodonew/online/view/NetbarView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v4}, Lcom/dodonew/online/view/NetbarView;->access$1000(Lcom/dodonew/online/view/NetbarView;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static/range {v0 .. v5}, Lcom/dodonew/online/view/NetbarView;->access$1100(Lcom/dodonew/online/view/NetbarView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$000(Lcom/dodonew/online/view/NetbarView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sort"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$200(Lcom/dodonew/online/view/NetbarView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dodonew/online/view/NetbarView;->access$402(Lcom/dodonew/online/view/NetbarView;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarView$1;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v0}, Lcom/dodonew/online/view/NetbarView;->access$500(Lcom/dodonew/online/view/NetbarView;)V

    goto :goto_0
.end method
