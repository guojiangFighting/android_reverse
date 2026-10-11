.class public Lcom/hk/app/android/lib/http/params/FileTypeParam;
.super Ljava/lang/Object;
.source "FileTypeParam.java"


# instance fields
.field public contentType:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/hk/app/android/lib/http/params/FileTypeParam;->key:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/hk/app/android/lib/http/params/FileTypeParam;->inputStream:Ljava/io/InputStream;

    .line 17
    iput-object p3, p0, Lcom/hk/app/android/lib/http/params/FileTypeParam;->fileName:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/hk/app/android/lib/http/params/FileTypeParam;->contentType:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/hk/app/android/lib/http/params/FileTypeParam;->key:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/hk/app/android/lib/http/params/FileTypeParam;->inputStream:Ljava/io/InputStream;

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hk/app/android/lib/http/params/FileTypeParam;->fileName:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/hk/app/android/lib/http/params/FileTypeParam;->contentType:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public isValidate()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hk/app/android/lib/http/params/FileTypeParam;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
