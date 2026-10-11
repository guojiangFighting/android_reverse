.class Lcom/dodonew/online/ui/MyActiveActivity$4;
.super Ljava/lang/Object;
.source "MyActiveActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyActiveActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyActiveActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyActiveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyActiveActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/dodonew/online/ui/MyActiveActivity$4;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 145
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity$4;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    const-string v1, "\u83b7\u53d6\u6570\u636e\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5."

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/MyActiveActivity;->showToast(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/dodonew/online/ui/MyActiveActivity$4;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MyActiveActivity;->access$500(Lcom/dodonew/online/ui/MyActiveActivity;)V

    .line 147
    return-void
.end method
