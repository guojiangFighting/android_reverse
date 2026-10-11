.class Lcom/dodonew/online/ui/TicketActivity$5;
.super Ljava/lang/Object;
.source "TicketActivity.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/TicketActivity;->setTicketAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/TicketActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/TicketActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/TicketActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/dodonew/online/ui/TicketActivity$5;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 223
    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity$5;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v1, p2}, Lcom/dodonew/online/ui/TicketActivity;->access$1002(Lcom/dodonew/online/ui/TicketActivity;I)I

    .line 224
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity$5;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    const-class v2, Lcom/dodonew/online/ui/GetTicketActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "ticketId"

    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity$5;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/TicketActivity;->access$1100(Lcom/dodonew/online/ui/TicketActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Ticket;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Ticket;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/dodonew/online/ui/TicketActivity$5;->this$0:Lcom/dodonew/online/ui/TicketActivity;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Lcom/dodonew/online/ui/TicketActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    return-void
.end method
