.class Lcom/dodonew/online/ui/RegisterActivity$4;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/RegisterActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/RegisterActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/RegisterActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/RegisterActivity;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/dodonew/online/ui/RegisterActivity$4;->this$0:Lcom/dodonew/online/ui/RegisterActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/RegisterActivity$4;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 3
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 199
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "user/regCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity$4;->this$0:Lcom/dodonew/online/ui/RegisterActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/RegisterActivity;->access$100(Lcom/dodonew/online/ui/RegisterActivity;)Lcom/dodonew/online/util/TimeCountUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/util/TimeCountUtil;->start()Landroid/os/CountDownTimer;

    .line 202
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity$4;->this$0:Lcom/dodonew/online/ui/RegisterActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 212
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity$4;->this$0:Lcom/dodonew/online/ui/RegisterActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/RegisterActivity;->dissProgress()V

    .line 213
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "user/activateAccount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/User;

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    .line 205
    const-string v0, "mobile"

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginLabel:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity$4;->this$0:Lcom/dodonew/online/ui/RegisterActivity;

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginLabel:Ljava/lang/String;

    const-string v2, "LOGINLABEL"

    invoke-static {v0, v1, v2}, Lcom/dodonew/online/util/Utils;->saveJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity$4;->this$0:Lcom/dodonew/online/ui/RegisterActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/RegisterActivity;->intentMainActivity()V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity$4;->this$0:Lcom/dodonew/online/ui/RegisterActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 196
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/RegisterActivity$4;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
