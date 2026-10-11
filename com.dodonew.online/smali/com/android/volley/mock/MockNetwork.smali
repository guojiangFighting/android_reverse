.class public Lcom/android/volley/mock/MockNetwork;
.super Ljava/lang/Object;
.source "MockNetwork.java"

# interfaces
.implements Lcom/android/volley/Network;


# static fields
.field public static final ALWAYS_THROW_EXCEPTIONS:I = -0x1


# instance fields
.field private mDataToReturn:[B

.field private mNumExceptionsToThrow:I

.field public requestHandled:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/volley/mock/MockNetwork;->mNumExceptionsToThrow:I

    .line 29
    iput-object v1, p0, Lcom/android/volley/mock/MockNetwork;->mDataToReturn:[B

    .line 43
    iput-object v1, p0, Lcom/android/volley/mock/MockNetwork;->requestHandled:Lcom/android/volley/Request;

    .line 25
    return-void
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    const/4 v1, -0x1

    .line 47
    iget v0, p0, Lcom/android/volley/mock/MockNetwork;->mNumExceptionsToThrow:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/volley/mock/MockNetwork;->mNumExceptionsToThrow:I

    if-ne v0, v1, :cond_2

    .line 48
    :cond_0
    iget v0, p0, Lcom/android/volley/mock/MockNetwork;->mNumExceptionsToThrow:I

    if-eq v0, v1, :cond_1

    .line 49
    iget v0, p0, Lcom/android/volley/mock/MockNetwork;->mNumExceptionsToThrow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/volley/mock/MockNetwork;->mNumExceptionsToThrow:I

    .line 51
    :cond_1
    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0}, Lcom/android/volley/ServerError;-><init>()V

    throw v0

    .line 54
    :cond_2
    iput-object p1, p0, Lcom/android/volley/mock/MockNetwork;->requestHandled:Lcom/android/volley/Request;

    .line 55
    new-instance v0, Lcom/android/volley/NetworkResponse;

    iget-object v1, p0, Lcom/android/volley/mock/MockNetwork;->mDataToReturn:[B

    invoke-direct {v0, v1}, Lcom/android/volley/NetworkResponse;-><init>([B)V

    return-object v0
.end method

.method public setDataToReturn([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/volley/mock/MockNetwork;->mDataToReturn:[B

    .line 41
    return-void
.end method

.method public setNumExceptionsToThrow(I)V
    .locals 0
    .param p1, "numExceptionsToThrow"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/volley/mock/MockNetwork;->mNumExceptionsToThrow:I

    .line 37
    return-void
.end method
