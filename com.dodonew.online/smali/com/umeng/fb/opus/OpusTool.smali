.class public Lcom/umeng/fb/opus/OpusTool;
.super Ljava/lang/Object;
.source "OpusTool.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-class v0, Lcom/umeng/fb/opus/OpusTool;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/opus/OpusTool;->a:Ljava/lang/String;

    .line 19
    :try_start_0
    const-string v0, "umeng_opustool"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    sget-object v0, Lcom/umeng/fb/opus/OpusTool;->a:Ljava/lang/String;

    const-string v1, "Could not load library of opustool"

    invoke-static {v0, v1}, Lcom/umeng/fb/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/umeng/fb/opus/OpusTool;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/common/b;->a(Landroid/content/Context;)Lcom/umeng/fb/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/fb/common/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/umeng/fb/opus/OpusTool;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/common/b;->a(Landroid/content/Context;)Lcom/umeng/fb/common/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/fb/common/b;->c(Z)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sput-object p1, Lcom/umeng/fb/opus/OpusTool;->b:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/umeng/fb/opus/OpusTool;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/common/b;->a(Landroid/content/Context;)Lcom/umeng/fb/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/fb/common/b;->d()Z

    move-result v0

    return v0
.end method

.method private native decode_opus_file(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native encode_wav_file(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetString()Ljava/lang/String;
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lcom/umeng/fb/opus/OpusTool;->a:Ljava/lang/String;

    const-string v1, "opus is not exists"

    invoke-static {v0, v1}, Lcom/umeng/fb/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, -0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/umeng/fb/opus/OpusTool;->decode_opus_file(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/umeng/fb/opus/OpusTool;->a:Ljava/lang/String;

    const-string v1, "wave is not exists"

    invoke-static {v0, v1}, Lcom/umeng/fb/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, -0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/umeng/fb/opus/OpusTool;->encode_wav_file(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
