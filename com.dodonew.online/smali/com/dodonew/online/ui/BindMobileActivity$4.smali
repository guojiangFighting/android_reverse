.class Lcom/dodonew/online/ui/BindMobileActivity$4;
.super Ljava/lang/Object;
.source "BindMobileActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/BindMobileActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/BindMobileActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/BindMobileActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/BindMobileActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->this$0:Lcom/dodonew/online/ui/BindMobileActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 3
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 159
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "phoneLogin/sendMobileCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->this$0:Lcom/dodonew/online/ui/BindMobileActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/BindMobileActivity;->access$000(Lcom/dodonew/online/ui/BindMobileActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 162
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->this$0:Lcom/dodonew/online/ui/BindMobileActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/BindMobileActivity;->access$100(Lcom/dodonew/online/ui/BindMobileActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->this$0:Lcom/dodonew/online/ui/BindMobileActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/BindMobileActivity;->access$200(Lcom/dodonew/online/ui/BindMobileActivity;)V

    .line 175
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->this$0:Lcom/dodonew/online/ui/BindMobileActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/BindMobileActivity;->dissProgress()V

    .line 176
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "phoneLogin/bindPhone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->this$0:Lcom/dodonew/online/ui/BindMobileActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/BindMobileActivity;->showToast(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->this$0:Lcom/dodonew/online/ui/BindMobileActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/BindMobileActivity;->access$300(Lcom/dodonew/online/ui/BindMobileActivity;)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "phoneLogin/changePhone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->this$0:Lcom/dodonew/online/ui/BindMobileActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/BindMobileActivity;->showToast(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->this$0:Lcom/dodonew/online/ui/BindMobileActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/BindMobileActivity;->access$300(Lcom/dodonew/online/ui/BindMobileActivity;)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/BindMobileActivity$4;->this$0:Lcom/dodonew/online/ui/BindMobileActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/BindMobileActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 156
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/BindMobileActivity$4;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
