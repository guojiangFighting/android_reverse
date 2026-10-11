.class Lcom/dodonew/online/ui/NetbarDetailActivity$2;
.super Ljava/lang/Object;
.source "NetbarDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 123
    iput-object p1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$2;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-lez p3, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$2;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    const-class v2, Lcom/dodonew/online/ui/OnlineDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "playId"

    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$2;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NetbarDetailActivity;->access$500(Lcom/dodonew/online/ui/NetbarDetailActivity;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/OnlinePlay;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/OnlinePlay;->getPlayid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/dodonew/online/ui/NetbarDetailActivity$2;->this$0:Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/ui/NetbarDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
