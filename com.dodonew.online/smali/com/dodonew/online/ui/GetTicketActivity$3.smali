.class Lcom/dodonew/online/ui/GetTicketActivity$3;
.super Ljava/lang/Object;
.source "GetTicketActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/GetTicketActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/dodonew/online/bean/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/GetTicketActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/GetTicketActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/GetTicketActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/dodonew/online/ui/GetTicketActivity$3;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/GetTicketActivity$3;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 109
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity$3;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/ticket/info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/dodonew/online/ui/GetTicketActivity$3;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/TicketDetail;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/GetTicketActivity;->access$000(Lcom/dodonew/online/ui/GetTicketActivity;Lcom/dodonew/online/bean/TicketDetail;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity$3;->val$cmd:Ljava/lang/String;

    const-string v1, "oth/ticket/receiveticket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity$3;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/GetTicketActivity;->showToast(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity$3;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/GetTicketActivity;->access$100(Lcom/dodonew/online/ui/GetTicketActivity;)V

    .line 120
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity$3;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/GetTicketActivity;->access$200(Lcom/dodonew/online/ui/GetTicketActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity$3;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/GetTicketActivity;->dissProgress()V

    .line 122
    :cond_2
    return-void

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity$3;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/GetTicketActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/GetTicketActivity$3;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
