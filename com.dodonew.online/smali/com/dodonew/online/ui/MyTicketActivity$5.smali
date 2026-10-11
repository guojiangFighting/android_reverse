.class Lcom/dodonew/online/ui/MyTicketActivity$5;
.super Ljava/lang/Object;
.source "MyTicketActivity.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyTicketActivity;->setTicketAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyTicketActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyTicketActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyTicketActivity;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/dodonew/online/ui/MyTicketActivity$5;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 243
    iget-object v2, p0, Lcom/dodonew/online/ui/MyTicketActivity$5;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/MyTicketActivity;->access$600(Lcom/dodonew/online/ui/MyTicketActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "ticket"

    iget-object v2, p0, Lcom/dodonew/online/ui/MyTicketActivity$5;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/MyTicketActivity;->access$700(Lcom/dodonew/online/ui/MyTicketActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 246
    iget-object v2, p0, Lcom/dodonew/online/ui/MyTicketActivity$5;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0}, Lcom/dodonew/online/ui/MyTicketActivity;->setResult(ILandroid/content/Intent;)V

    .line 247
    iget-object v2, p0, Lcom/dodonew/online/ui/MyTicketActivity$5;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-virtual {v2}, Lcom/dodonew/online/ui/MyTicketActivity;->finish()V

    .line 256
    :goto_0
    return-void

    .line 249
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/dodonew/online/ui/MyTicketActivity$5;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/MyTicketActivity;->access$700(Lcom/dodonew/online/ui/MyTicketActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Ticket;

    .line 250
    .local v1, "ticket":Lcom/dodonew/online/bean/Ticket;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dodonew/online/ui/MyTicketActivity$5;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    const-class v3, Lcom/dodonew/online/ui/NetbarDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "netBarId"

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Ticket;->getNetBarId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v2, "domainId"

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Ticket;->getDomainId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v2, "location"

    iget-object v3, p0, Lcom/dodonew/online/ui/MyTicketActivity$5;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/MyTicketActivity;->access$800(Lcom/dodonew/online/ui/MyTicketActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v2, p0, Lcom/dodonew/online/ui/MyTicketActivity$5;->this$0:Lcom/dodonew/online/ui/MyTicketActivity;

    invoke-virtual {v2, v0}, Lcom/dodonew/online/ui/MyTicketActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
