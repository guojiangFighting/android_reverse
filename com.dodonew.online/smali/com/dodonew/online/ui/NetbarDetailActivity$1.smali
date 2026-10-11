.class Lcom/dodonew/online/ui/NetbarDetailActivity$1;
.super Ljava/lang/Object;
.source "NetbarDetailActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/NetbarDetailActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/NetbarDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/NetbarDetailActivity;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$1;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 121
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$1;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$000(Lcom/dodonew/online/ui/NetbarDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$1;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$1;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$100(Lcom/dodonew/online/ui/NetbarDetailActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$102(Lcom/dodonew/online/ui/NetbarDetailActivity;I)I

    .line 111
    iget-object v0, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$1;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$1;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$200(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$1;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$300(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$1;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v4}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$100(Lcom/dodonew/online/ui/NetbarDetailActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$400(Lcom/dodonew/online/ui/NetbarDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method
