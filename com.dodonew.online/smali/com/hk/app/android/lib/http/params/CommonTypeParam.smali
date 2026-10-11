.class public Lcom/hk/app/android/lib/http/params/CommonTypeParam;
.super Ljava/lang/Object;
.source "CommonTypeParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/hk/app/android/lib/http/params/CommonTypeParam;, "Lcom/hk/app/android/lib/http/params/CommonTypeParam<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/hk/app/android/lib/http/params/CommonTypeParam;->key:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p2, p3}, Lcom/hk/app/android/lib/http/params/CommonTypeParam;->getValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hk/app/android/lib/http/params/CommonTypeParam;->value:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method protected getValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/hk/app/android/lib/http/params/CommonTypeParam;, "Lcom/hk/app/android/lib/http/params/CommonTypeParam<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    .local p2, "defV":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
