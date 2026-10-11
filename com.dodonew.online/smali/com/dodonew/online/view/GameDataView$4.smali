.class Lcom/dodonew/online/view/GameDataView$4;
.super Ljava/lang/Object;
.source "GameDataView.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/GameDataView;->requestNetwork(Ljava/util/Map;)V
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/GameDataView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/GameDataView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/dodonew/online/view/GameDataView$4;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/view/GameDataView$4;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/dodonew/online/view/GameDataView$4;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-static {v2}, Lcom/dodonew/online/view/GameDataView;->access$600(Lcom/dodonew/online/view/GameDataView;)Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/view/GameDataView$4;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-static {v4}, Lcom/dodonew/online/view/GameDataView;->access$500(Lcom/dodonew/online/view/GameDataView;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/RequestResult;

    .line 151
    .local v1, "res":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<Lcom/dodonew/online/bean/GameData;>;"
    iget-object v3, p0, Lcom/dodonew/online/view/GameDataView$4;->this$0:Lcom/dodonew/online/view/GameDataView;

    iget-object v2, v1, Lcom/dodonew/online/bean/RequestResult;->data:Ljava/lang/Object;

    check-cast v2, Lcom/dodonew/online/bean/GameData;

    invoke-static {v3, v2}, Lcom/dodonew/online/view/GameDataView;->access$700(Lcom/dodonew/online/view/GameDataView;Lcom/dodonew/online/bean/GameData;)V

    .line 152
    iget-object v2, p0, Lcom/dodonew/online/view/GameDataView$4;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-static {v2}, Lcom/dodonew/online/view/GameDataView;->access$800(Lcom/dodonew/online/view/GameDataView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1    # "res":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<Lcom/dodonew/online/bean/GameData;>;"
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
