.class Lcom/dodonew/online/ui/GuessMoreActivity$6;
.super Ljava/lang/Object;
.source "GuessMoreActivity.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/GuessMoreActivity;->setGuessAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/GuessMoreActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/GuessMoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/GuessMoreActivity;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/dodonew/online/ui/GuessMoreActivity$6;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 249
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dodonew/online/ui/GuessMoreActivity$6;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    const-class v3, Lcom/dodonew/online/ui/GuessDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, p0, Lcom/dodonew/online/ui/GuessMoreActivity$6;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$900(Lcom/dodonew/online/ui/GuessMoreActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v3, "raceId"

    iget-object v2, p0, Lcom/dodonew/online/ui/GuessMoreActivity$6;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$1000(Lcom/dodonew/online/ui/GuessMoreActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/Race;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Race;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 254
    iget-object v2, p0, Lcom/dodonew/online/ui/GuessMoreActivity$6;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    invoke-virtual {v2, v1}, Lcom/dodonew/online/ui/GuessMoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 255
    return-void
.end method
