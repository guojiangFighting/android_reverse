.class Lcom/dodonew/online/ui/NewsDetailActivity$6;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/NewsDetailActivity;->queryNewsDetail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/NewsDetailActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/NewsDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/NewsDetailActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/dodonew/online/ui/NewsDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 161
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity$6;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    const-string v1, "\u51fa\u73b0\u9519\u8bef,\u8bf7\u7a0d\u540e\u518d\u8bd5."

    invoke-virtual {v0, v1}, Lcom/dodonew/online/ui/NewsDetailActivity;->showToast(Ljava/lang/String;)V

    .line 162
    return-void
.end method
