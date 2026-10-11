.class public Lcom/umeng/fb/image/b;
.super Ljava/lang/Object;
.source "ImageTool.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/umeng/fb/image/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/image/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 188
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 189
    const-string v0, "window"

    .line 190
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    check-cast v0, Landroid/view/WindowManager;

    .line 191
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 192
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v0, v2, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    return v0

    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 4

    .prologue
    .line 49
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 50
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 51
    int-to-float v2, p1

    const v3, 0x3eb851ec    # 0.36f

    mul-float/2addr v2, v3

    .line 52
    if-le v0, v1, :cond_0

    int-to-float v0, v0

    div-float/2addr v0, v2

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    int-to-float v0, v1

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 137
    if-nez p0, :cond_1

    .line 138
    const/4 p0, 0x0

    .line 151
    :cond_0
    :goto_0
    return-object p0

    .line 141
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    div-int/lit16 v0, v0, 0x400

    div-int/lit16 v0, v0, 0x400

    .line 144
    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    .line 145
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 146
    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    invoke-static {p0}, Lcom/umeng/fb/image/b;->b(Landroid/graphics/Bitmap;)V

    move-object p0, v0

    .line 149
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 37
    invoke-static {v0, p1}, Lcom/umeng/fb/image/b;->a(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 39
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/umeng/fb/image/b$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/fb/image/b$1;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 91
    invoke-virtual {v0, v1}, Lcom/umeng/fb/image/b$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 206
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 207
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 208
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 209
    const/4 v4, 0x4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 210
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 211
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 212
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v5, :cond_0

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v5, :cond_1

    .line 218
    :cond_0
    invoke-static {v1}, Lcom/umeng/fb/image/b;->b(Landroid/graphics/Bitmap;)V

    .line 220
    :goto_0
    return v0

    .line 218
    :cond_1
    invoke-static {v1}, Lcom/umeng/fb/image/b;->b(Landroid/graphics/Bitmap;)V

    .line 220
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 218
    invoke-static {v1}, Lcom/umeng/fb/image/b;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/umeng/fb/image/b;->b(Landroid/graphics/Bitmap;)V

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v0, 0x0

    .line 163
    const-class v2, Lcom/umeng/fb/image/b;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 164
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 165
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 166
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 167
    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 168
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 169
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v7, :cond_0

    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v7, :cond_1

    .line 179
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 171
    :cond_1
    :try_start_1
    iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v0, v4, :cond_2

    iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 172
    :goto_1
    invoke-static {p0}, Lcom/umeng/fb/image/b;->a(Landroid/content/Context;)I

    move-result v4

    .line 173
    if-le v0, v4, :cond_3

    div-int/2addr v0, v4

    .line 174
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 175
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 176
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 177
    const/4 v0, 0x0

    invoke-static {v1, v0, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 171
    :cond_2
    :try_start_2
    iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 173
    goto :goto_2
.end method

.method private static b(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 61
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/umeng/fb/image/b;->c(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 102
    const/4 v0, 0x1

    .line 104
    invoke-static {p0, p2}, Lcom/umeng/fb/util/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    :try_start_0
    invoke-static {p0, p1}, Lcom/umeng/fb/image/b;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/fb/image/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 111
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    if-eqz v1, :cond_0

    .line 113
    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-virtual {v1, v2, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    :cond_0
    invoke-static {v1}, Lcom/umeng/fb/image/b;->b(Landroid/graphics/Bitmap;)V

    .line 123
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 128
    :goto_0
    return v0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 116
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 117
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    const/4 v0, 0x0

    .line 121
    invoke-static {v1}, Lcom/umeng/fb/image/b;->b(Landroid/graphics/Bitmap;)V

    .line 123
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 124
    :catch_2
    move-exception v1

    .line 125
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/umeng/fb/image/b;->b(Landroid/graphics/Bitmap;)V

    .line 123
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 126
    :goto_3
    throw v0

    .line 124
    :catch_3
    move-exception v1

    .line 125
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 121
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_2

    .line 116
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method
