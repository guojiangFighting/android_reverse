.class public Lcom/android/volley/mock/MockResponseDelivery;
.super Ljava/lang/Object;
.source "MockResponseDelivery.java"

# interfaces
.implements Lcom/android/volley/ResponseDelivery;


# instance fields
.field public postError_called:Z

.field public postResponse_called:Z

.field public responsePosted:Lcom/android/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/android/volley/mock/MockResponseDelivery;->postResponse_called:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/volley/mock/MockResponseDelivery;->postError_called:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/mock/MockResponseDelivery;->responsePosted:Lcom/android/volley/Response;

    .line 24
    return-void
.end method


# virtual methods
.method public postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p2, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/mock/MockResponseDelivery;->postError_called:Z

    .line 50
    return-void
.end method

.method public postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/mock/MockResponseDelivery;->postResponse_called:Z

    .line 37
    iput-object p2, p0, Lcom/android/volley/mock/MockResponseDelivery;->responsePosted:Lcom/android/volley/Response;

    .line 38
    return-void
.end method

.method public postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
    .locals 1
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/Response",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/mock/MockResponseDelivery;->postResponse_called:Z

    .line 43
    iput-object p2, p0, Lcom/android/volley/mock/MockResponseDelivery;->responsePosted:Lcom/android/volley/Response;

    .line 44
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 45
    return-void
.end method

.method public wasEitherResponseCalled()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/volley/mock/MockResponseDelivery;->postResponse_called:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/volley/mock/MockResponseDelivery;->postError_called:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
