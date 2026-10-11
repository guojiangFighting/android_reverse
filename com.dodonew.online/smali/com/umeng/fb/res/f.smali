.class public Lcom/umeng/fb/res/f;
.super Ljava/lang/Object;
.source "LayoutMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 10
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_activity_conversation"

    .line 11
    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 15
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_reply_item_text"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 19
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_reply_item_audio"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 23
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_reply_item_image"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 27
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_fragment"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 32
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_contact"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 37
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_welcome_item"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 42
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_input_contact"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 47
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_contact_spinner"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static j(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 52
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_input_conversation"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static k(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 56
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_input_conversation_audio"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static l(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 61
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_audio_dialog"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static m(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 66
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_image_dialog"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static n(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 71
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_fragment_question"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static o(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 76
    invoke-static {p0}, Lcom/umeng/fb/util/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/util/Res;

    move-result-object v0

    const-string v1, "umeng_fb_activity_help"

    invoke-virtual {v0, v1}, Lcom/umeng/fb/util/Res;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
