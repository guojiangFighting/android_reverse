.class public final Lcom/alipay/sdk/util/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()V
    .locals 0

    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p0, Ljava/lang/Exception;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method private static b()V
    .locals 0

    return-void
.end method

.method private static c()V
    .locals 0

    return-void
.end method

.method private static d()V
    .locals 0

    return-void
.end method

.method private static e()V
    .locals 0

    return-void
.end method

.method private static f()V
    .locals 0

    return-void
.end method

.method private static g()V
    .locals 0

    return-void
.end method
