.class Lcom/dodonew/online/ui/MyCardActivity$4;
.super Ljava/lang/Object;
.source "MyCardActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyCardActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/MyCardActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyCardActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyCardActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 3
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 136
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "netCard/cards"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v1, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/MyCardActivity;->access$100(Lcom/dodonew/online/ui/MyCardActivity;Ljava/util/List;)V

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyCardActivity;->access$200(Lcom/dodonew/online/ui/MyCardActivity;)V

    .line 149
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyCardActivity;->access$500(Lcom/dodonew/online/ui/MyCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/MyCardActivity;->dissProgress()V

    .line 152
    :cond_1
    return-void

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->val$cmd:Ljava/lang/String;

    const-string v1, "netCard/delCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyCardActivity;->access$000(Lcom/dodonew/online/ui/MyCardActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/MyCardActivity;->access$300(Lcom/dodonew/online/ui/MyCardActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Card;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/MyCardActivity;->access$400(Lcom/dodonew/online/ui/MyCardActivity;Lcom/dodonew/online/bean/Card;)V

    .line 142
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyCardActivity;->access$000(Lcom/dodonew/online/ui/MyCardActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/MyCardActivity;->access$300(Lcom/dodonew/online/ui/MyCardActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyCardActivity;->access$200(Lcom/dodonew/online/ui/MyCardActivity;)V

    .line 144
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/MyCardActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/dodonew/online/ui/MyCardActivity$4;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/MyCardActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 133
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/MyCardActivity$4;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
