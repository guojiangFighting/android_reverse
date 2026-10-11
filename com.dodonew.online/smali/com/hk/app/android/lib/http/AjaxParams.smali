.class public Lcom/hk/app/android/lib/http/AjaxParams;
.super Ljava/lang/Object;
.source "AjaxParams.java"


# static fields
.field private static DEFAULT_ENCODING:Ljava/lang/String;


# instance fields
.field private encryptkeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private entity:Lorg/apache/http/HttpEntity;

.field protected fileParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/hk/app/android/lib/http/params/FileTypeParam;",
            ">;"
        }
    .end annotation
.end field

.field protected fileValidatorParam:Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;

.field private paramEncryptor:Lcom/hk/app/android/lib/http/params/help/ParamEncryptor;

.field protected urlParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "UTF-8"

    sput-object v0, Lcom/hk/app/android/lib/http/AjaxParams;->DEFAULT_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hk/app/android/lib/http/AjaxParams;->entity:Lorg/apache/http/HttpEntity;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hk/app/android/lib/http/AjaxParams;->urlParams:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hk/app/android/lib/http/AjaxParams;->fileParams:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/hk/app/android/lib/http/AjaxParams;->encryptkeys:Ljava/util/Set;

    .line 46
    return-void
.end method


# virtual methods
.method public addEncrypt(Ljava/lang/String;)V
    .locals 1
    .param p1, "enKey"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/hk/app/android/lib/http/AjaxParams;->encryptkeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/AjaxParams;->setEntityEmpty()V

    .line 61
    return-void
.end method

