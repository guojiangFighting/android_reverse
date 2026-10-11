.class Lcom/dodonew/online/DodonewOnlineApplication$1;
.super Ljava/lang/Object;
.source "DodonewOnlineApplication.java"

# interfaces
.implements Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/DodonewOnlineApplication;->initXiaoMiPush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/DodonewOnlineApplication;


# direct methods
.method constructor <init>(Lcom/dodonew/online/DodonewOnlineApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/DodonewOnlineApplication;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/dodonew/online/DodonewOnlineApplication$1;->this$0:Lcom/dodonew/online/DodonewOnlineApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 146
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 141
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 137
    return-void
.end method
