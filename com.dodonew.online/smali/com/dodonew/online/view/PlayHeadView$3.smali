.class Lcom/dodonew/online/view/PlayHeadView$3;
.super Ljava/lang/Object;
.source "PlayHeadView.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/PlayHeadView;->queryUrl(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/dodonew/online/view/PlayHeadView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/PlayHeadView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/PlayHeadView;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/dodonew/online/view/PlayHeadView$3;->this$0:Lcom/dodonew/online/view/PlayHeadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/dodonew/online/view/PlayHeadView$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/dodonew/online/view/PlayHeadView$3;->this$0:Lcom/dodonew/online/view/PlayHeadView;

    iget-object v0, p0, Lcom/dodonew/online/view/PlayHeadView$3;->this$0:Lcom/dodonew/online/view/PlayHeadView;

    invoke-static {v0}, Lcom/dodonew/online/view/PlayHeadView;->access$300(Lcom/dodonew/online/view/PlayHeadView;)Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/view/PlayHeadView$3;->this$0:Lcom/dodonew/online/view/PlayHeadView;

    invoke-static {v3}, Lcom/dodonew/online/view/PlayHeadView;->access$200(Lcom/dodonew/online/view/PlayHeadView;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/VideoUrlData;

    check-cast v0, Lcom/dodonew/online/bean/VideoUrlData;

    invoke-static {v1, v0}, Lcom/dodonew/online/view/PlayHeadView;->access$400(Lcom/dodonew/online/view/PlayHeadView;Lcom/dodonew/online/bean/VideoUrlData;)V

    .line 116
    return-void
.end method