.method public addEncrypts(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "enKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/AjaxParams;->setEntityEmpty()V

    goto :goto_0

    .line 67
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "k":Ljava/lang/String;
    iget-object v2, p0, Lcom/hk/app/android/lib/http/AjaxParams;->encryptkeys:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected getCommonEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "paramsList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/AjaxParams;->getParamsList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/hk/app/android/lib/http/AjaxParams;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/AjaxParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 5

    .prologue
    .line 155
    iget-object v2, p0, Lcom/hk/app/android/lib/http/AjaxParams;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/hk/app/android/lib/http/AjaxParams;->entity:Lorg/apache/http/HttpEntity;

    .line 169
    :goto_0
    return-object v2

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/AjaxParams;->isFileUpload()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/AjaxParams;->getFileUploadEntity()Lcom/hk/app/android/lib/http/MultipartEntity;

    move-result-object v1

    .line 161
    .local v1, "multipartEntity":Lcom/hk/app/android/lib/http/MultipartEntity;
    iput-object v1, p0, Lcom/hk/app/android/lib/http/AjaxParams;->entity:Lorg/apache/http/HttpEntity;

    .line 169
    .end local v1    # "multipartEntity":Lcom/hk/app/android/lib/http/MultipartEntity;
    :goto_1
    iget-object v2, p0, Lcom/hk/app/android/lib/http/AjaxParams;->entity:Lorg/apache/http/HttpEntity;

    goto :goto_0

    .line 164
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/AjaxParams;->getParamsList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hk/app/android/lib/http/AjaxParams;->getCommonEntity(Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    iput-object v2, p0, Lcom/hk/app/android/lib/http/AjaxParams;->entity:Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u83b7\u53d6\u53c2\u6570\u5b9e\u4f53\u5f02\u5e38\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getFileUploadEntity()Lcom/hk/app/android/lib/http/MultipartEntity;
    .locals 13

    .prologue
    .line 176
    new-instance v0, Lcom/hk/app/android/lib/http/MultipartEntity;

    invoke-direct {v0}, Lcom/hk/app/android/lib/http/MultipartEntity;-><init>()V

    .line 178
    .local v0, "multipartEntity":Lcom/hk/app/android/lib/http/MultipartEntity;
    iget-object v1, p0, Lcom/hk/app/android/lib/http/AjaxParams;->fileValidatorParam:Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/hk/app/android/lib/http/AjaxParams;->fileValidatorParam:Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;

    iget-object v2, p0, Lcom/hk/app/android/lib/http/AjaxParams;->fileParams:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;->getValidateValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, "validateStr":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/hk/app/android/lib/http/AjaxParams;->urlParams:Ljava/util/Map;

    iget-object v2, p0, Lcom/hk/app/android/lib/http/AjaxParams;->fileValidatorParam:Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;

    iget-object v2, v2, Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v11    # "validateStr":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/hk/app/android/lib/http/AjaxParams;->urlParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/hk/app/android/lib/http/AjaxParams;->urlParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    :cond_1
    const/4 v6, 0x0

    .line 194
    .local v6, "currentIndex":I
    iget-object v1, p0, Lcom/hk/app/android/lib/http/AjaxParams;->fileParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    .line 195
    .local v10, "lastIndex":I
    iget-object v1, p0, Lcom/hk/app/android/lib/http/AjaxParams;->fileParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 208
    return-object v0

    .line 187
    .end local v6    # "currentIndex":I
    .end local v10    # "lastIndex":I
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 188
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hk/app/android/lib/http/MultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "currentIndex":I
    .restart local v10    # "lastIndex":I
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 196
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/hk/app/android/lib/http/params/FileTypeParam;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hk/app/android/lib/http/params/FileTypeParam;

    .line 197
    .local v9, "fileParam":Lcom/hk/app/android/lib/http/params/FileTypeParam;
    iget-object v1, v9, Lcom/hk/app/android/lib/http/params/FileTypeParam;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 198
    if-ne v6, v10, :cond_5

    const/4 v5, 0x1

    .line 199
    .local v5, "isLast":Z
    :goto_2
    iget-object v1, v9, Lcom/hk/app/android/lib/http/params/FileTypeParam;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 200
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v9, Lcom/hk/app/android/lib/http/params/FileTypeParam;->fileName:Ljava/lang/String;

    iget-object v3, v9, Lcom/hk/app/android/lib/http/params/FileTypeParam;->inputStream:Ljava/io/InputStream;

    iget-object v4, v9, Lcom/hk/app/android/lib/http/params/FileTypeParam;->contentType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/hk/app/android/lib/http/MultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 206
    .end local v5    # "isLast":Z
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 198
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 203
    .restart local v5    # "isLast":Z
    :cond_6
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v9, Lcom/hk/app/android/lib/http/params/FileTypeParam;->fileName:Ljava/lang/String;

    iget-object v3, v9, Lcom/hk/app/android/lib/http/params/FileTypeParam;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/hk/app/android/lib/http/MultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto :goto_3
.end method

.method public getParamString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/AjaxParams;->getParamsList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/hk/app/android/lib/http/AjaxParams;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParamsList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 225
    .local v1, "lparams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v2, p0, Lcom/hk/app/android/lib/http/AjaxParams;->urlParams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    return-object v1

    .line 225
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 226
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getUrlParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/hk/app/android/lib/http/AjaxParams;->urlParams:Ljava/util/Map;

    return-object v0
.end method

.method public varargs initEncrypt(Lcom/hk/app/android/lib/http/params/help/ParamEncryptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "paramEncryptor"    # Lcom/hk/app/android/lib/http/params/help/ParamEncryptor;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/hk/app/android/lib/http/AjaxParams;->paramEncryptor:Lcom/hk/app/android/lib/http/params/help/ParamEncryptor;

    .line 51
    if-eqz p2, :cond_0

    .line 52
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/AjaxParams;->setEntityEmpty()V

    .line 56
    return-void

    .line 52
    :cond_1
    aget-object v0, p2, v1

    .line 53
    .local v0, "k":Ljava/lang/String;
    iget-object v3, p0, Lcom/hk/app/android/lib/http/AjaxParams;->encryptkeys:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isFileUpload()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/hk/app/android/lib/http/AjaxParams;->fileParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public put(Lcom/hk/app/android/lib/http/params/CommonTypeParam;)Lcom/hk/app/android/lib/http/AjaxParams;
    .locals 3
    .param p1, "param"    # Lcom/hk/app/android/lib/http/params/CommonTypeParam;

    .prologue
    .line 73
    iget-object v2, p1, Lcom/hk/app/android/lib/http/params/CommonTypeParam;->value:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 84
    :goto_0
    return-object p0

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/hk/app/android/lib/http/params/CommonTypeParam;->key:Ljava/lang/String;

    .line 78
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p1, Lcom/hk/app/android/lib/http/params/CommonTypeParam;->value:Ljava/lang/String;

    .line 79
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/hk/app/android/lib/http/AjaxParams;->paramEncryptor:Lcom/hk/app/android/lib/http/params/help/ParamEncryptor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hk/app/android/lib/http/AjaxParams;->encryptkeys:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/hk/app/android/lib/http/AjaxParams;->paramEncryptor:Lcom/hk/app/android/lib/http/params/help/ParamEncryptor;

    invoke-interface {v2, v1}, Lcom/hk/app/android/lib/http/params/help/ParamEncryptor;->encrypt(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/hk/app/android/lib/http/AjaxParams;->urlParams:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/AjaxParams;->setEntityEmpty()V

    goto :goto_0
.end method

.method public put(Lcom/hk/app/android/lib/http/params/FileTypeParam;)V
    .locals 2
    .param p1, "fileTypeParam"    # Lcom/hk/app/android/lib/http/params/FileTypeParam;

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/hk/app/android/lib/http/params/FileTypeParam;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/hk/app/android/lib/http/AjaxParams;->fileParams:Ljava/util/Map;

    iget-object v1, p1, Lcom/hk/app/android/lib/http/params/FileTypeParam;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/AjaxParams;->setEntityEmpty()V

    .line 110
    :cond_0
    return-void
.end method

.method public putCommonTypeParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/hk/app/android/lib/http/AjaxParams;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/hk/app/android/lib/http/AjaxParams;"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hk/app/android/lib/http/AjaxParams;->putCommonTypeParam(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/hk/app/android/lib/http/AjaxParams;

    move-result-object v0

    return-object v0
.end method

.method public putCommonTypeParam(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/hk/app/android/lib/http/AjaxParams;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;TT;)",
            "Lcom/hk/app/android/lib/http/AjaxParams;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "value":Ljava/lang/Object;, "TT;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/hk/app/android/lib/http/params/CommonTypeParam;

    invoke-direct {v0, p1, p2, p3}, Lcom/hk/app/android/lib/http/params/CommonTypeParam;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/hk/app/android/lib/http/AjaxParams;->put(Lcom/hk/app/android/lib/http/params/CommonTypeParam;)Lcom/hk/app/android/lib/http/AjaxParams;

    move-result-object v0

    return-object v0
.end method

.method public putStringTypeParam(Ljava/lang/String;Ljava/lang/String;)Lcom/hk/app/android/lib/http/AjaxParams;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hk/app/android/lib/http/AjaxParams;->putStringTypeParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hk/app/android/lib/http/AjaxParams;

    move-result-object v0

    return-object v0
.end method

.method public putStringTypeParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hk/app/android/lib/http/AjaxParams;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lcom/hk/app/android/lib/http/params/StringTypeParam;

    invoke-direct {v0, p1, p2, p3}, Lcom/hk/app/android/lib/http/params/StringTypeParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hk/app/android/lib/http/AjaxParams;->put(Lcom/hk/app/android/lib/http/params/CommonTypeParam;)Lcom/hk/app/android/lib/http/AjaxParams;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/hk/app/android/lib/http/AjaxParams;->urlParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/hk/app/android/lib/http/AjaxParams;->fileParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/AjaxParams;->setEntityEmpty()V

    .line 121
    return-void
.end method

.method public setEntityEmpty()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hk/app/android/lib/http/AjaxParams;->entity:Lorg/apache/http/HttpEntity;

    .line 149
    return-void
.end method

.method public setFileParamValidatorParam(Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;)V
    .locals 0
    .param p1, "fileValidatorParam"    # Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/hk/app/android/lib/http/AjaxParams;->fileValidatorParam:Lcom/hk/app/android/lib/http/params/FileParamValidatorParam;

    .line 114
    invoke-virtual {p0}, Lcom/hk/app/android/lib/http/AjaxParams;->setEntityEmpty()V

    .line 115
    return-void
.end method
