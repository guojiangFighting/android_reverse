.class public Lcom/dodonew/online/manager/EGLogger;
.super Ljava/lang/Object;
.source "EGLogger.java"


# static fields
.field private static logFlag:Z

.field private static logLevel:I

.field private static mLog:Lcom/dodonew/online/manager/EGLogger;

.field private static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "EGLogger"

    sput-object v0, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    .line 12
    const/4 v0, 0x2

    sput v0, Lcom/dodonew/online/manager/EGLogger;->logLevel:I

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dodonew/online/manager/EGLogger;->logFlag:Z

    .line 16
    new-instance v0, Lcom/dodonew/online/manager/EGLogger;

    invoke-direct {v0}, Lcom/dodonew/online/manager/EGLogger;-><init>()V

    sput-object v0, Lcom/dodonew/online/manager/EGLogger;->mLog:Lcom/dodonew/online/manager/EGLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private getFunctionName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 45
    .local v1, "sts":[Ljava/lang/StackTraceElement;
    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v2

    .line 49
    :cond_1
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 50
    .local v0, "st":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 49
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 58
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLogger()Lcom/dodonew/online/manager/EGLogger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/dodonew/online/manager/EGLogger;->mLog:Lcom/dodonew/online/manager/EGLogger;

    return-object v0
.end method

.method public static setLogFlag(Z)V
    .locals 0
    .param p0, "hasLog"    # Z

    .prologue
    .line 29
    sput-boolean p0, Lcom/dodonew/online/manager/EGLogger;->logFlag:Z

    .line 30
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 34
    sput p0, Lcom/dodonew/online/manager/EGLogger;->logLevel:I

    .line 35
    return-void
.end method

.method public static setLogTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "logTag"    # Ljava/lang/String;

    .prologue
    .line 24
    sput-object p0, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 197
    sget-boolean v1, Lcom/dodonew/online/manager/EGLogger;->logFlag:Z

    if-nez v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    sget v1, Lcom/dodonew/online/manager/EGLogger;->logLevel:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/dodonew/online/manager/EGLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 203
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_2
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 212
    sget-boolean v1, Lcom/dodonew/online/manager/EGLogger;->logFlag:Z

    if-nez v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    sget v1, Lcom/dodonew/online/manager/EGLogger;->logLevel:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/dodonew/online/manager/EGLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 218
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 220
    :cond_2
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-boolean v1, Lcom/dodonew/online/manager/EGLogger;->logFlag:Z

    if-nez v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    sget v1, Lcom/dodonew/online/manager/EGLogger;->logLevel:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/dodonew/online/manager/EGLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 166
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_2
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    sget-boolean v1, Lcom/dodonew/online/manager/EGLogger;->logFlag:Z

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    sget v1, Lcom/dodonew/online/manager/EGLogger;->logLevel:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/dodonew/online/manager/EGLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 180
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 182
    :cond_2
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 188
    sget-boolean v0, Lcom/dodonew/online/manager/EGLogger;->logFlag:Z

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    sget v0, Lcom/dodonew/online/manager/EGLogger;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 192
    sget-object v0, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    const-string v1, "error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-boolean v1, Lcom/dodonew/online/manager/EGLogger;->logFlag:Z

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sget v1, Lcom/dodonew/online/manager/EGLogger;->logLevel:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/dodonew/online/manager/EGLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 76
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_2
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    sget-boolean v1, Lcom/dodonew/online/manager/EGLogger;->logFlag:Z

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    sget v1, Lcom/dodonew/online/manager/EGLogger;->logLevel:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/dodonew/online/manager/EGLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 90
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 92
    :cond_2
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public v(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-boolean v1, Lcom/dodonew/online/manager/EGLogger;->logFlag:Z

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    sget v1, Lcom/dodonew/online/manager/EGLogger;->logLevel:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/dodonew/online/manager/EGLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 104
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_2
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 113
    sget-boolean v1, Lcom/dodonew/online/manager/EGLogger;->logFlag:Z

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sget v1, Lcom/dodonew/online/manager/EGLogger;->logLevel:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/dodonew/online/manager/EGLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 119
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 121
    :cond_2
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public w(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-boolean v1, Lcom/dodonew/online/manager/EGLogger;->logFlag:Z

    if-nez v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    sget v1, Lcom/dodonew/online/manager/EGLogger;->logLevel:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/dodonew/online/manager/EGLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 135
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_2
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 144
    sget-boolean v1, Lcom/dodonew/online/manager/EGLogger;->logFlag:Z

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    sget v1, Lcom/dodonew/online/manager/EGLogger;->logLevel:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/dodonew/online/manager/EGLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 151
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 153
    :cond_2
    sget-object v1, Lcom/dodonew/online/manager/EGLogger;->tag:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
