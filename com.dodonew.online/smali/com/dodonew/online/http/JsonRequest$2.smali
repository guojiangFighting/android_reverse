.class Lcom/dodonew/online/http/JsonRequest$2;
.super Landroid/os/Handler;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/http/JsonRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/http/JsonRequest;


# direct methods
.method constructor <init>(Lcom/dodonew/online/http/JsonRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/http/JsonRequest;

    .prologue
    .line 174
    .local p0, "this":Lcom/dodonew/online/http/JsonRequest$2;, "Lcom/dodonew/online/http/JsonRequest$2;"
    iput-object p1, p0, Lcom/dodonew/online/http/JsonRequest$2;->this$0:Lcom/dodonew/online/http/JsonRequest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 177
    .local p0, "this":Lcom/dodonew/online/http/JsonRequest$2;, "Lcom/dodonew/online/http/JsonRequest$2;"
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/dodonew/online/http/JsonRequest$2;->this$0:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0}, Lcom/dodonew/online/http/JsonRequest;->intentLoginActivity()V

    .line 180
    :cond_0
    return-void
.end method
