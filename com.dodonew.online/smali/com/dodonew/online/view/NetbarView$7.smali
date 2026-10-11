.class Lcom/dodonew/online/view/NetbarView$7;
.super Ljava/lang/Object;
.source "NetbarView.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/NetbarView;->setNetBarAdapter()V
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
    .line 344
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarView$7;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 347
    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView$7;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v2}, Lcom/dodonew/online/view/NetbarView;->access$2100(Lcom/dodonew/online/view/NetbarView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/NetBar;

    .line 348
    .local v1, "netBar":Lcom/dodonew/online/bean/NetBar;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView$7;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v2}, Lcom/dodonew/online/view/NetbarView;->access$700(Lcom/dodonew/online/view/NetbarView;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "netBarId"

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v2, "domainId"

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v2, "location"

    iget-object v3, p0, Lcom/dodonew/online/view/NetbarView$7;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v3}, Lcom/dodonew/online/view/NetbarView;->access$900(Lcom/dodonew/online/view/NetbarView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object v2, p0, Lcom/dodonew/online/view/NetbarView$7;->this$0:Lcom/dodonew/online/view/NetbarView;

    invoke-static {v2}, Lcom/dodonew/online/view/NetbarView;->access$700(Lcom/dodonew/online/view/NetbarView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 353
    return-void
.end method
