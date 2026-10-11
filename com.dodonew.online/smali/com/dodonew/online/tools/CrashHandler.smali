.class public Lcom/dodonew/online/tools/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final DEFAULT_LOG_DIR:Ljava/lang/String; = "log"

.field private static final FILE_NAME_SUFFIX:Ljava/lang/String; = ".log"

.field private static sInstance:Lcom/dodonew/online/tools/CrashHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public openUpload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/dodonew/online/tools/CrashHandler;->sInstance:Lcom/dodonew/online/tools/CrashHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/tools/CrashHandler;->openUpload:Z

    .line 39
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/tools/CrashHandler;->mDefaultCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 41
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/tools/CrashHandler;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static declared-synchronized create(Landroid/content/Context;)Lcom/dodonew/online/tools/CrashHandler;
    .locals 2
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 47
    const-class v1, Lcom/dodonew/online/tools/CrashHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dodonew/online/tools/CrashHandler;->sInstance:Lcom/dodonew/online/tools/CrashHandler;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/dodonew/online/tools/CrashHandler;

    invoke-direct {v0, p0}, Lcom/dodonew/online/tools/CrashHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dodonew/online/tools/CrashHandler;->sInstance:Lcom/dodonew/online/tools/CrashHandler;

    .line 50
    :cond_0
    sget-object v0, Lcom/dodonew/online/tools/CrashHandler;->sInstance:Lcom/dodonew/online/tools/CrashHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dumpPhoneInfo(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v2, p0, Lcom/dodonew/online/tools/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 94
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/dodonew/online/tools/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 95
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    const-string v2, "App Version: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    const/16 v2, 0x5f

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 98
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 99
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 102
    const-string v2, "OS Version: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 106
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 109
    const-string v2, "Vendor: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 114
    const-string v2, "Model: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 119
    const-string v2, "CPU ABI: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 122
    return-void
.end method

.method private saveToSDCard(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dodonew/online/tools/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yyyy-MM-dd-HH-mm-ss"

    .line 78
    invoke-static {v4}, Lcom/dodonew/online/tools/SystemTool;->getDataTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {v2, v3}, Lcom/dodonew/online/util/FileUtils;->getSaveFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 79
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 81
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v2}, Lcom/dodonew/online/tools/SystemTool;->getDataTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, v1}, Lcom/dodonew/online/tools/CrashHandler;->dumpPhoneInfo(Ljava/io/PrintWriter;)V

    .line 85
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 88
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 89
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    .line 61
    :try_start_0
    invoke-direct {p0, p2}, Lcom/dodonew/online/tools/CrashHandler;->saveToSDCard(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getInstance()Lcom/dodonew/online/DodonewOnlineApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dodonew/online/DodonewOnlineApplication;->AppExit(Landroid/content/Context;)V

    .line 73
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getInstance()Lcom/dodonew/online/DodonewOnlineApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dodonew/online/DodonewOnlineApplication;->AppExit(Landroid/content/Context;)V

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getInstance()Lcom/dodonew/online/DodonewOnlineApplication;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/dodonew/online/DodonewOnlineApplication;->AppExit(Landroid/content/Context;)V

    throw v0
.end method
