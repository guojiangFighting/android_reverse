.class public Lcom/amap/api/mapcore/util/bu;
.super Ljava/lang/Thread;
.source "SDKCoordinatorDownload.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/dl$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/bu$a;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private a:Lcom/amap/api/mapcore/util/dl;

.field private b:Lcom/amap/api/mapcore/util/bu$a;

.field private c:Ljava/io/RandomAccessFile;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "sodownload"

    sput-object v0, Lcom/amap/api/mapcore/util/bu;->h:Ljava/lang/String;

    .line 63
    const-string v0, "sofail"

    sput-object v0, Lcom/amap/api/mapcore/util/bu;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/amap/api/mapcore/util/bu;->g:Landroid/content/Context;

    .line 76
    iput-object p4, p0, Lcom/amap/api/mapcore/util/bu;->f:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bu;->d:Ljava/lang/String;

    .line 78
    const-string v0, "libwgs2gcj.so"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/bu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bu;->e:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/amap/api/mapcore/util/bu$a;

    invoke-direct {v0, p3}, Lcom/amap/api/mapcore/util/bu$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bu;->b:Lcom/amap/api/mapcore/util/bu$a;

    .line 81
    new-instance v0, Lcom/amap/api/mapcore/util/dl;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bu;->b:Lcom/amap/api/mapcore/util/bu$a;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/dl;-><init>(Lcom/amap/api/mapcore/util/dp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bu;->a:Lcom/amap/api/mapcore/util/dl;

    .line 82
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "libso"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/bu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bu;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bu;->b:Lcom/amap/api/mapcore/util/bu$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bu;->b:Lcom/amap/api/mapcore/util/bu$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bu$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bu;->b:Lcom/amap/api/mapcore/util/bu$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bu$a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "libJni_wgs2gcj.so"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bu;->b:Lcom/amap/api/mapcore/util/bu$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bu$a;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bu;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bu;->start()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bu;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bu;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bu;->b()V

    .line 237
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bu;->g:Landroid/content/Context;

    const-string v2, "tempfile"

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/bu;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_2

    .line 240
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 244
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :cond_2
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    :try_start_2
    const-string v1, "SDKCoordinatorDownload"

    const-string v2, "onException"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 250
    :catch_1
    move-exception v0

    .line 251
    const-string v1, "SDKCoordinatorDownload"

    const-string v2, "onException"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a([BJ)V
    .locals 4

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bu;->c:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bu;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/bu;->c:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bu;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 159
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bu;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 170
    :goto_1
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 152
    :try_start_3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bu;->b()V

    .line 153
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 165
    :catch_1
    move-exception v0

    .line 166
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bu;->b()V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 160
    :catch_2
    move-exception v0

    .line 161
    :try_start_4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bu;->b()V

    .line 162
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method public d()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bu;->b()V

    .line 177
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bu;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bu;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bu;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/amap/api/mapcore/util/bu;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bu;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bu;->b()V

    .line 226
    :goto_0
    return-void

    .line 196
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bu;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/bu;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 198
    new-instance v0, Lcom/amap/api/mapcore/util/bv$a;

    sget-object v1, Lcom/amap/api/mapcore/util/bu;->h:Ljava/lang/String;

    const-string v2, "1.0.0"

    const-string v3, "sodownload_1.0.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/bv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/bv$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/bv$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bv$a;->a()Lcom/amap/api/mapcore/util/bv;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/amap/api/mapcore/util/bu;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bn;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bu;->b()V

    .line 211
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/bu;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 217
    :cond_2
    :try_start_1
    new-instance v1, Lcom/amap/api/mapcore/util/bv$a;

    sget-object v2, Lcom/amap/api/mapcore/util/bu;->i:Ljava/lang/String;

    const-string v3, "1.0.0"

    const-string v4, "sodownload_1.0.0"

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/bv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/bv$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/bv$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bv$a;->a()Lcom/amap/api/mapcore/util/bv;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/amap/api/mapcore/util/bu;->g:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/bn;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;)Z
    :try_end_1
    .catch Lcom/amap/api/mapcore/util/bl; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 203
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bu;->b()V

    .line 204
    new-instance v0, Lcom/amap/api/mapcore/util/bv$a;

    sget-object v1, Lcom/amap/api/mapcore/util/bu;->i:Ljava/lang/String;

    const-string v2, "1.0.0"

    const-string v3, "sodownload_1.0.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/bv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/bv$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/bv$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bv$a;->a()Lcom/amap/api/mapcore/util/bv;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/amap/api/mapcore/util/bu;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/bn;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 220
    :catch_1
    move-exception v1

    .line 221
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bl;->printStackTrace()V

    goto :goto_1
.end method

.method public run()V
    .locals 5

    .prologue
    .line 122
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bu;->g:Landroid/content/Context;

    const-string v2, "tempfile"

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/bu;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    new-instance v1, Lcom/amap/api/mapcore/util/bv$a;

    sget-object v2, Lcom/amap/api/mapcore/util/bu;->i:Ljava/lang/String;

    const-string v3, "1.0.0"

    const-string v4, "sodownload_1.0.0"

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/bv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/bv$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/bv$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bv$a;->a()Lcom/amap/api/mapcore/util/bv;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/amap/api/mapcore/util/bu;->g:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/amap/api/mapcore/util/bn;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/bv;)Z

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bu;->a:Lcom/amap/api/mapcore/util/dl;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/dl;->a(Lcom/amap/api/mapcore/util/dl$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bu;->b()V

    goto :goto_0
.end method
