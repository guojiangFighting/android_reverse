.class Lcom/dodonew/online/view/NetbarWelfareView$7;
.super Ljava/lang/Object;
.source "NetbarWelfareView.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/NetbarWelfareView;->setMyActiveAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/NetbarWelfareView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/NetbarWelfareView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarWelfareView$7;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$7;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$1400(Lcom/dodonew/online/view/NetbarWelfareView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/OnlineDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "playId"

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$7;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$500(Lcom/dodonew/online/view/NetbarWelfareView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/MyActive;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/MyActive;->getPlayid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$7;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$1400(Lcom/dodonew/online/view/NetbarWelfareView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 270
    return-void
.end method
