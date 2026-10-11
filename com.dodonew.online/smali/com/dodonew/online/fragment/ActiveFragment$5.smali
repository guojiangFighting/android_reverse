.class Lcom/dodonew/online/fragment/ActiveFragment$5;
.super Ljava/lang/Object;
.source "ActiveFragment.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/ActiveFragment;->setAdapter()V
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
    .line 225
    iput-object p1, p0, Lcom/dodonew/online/fragment/ActiveFragment$5;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 228
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dodonew/online/fragment/ActiveFragment$5;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-virtual {v1}, Lcom/dodonew/online/fragment/ActiveFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/ActiveDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "actId"

    iget-object v1, p0, Lcom/dodonew/online/fragment/ActiveFragment$5;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/ActiveFragment;->access$1100(Lcom/dodonew/online/fragment/ActiveFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Active;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Active;->getActid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/dodonew/online/fragment/ActiveFragment$5;->this$0:Lcom/dodonew/online/fragment/ActiveFragment;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/fragment/ActiveFragment;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method
