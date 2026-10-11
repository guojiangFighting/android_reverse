.class public Lcom/android/volley/mock/MockHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "MockHttpURLConnection.java"


# instance fields
.field private mDoOutput:Z

.field private mOutputStream:Ljava/io/OutputStream;

.field private mRequestMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://foo.com"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/mock/MockHttpURLConnection;->mDoOutput:Z

    .line 35
    const-string v0, "GET"

    iput-object v0, p0, Lcom/android/volley/mock/MockHttpURLConnection;->mRequestMethod:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/volley/mock/MockHttpURLConnection;->mOutputStream:Ljava/io/OutputStream;

    .line 37
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method public disconnect()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/volley/mock/MockHttpURLConnection;->mDoOutput:Z

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/volley/mock/MockHttpURLConnection;->mOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/volley/mock/MockHttpURLConnection;->mRequestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public setDoOutput(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/volley/mock/MockHttpURLConnection;->mDoOutput:Z

    .line 42
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/volley/mock/MockHttpURLConnection;->mRequestMethod:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public usingProxy()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method
