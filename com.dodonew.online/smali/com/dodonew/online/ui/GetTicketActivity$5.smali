.class Lcom/dodonew/online/ui/GetTicketActivity$5;
.super Ljava/lang/Object;
.source "GetTicketActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/GetTicketActivity;->setTicket(Lcom/dodonew/online/bean/TicketDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/GetTicketActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/GetTicketActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/GetTicketActivity;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/dodonew/online/ui/GetTicketActivity$5;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity$5;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/GetTicketActivity$5;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/GetTicketActivity;->access$300(Lcom/dodonew/online/ui/GetTicketActivity;)Lcom/dodonew/online/bean/Ticket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Ticket;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    invoke-virtual {v2}, Lcom/dodonew/online/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/GetTicketActivity$5;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/GetTicketActivity;->access$300(Lcom/dodonew/online/ui/GetTicketActivity;)Lcom/dodonew/online/bean/Ticket;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/bean/Ticket;->getMaxSum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dodonew/online/ui/GetTicketActivity;->access$400(Lcom/dodonew/online/ui/GetTicketActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method
