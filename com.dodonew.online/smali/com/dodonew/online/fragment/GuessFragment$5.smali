.class Lcom/dodonew/online/fragment/GuessFragment$5;
.super Ljava/lang/Object;
.source "GuessFragment.java"

# interfaces
.implements Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/GuessFragment;->setGuessAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/GuessFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/GuessFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/GuessFragment;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/dodonew/online/fragment/GuessFragment$5;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderClick(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "header"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "headerId"    # J

    .prologue
    .line 209
    long-to-int v1, p3

    .line 210
    .local v1, "id":I
    iget-object v3, p0, Lcom/dodonew/online/fragment/GuessFragment$5;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-static {v3}, Lcom/dodonew/online/fragment/GuessFragment;->access$600(Lcom/dodonew/online/fragment/GuessFragment;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/dodonew/online/fragment/GuessFragment$5;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-virtual {v3}, Lcom/dodonew/online/fragment/GuessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/dodonew/online/ui/GuessMoreActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "category"

    iget-object v3, p0, Lcom/dodonew/online/fragment/GuessFragment$5;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-static {v3}, Lcom/dodonew/online/fragment/GuessFragment;->access$600(Lcom/dodonew/online/fragment/GuessFragment;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 214
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 215
    iget-object v3, p0, Lcom/dodonew/online/fragment/GuessFragment$5;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-virtual {v3}, Lcom/dodonew/online/fragment/GuessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 217
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
