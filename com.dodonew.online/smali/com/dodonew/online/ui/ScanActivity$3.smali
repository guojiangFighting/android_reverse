.class Lcom/dodonew/online/ui/ScanActivity$3;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ScanActivity;->requestNetwork(Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ScanActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ScanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ScanActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/dodonew/online/ui/ScanActivity$3;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 122
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/ui/ScanActivity$3;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v4, "65102933"

    const-string v5, "32028092"

    invoke-static {p1, v4, v5}, Lcom/dodonew/online/http/RequestUtil;->decodeDesJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "response":Ljava/lang/String;
    iget-object v4, p0, Lcom/dodonew/online/ui/ScanActivity$3;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    invoke-virtual {v4}, Lcom/dodonew/online/ui/ScanActivity;->dissProgress()V

    .line 128
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, "object":Lorg/json/JSONObject;
    const-string v4, "yang"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 132
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/dodonew/online/ui/ScanActivity$3;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    invoke-static {v4}, Lcom/dodonew/online/ui/ScanActivity;->access$100(Lcom/dodonew/online/ui/ScanActivity;)Lcom/dodonew/online/payzfb/ZFBPayUtils;

    move-result-object v4

    const-string v5, "zfbparam"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/payzfb/ZFBPayUtils;->setOrderInfo(Ljava/lang/String;)V

    .line 148
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "object":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 135
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "object":Lorg/json/JSONObject;
    :cond_0
    iget-object v4, p0, Lcom/dodonew/online/ui/ScanActivity$3;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    const-string v5, "msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/ui/ScanActivity;->showToast(Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lcom/dodonew/online/ui/ScanActivity$3;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    invoke-static {v4}, Lcom/dodonew/online/ui/ScanActivity;->access$200(Lcom/dodonew/online/ui/ScanActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    iget-object v4, p0, Lcom/dodonew/online/ui/ScanActivity$3;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    const-string v5, "\u6570\u636e\u5f02\u5e38"

    invoke-virtual {v4, v5}, Lcom/dodonew/online/ui/ScanActivity;->showToast(Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lcom/dodonew/online/ui/ScanActivity$3;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    invoke-static {v4}, Lcom/dodonew/online/ui/ScanActivity;->access$200(Lcom/dodonew/online/ui/ScanActivity;)V

    goto :goto_0

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "object":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/dodonew/online/ui/ScanActivity$3;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    const-string v5, "message"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dodonew/online/ui/ScanActivity;->showToast(Ljava/lang/String;)V

    .line 140
    iget-object v4, p0, Lcom/dodonew/online/ui/ScanActivity$3;->this$0:Lcom/dodonew/online/ui/ScanActivity;

    invoke-static {v4}, Lcom/dodonew/online/ui/ScanActivity;->access$200(Lcom/dodonew/online/ui/ScanActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
