.class public Lcom/dodonew/online/manager/ShortMsgHelper;
.super Ljava/lang/Object;
.source "ShortMsgHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;
    }
.end annotation


# instance fields
.field private lenght:I

.field private mActivity:Landroid/app/Activity;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;

.field private mPhone:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    iput v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->lenght:I

    .line 48
    new-instance v0, Lcom/dodonew/online/manager/ShortMsgHelper$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/manager/ShortMsgHelper$1;-><init>(Lcom/dodonew/online/manager/ShortMsgHelper;)V

    iput-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/dodonew/online/manager/ShortMsgHelper$2;

    iget-object v1, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/manager/ShortMsgHelper$2;-><init>(Lcom/dodonew/online/manager/ShortMsgHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mContentObserver:Landroid/database/ContentObserver;

    .line 38
    iput-object p1, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mPhone:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mTag:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "lenght"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    iput v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->lenght:I

    .line 48
    new-instance v0, Lcom/dodonew/online/manager/ShortMsgHelper$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/manager/ShortMsgHelper$1;-><init>(Lcom/dodonew/online/manager/ShortMsgHelper;)V

    iput-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/dodonew/online/manager/ShortMsgHelper$2;

    iget-object v1, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/manager/ShortMsgHelper$2;-><init>(Lcom/dodonew/online/manager/ShortMsgHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mContentObserver:Landroid/database/ContentObserver;

    .line 43
    iput-object p1, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mActivity:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mPhone:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mTag:Ljava/lang/String;

    .line 46
    iput p4, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->lenght:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/manager/ShortMsgHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/manager/ShortMsgHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/manager/ShortMsgHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/manager/ShortMsgHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/manager/ShortMsgHelper;Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/manager/ShortMsgHelper;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/manager/ShortMsgHelper;->getsmsyzm(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/manager/ShortMsgHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/manager/ShortMsgHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/manager/ShortMsgHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/manager/ShortMsgHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/dodonew/online/manager/ShortMsgHelper;->accessDateMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/manager/ShortMsgHelper;)Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/manager/ShortMsgHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mListener:Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/manager/ShortMsgHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/manager/ShortMsgHelper;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private accessDateMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v7, 0x0

    .line 136
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/inbox"

    .line 137
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "body"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "date"

    aput-object v4, v2, v3

    const-string v3, "type = 1"

    const/4 v4, 0x0

    const-string v5, "_id desc limit 0,1"

    .line 136
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 142
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "body":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 145
    .local v10, "date":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 146
    .local v8, "curDate":J
    invoke-static {}, Lcom/dodonew/online/manager/EGLogger;->getLogger()Lcom/dodonew/online/manager/EGLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/manager/EGLogger;->d(Ljava/lang/String;)V

    .line 148
    sub-long v0, v8, v10

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 149
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->lenght:I

    invoke-static {v6, v0}, Lcom/dodonew/online/manager/ShortMsgHelper;->getyzm(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 157
    if-eqz v7, :cond_0

    .line 158
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 159
    const/4 v7, 0x0

    .line 162
    .end local v6    # "body":Ljava/lang/String;
    .end local v8    # "curDate":J
    .end local v10    # "date":J
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :cond_1
    if-eqz v7, :cond_2

    .line 158
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 159
    const/4 v7, 0x0

    .line 162
    :cond_2
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 154
    :catch_0
    move-exception v12

    .line 155
    .local v12, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    if-eqz v7, :cond_2

    .line 158
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 159
    const/4 v7, 0x0

    goto :goto_1

    .line 157
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 158
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 159
    const/4 v7, 0x0

    :cond_3
    throw v0
.end method

.method private getsmsyzm(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "c"    # Landroid/app/Activity;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0xe

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 89
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "address"

    aput-object v0, v2, v10

    const-string v0, "read"

    aput-object v0, v2, v11

    const/4 v0, 0x3

    const-string v8, "body"

    aput-object v8, v2, v0

    .line 91
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, " address=? and read=?"

    .line 92
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    aput-object p2, v4, v9

    const-string v0, "0"

    aput-object v0, v4, v10

    .line 93
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v5, "_id desc"

    .local v5, "sortOrder":Ljava/lang/String;
    move-object v0, p1

    .line 94
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 95
    .local v7, "cur":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    const-string v0, "body"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, "\n"

    const-string v9, " "

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, "body":Ljava/lang/String;
    invoke-static {}, Lcom/dodonew/online/manager/EGLogger;->getLogger()Lcom/dodonew/online/manager/EGLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bofy:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/dodonew/online/manager/EGLogger;->d(Ljava/lang/String;)V

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v12, :cond_0

    .line 101
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 104
    :cond_0
    iget v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->lenght:I

    invoke-static {v6, v0}, Lcom/dodonew/online/manager/ShortMsgHelper;->getyzm(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .end local v6    # "body":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 106
    :cond_1
    if-eqz v7, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v12, :cond_2

    .line 107
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getyzm(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "YZMLENGTH"    # I

    .prologue
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(?<![a-zA-Z0-9])([a-zA-Z0-9]{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "})(?![a-zA-Z0-9])"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 125
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 126
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseCheckCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 168
    add-int/lit8 v1, v0, -0x4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public register()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    :cond_0
    return-void
.end method

.method public setLenght(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->lenght:I

    .line 33
    return-void
.end method

.method public setOnSmsAuthCodeListener(Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mListener:Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;

    .line 86
    return-void
.end method

.method public unRigister()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/manager/ShortMsgHelper;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 82
    :cond_0
    return-void
.end method
