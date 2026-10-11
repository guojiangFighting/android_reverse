.class Lcom/dodonew/online/view/ThirdLoginView$4;
.super Ljava/lang/Object;
.source "ThirdLoginView.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/ThirdLoginView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/view/ThirdLoginView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/ThirdLoginView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/ThirdLoginView;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/dodonew/online/view/ThirdLoginView$4;->this$0:Lcom/dodonew/online/view/ThirdLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 3
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 153
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/User;

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    .line 155
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView$4;->this$0:Lcom/dodonew/online/view/ThirdLoginView;

    invoke-static {v0}, Lcom/dodonew/online/view/ThirdLoginView;->access$300(Lcom/dodonew/online/view/ThirdLoginView;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->loginLabel:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView$4;->this$0:Lcom/dodonew/online/view/ThirdLoginView;

    invoke-static {v0}, Lcom/dodonew/online/view/ThirdLoginView;->access$200(Lcom/dodonew/online/view/ThirdLoginView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginLabel:Ljava/lang/String;

    const-string v2, "LOGINLABEL"

    invoke-static {v0, v1, v2}, Lcom/dodonew/online/util/Utils;->saveJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView$4;->this$0:Lcom/dodonew/online/view/ThirdLoginView;

    invoke-static {v0}, Lcom/dodonew/online/view/ThirdLoginView;->access$200(Lcom/dodonew/online/view/ThirdLoginView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->intentMainActivity()V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView$4;->this$0:Lcom/dodonew/online/view/ThirdLoginView;

    invoke-static {v0}, Lcom/dodonew/online/view/ThirdLoginView;->access$200(Lcom/dodonew/online/view/ThirdLoginView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->dissProgress()V

    .line 162
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView$4;->this$0:Lcom/dodonew/online/view/ThirdLoginView;

    invoke-static {v0}, Lcom/dodonew/online/view/ThirdLoginView;->access$400(Lcom/dodonew/online/view/ThirdLoginView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 150
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/view/ThirdLoginView$4;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
