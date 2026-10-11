.class Lcom/dodonew/online/ui/FindPasswordActivity$5;
.super Ljava/lang/Object;
.source "FindPasswordActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/FindPasswordActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/FindPasswordActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/FindPasswordActivity;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/dodonew/online/ui/FindPasswordActivity$5;->this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/FindPasswordActivity$5;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 202
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity$5;->val$cmd:Ljava/lang/String;

    const-string v1, "user/findPwd/sendMobileCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity$5;->this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/FindPasswordActivity;->showToast(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity$5;->this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->access$100(Lcom/dodonew/online/ui/FindPasswordActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity$5;->this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->access$200(Lcom/dodonew/online/ui/FindPasswordActivity;)V

    .line 218
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity$5;->this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->dissProgress()V

    .line 219
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity$5;->val$cmd:Ljava/lang/String;

    const-string v1, "user/findPwd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v1, p0, Lcom/dodonew/online/ui/FindPasswordActivity$5;->this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/PhoneCode;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->access$302(Lcom/dodonew/online/ui/FindPasswordActivity;Lcom/dodonew/online/bean/PhoneCode;)Lcom/dodonew/online/bean/PhoneCode;

    .line 210
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity$5;->this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->access$400(Lcom/dodonew/online/ui/FindPasswordActivity;)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity$5;->val$cmd:Ljava/lang/String;

    const-string v1, "user/findPwd/modifyNewPwd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/User;

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    .line 213
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity$5;->this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->access$500(Lcom/dodonew/online/ui/FindPasswordActivity;)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity$5;->this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/FindPasswordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 199
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/FindPasswordActivity$5;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
