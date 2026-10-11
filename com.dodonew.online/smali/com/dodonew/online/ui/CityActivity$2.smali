.class Lcom/dodonew/online/ui/CityActivity$2;
.super Ljava/lang/Object;
.source "CityActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/CityActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/CityActivity;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/CityActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/CityActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/dodonew/online/ui/CityActivity$2;->this$0:Lcom/dodonew/online/ui/CityActivity;

    iput-object p2, p0, Lcom/dodonew/online/ui/CityActivity$2;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/dodonew/online/bean/RequestResult;)V
    .locals 2
    .param p1, "requestResult"    # Lcom/dodonew/online/bean/RequestResult;

    .prologue
    .line 89
    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->code:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity$2;->val$cmd:Ljava/lang/String;

    const-string v1, "netCard/provices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/dodonew/online/ui/CityActivity$2;->this$0:Lcom/dodonew/online/ui/CityActivity;

    iget-object v0, p1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v0, Lcom/dodonew/online/bean/Provinces;

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Provinces;->getProvinces()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/CityActivity;->access$000(Lcom/dodonew/online/ui/CityActivity;Ljava/util/List;)V

    .line 92
    iget-object v0, p0, Lcom/dodonew/online/ui/CityActivity$2;->this$0:Lcom/dodonew/online/ui/CityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/CityActivity;->access$100(Lcom/dodonew/online/ui/CityActivity;)V

    .line 95
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Lcom/dodonew/online/bean/RequestResult;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/CityActivity$2;->onResponse(Lcom/dodonew/online/bean/RequestResult;)V

    return-void
.end method
