.class Lcom/dodonew/online/ui/BindCardProvinceActivity$3;
.super Ljava/lang/Object;
.source "BindCardProvinceActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/BindCardProvinceActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/BindCardProvinceActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/BindCardProvinceActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 112
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;->val$cmd:Ljava/lang/String;

    const-string v1, "netCard/provices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/Provinces;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Provinces;->getProvinces()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->access$000(Lcom/dodonew/online/ui/BindCardProvinceActivity;Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->access$100(Lcom/dodonew/online/ui/BindCardProvinceActivity;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;->val$cmd:Ljava/lang/String;

    const-string v1, "netCard/cities"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->dissProgress()V

    .line 118
    iget-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/Cities;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Cities;->getCities()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->access$200(Lcom/dodonew/online/ui/BindCardProvinceActivity;Ljava/util/List;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    iget-object v1, p1, Lcom/dodonew/online/bean/RequestResult;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->showToast(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;->val$cmd:Ljava/lang/String;

    const-string v1, "netCard/cities"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->dissProgress()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/BindCardProvinceActivity$3;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
