.class Lcom/dodonew/online/ui/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/LoginActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/LoginActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/LoginActivity;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/dodonew/online/ui/LoginActivity$2;->this$0:Lcom/dodonew/online/ui/LoginActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/LoginActivity$2;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 3
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 148
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/dodonew/online/ui/LoginActivity$2;->val$cmd:Ljava/lang/String;

    const-string v1, "user/login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/User;

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    .line 151
    const-string v0, "mobile"

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginLabel:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/dodonew/online/ui/LoginActivity$2;->this$0:Lcom/dodonew/online/ui/LoginActivity;

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginLabel:Ljava/lang/String;

    const-string v2, "LOGINLABEL"

    invoke-static {v0, v1, v2}, Lcom/dodonew/online/util/Utils;->saveJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/dodonew/online/ui/LoginActivity$2;->this$0:Lcom/dodonew/online/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/LoginActivity;->intentMainActivity()V

    .line 158
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/LoginActivity$2;->this$0:Lcom/dodonew/online/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/LoginActivity;->dissProgress()V

    .line 159
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/LoginActivity$2;->this$0:Lcom/dodonew/online/ui/LoginActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/LoginActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/LoginActivity$2;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
