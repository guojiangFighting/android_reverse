.class Lcom/dodonew/online/ui/GetTicketActivity$4;
.super Ljava/lang/Object;
.source "GetTicketActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/GetTicketActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
    .line 123
    iput-object p1, p0, Lcom/dodonew/online/ui/GetTicketActivity$4;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 127
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity$4;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    const-string v1, "\u51fa\u73b0\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/GetTicketActivity;->showToast(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity$4;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/GetTicketActivity;->access$200(Lcom/dodonew/online/ui/GetTicketActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/dodonew/online/ui/GetTicketActivity$4;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/GetTicketActivity;->dissProgress()V

    .line 130
    :cond_0
    return-void
.end method
