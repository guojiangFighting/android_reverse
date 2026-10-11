.class Lcom/dodonew/online/ui/OrderBarActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "OrderBarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/ui/OrderBarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/OrderBarActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/OrderBarActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/OrderBarActivity;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/dodonew/online/ui/OrderBarActivity$6;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 328
    iget-object v2, p0, Lcom/dodonew/online/ui/OrderBarActivity$6;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/OrderBarActivity;->access$700(Lcom/dodonew/online/ui/OrderBarActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 329
    .local v0, "pos":I
    iget-object v2, p0, Lcom/dodonew/online/ui/OrderBarActivity$6;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/OrderBarActivity;->access$900(Lcom/dodonew/online/ui/OrderBarActivity;)Lcom/dodonew/online/adapter/TablePagerAdapter;

    move-result-object v2

    iget-object v3, v2, Lcom/dodonew/online/adapter/TablePagerAdapter;->hpItemHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/dodonew/online/ui/OrderBarActivity$6;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/OrderBarActivity;->access$800(Lcom/dodonew/online/ui/OrderBarActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/TableArea;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/TableArea;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/view/TableView;

    .line 330
    .local v1, "tableView":Lcom/dodonew/online/view/TableView;
    invoke-virtual {v1}, Lcom/dodonew/online/view/TableView;->refresh()V

    .line 331
    return-void
.end method
