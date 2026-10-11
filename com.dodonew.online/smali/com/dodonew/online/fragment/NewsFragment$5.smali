.class Lcom/dodonew/online/fragment/NewsFragment$5;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/NewsFragment;->setNewsAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/NewsFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/NewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/NewsFragment;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/dodonew/online/fragment/NewsFragment$5;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dodonew/online/fragment/NewsFragment$5;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-virtual {v1}, Lcom/dodonew/online/fragment/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "newsId"

    iget-object v1, p0, Lcom/dodonew/online/fragment/NewsFragment$5;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/NewsFragment;->access$1100(Lcom/dodonew/online/fragment/NewsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/News;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/News;->getNewsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/dodonew/online/fragment/NewsFragment$5;->this$0:Lcom/dodonew/online/fragment/NewsFragment;

    invoke-virtual {v1, v0}, Lcom/dodonew/online/fragment/NewsFragment;->startActivity(Landroid/content/Intent;)V

    .line 239
    return-void
.end method
