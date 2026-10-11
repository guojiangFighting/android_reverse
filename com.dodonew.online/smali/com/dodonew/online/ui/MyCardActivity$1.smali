.class Lcom/dodonew/online/ui/MyCardActivity$1;
.super Ljava/lang/Object;
.source "MyCardActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyCardActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyCardActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyCardActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dodonew/online/ui/MyCardActivity$1;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

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
    .line 81
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/dodonew/online/ui/MyCardActivity$1;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/MyCardActivity;->access$000(Lcom/dodonew/online/ui/MyCardActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Card;

    .line 82
    .local v0, "card":Lcom/dodonew/online/bean/Card;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyCardActivity$1;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    const-class v3, Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "domainId"

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->getDomainID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v2, "netBarId"

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Card;->getNetBarID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v2, "location"

    const-string v3, "123232,999"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v2, "cards"

    iget-object v3, p0, Lcom/dodonew/online/ui/MyCardActivity$1;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/MyCardActivity;->access$000(Lcom/dodonew/online/ui/MyCardActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 87
    iget-object v2, p0, Lcom/dodonew/online/ui/MyCardActivity$1;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-virtual {v2, v1}, Lcom/dodonew/online/ui/MyCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method
