.class Lcom/dodonew/online/fragment/GuessFragment$7;
.super Ljava/lang/Object;
.source "GuessFragment.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


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
    .line 226
    iput-object p1, p0, Lcom/dodonew/online/fragment/GuessFragment$7;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 229
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment$7;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-virtual {v2}, Lcom/dodonew/online/fragment/GuessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/dodonew/online/ui/GuessDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "title"

    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment$7;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-static {v2}, Lcom/dodonew/online/fragment/GuessFragment;->access$700(Lcom/dodonew/online/fragment/GuessFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/Race;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Race;->getUrGame()Lcom/dodonew/online/bean/UrGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dodonew/online/bean/UrGame;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v3, "raceId"

    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment$7;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-static {v2}, Lcom/dodonew/online/fragment/GuessFragment;->access$700(Lcom/dodonew/online/fragment/GuessFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/Race;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Race;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 234
    iget-object v2, p0, Lcom/dodonew/online/fragment/GuessFragment$7;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-virtual {v2, v1}, Lcom/dodonew/online/fragment/GuessFragment;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void
.end method
