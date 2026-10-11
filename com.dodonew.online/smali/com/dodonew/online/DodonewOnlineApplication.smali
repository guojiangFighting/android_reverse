.class public Lcom/dodonew/online/DodonewOnlineApplication;
.super Landroid/app/Application;
.source "DodonewOnlineApplication.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static activityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static appVersion:Ljava/lang/String;

.field public static devId:Ljava/lang/String;

.field public static loginLabel:Ljava/lang/String;

.field public static loginUser:Lcom/dodonew/online/bean/User;

.field public static mContext:Landroid/content/Context;

.field public static mRequestQueue:Lcom/android/volley/RequestQueue;

.field private static mXiaoMiHandler:Lcom/dodonew/online/receiver/XiaoMiPushReceiver$XiaoMiHandler;

.field public static myLocation:Lcom/amap/api/location/AMapLocation;

.field private static sInstance:Lcom/dodonew/online/DodonewOnlineApplication;

.field public static store:Lcom/dodonew/online/bean/Store;

.field public static versionCode:I


# instance fields
.field public locationClient:Lcom/amap/api/location/AMapLocationClient;

.field private locationOption:Lcom/amap/api/location/AMapLocationClientOption;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const-class v0, Lcom/dodonew/online/DodonewOnlineApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->TAG:Ljava/lang/String;

    .line 47
    sput-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->appVersion:Ljava/lang/String;

    .line 53
    sput-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->activityList:Ljava/util/ArrayList;

    .line 55
    sput-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->sInstance:Lcom/dodonew/online/DodonewOnlineApplication;

    .line 62
    sput-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->mXiaoMiHandler:Lcom/dodonew/online/receiver/XiaoMiPushReceiver$XiaoMiHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/dodonew/online/DodonewOnlineApplication;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 58
    iput-object v0, p0, Lcom/dodonew/online/DodonewOnlineApplication;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    .line 68
    return-void
.end method

.method public static addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 205
    :cond_0
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 206
    return-void
.end method

.method public static cancelAll(Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/Object;

    .prologue
    .line 214
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 264
    const-string v0, "N_filelistener.h"

    const-string v1, "MyApplication Context is null \uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/dodonew/online/DodonewOnlineApplication;
    .locals 2

    .prologue
    .line 71
    const-class v1, Lcom/dodonew/online/DodonewOnlineApplication;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->sInstance:Lcom/dodonew/online/DodonewOnlineApplication;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/dodonew/online/DodonewOnlineApplication;

    invoke-direct {v0}, Lcom/dodonew/online/DodonewOnlineApplication;-><init>()V

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->sInstance:Lcom/dodonew/online/DodonewOnlineApplication;

    .line 74
    :cond_0
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->sInstance:Lcom/dodonew/online/DodonewOnlineApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getXiaoMiHandler()Lcom/dodonew/online/receiver/XiaoMiPushReceiver$XiaoMiHandler;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->mXiaoMiHandler:Lcom/dodonew/online/receiver/XiaoMiPushReceiver$XiaoMiHandler;

    return-object v0
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 96
    new-instance v2, Lcom/dodonew/online/bean/Store;

    invoke-direct {v2}, Lcom/dodonew/online/bean/Store;-><init>()V

    sput-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->store:Lcom/dodonew/online/bean/Store;

    .line 97
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->store:Lcom/dodonew/online/bean/Store;

    const-string v3, "188"

    invoke-virtual {v2, v3}, Lcom/dodonew/online/bean/Store;->setStoreId(Ljava/lang/String;)V

    .line 98
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->store:Lcom/dodonew/online/bean/Store;

    const-string v3, "http://219.133.59.27:9101/fileserver"

    invoke-virtual {v2, v3}, Lcom/dodonew/online/bean/Store;->setFileServer(Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 100
    .local v0, "gson":Lcom/google/gson/Gson;
    const-string v2, "DodonewUser"

    invoke-static {p0, v2}, Lcom/dodonew/online/util/Utils;->getJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "json":Ljava/lang/String;
    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->devId:Ljava/lang/String;

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->activityList:Ljava/util/ArrayList;

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    const-class v2, Lcom/dodonew/online/bean/User;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dodonew/online/bean/User;

    sput-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginUser:Lcom/dodonew/online/bean/User;

    .line 107
    const-string v2, "LOGINLABEL"

    invoke-static {p0, v2}, Lcom/dodonew/online/util/Utils;->getJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->loginLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method private initLocation()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v0, p0}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dodonew/online/DodonewOnlineApplication;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 114
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/DodonewOnlineApplication;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/DodonewOnlineApplication;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/DodonewOnlineApplication;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/dodonew/online/DodonewOnlineApplication;->locationOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 120
    iget-object v0, p0, Lcom/dodonew/online/DodonewOnlineApplication;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 121
    iget-object v0, p0, Lcom/dodonew/online/DodonewOnlineApplication;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 123
    return-void
.end method

.method private shouldInit()Z
    .locals 7

    .prologue
    .line 160
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/dodonew/online/DodonewOnlineApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 161
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 162
    .local v4, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {p0}, Lcom/dodonew/online/DodonewOnlineApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "mainProcessName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 164
    .local v3, "myPid":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 165
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v3, :cond_0

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 166
    const/4 v5, 0x1

    .line 169
    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public AppExit(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/dodonew/online/DodonewOnlineApplication;->removeAllActivity([Ljava/lang/Class;)Z

    .line 332
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exit(I)V

    goto :goto_0
.end method

.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 269
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->activityList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 270
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    return-void
.end method

.method public getVersion()V
    .locals 5

    .prologue
    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/dodonew/online/DodonewOnlineApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 254
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/dodonew/online/DodonewOnlineApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 255
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v3, Lcom/dodonew/online/DodonewOnlineApplication;->versionCode:I

    .line 256
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Lcom/dodonew/online/DodonewOnlineApplication;->appVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initXiaoMiPush()V
    .locals 3

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/dodonew/online/DodonewOnlineApplication;->shouldInit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "2882303761517297474"

    const-string v2, "5651729784474"

    invoke-static {p0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "dodo"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    new-instance v0, Lcom/dodonew/online/DodonewOnlineApplication$1;

    invoke-direct {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication$1;-><init>(Lcom/dodonew/online/DodonewOnlineApplication;)V

    .line 149
    .local v0, "newLogger":Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/Logger;->setLogger(Landroid/content/Context;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    .line 150
    sget-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->mXiaoMiHandler:Lcom/dodonew/online/receiver/XiaoMiPushReceiver$XiaoMiHandler;

    if-nez v1, :cond_1

    .line 151
    new-instance v1, Lcom/dodonew/online/receiver/XiaoMiPushReceiver$XiaoMiHandler;

    invoke-virtual {p0}, Lcom/dodonew/online/DodonewOnlineApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dodonew/online/receiver/XiaoMiPushReceiver$XiaoMiHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/dodonew/online/DodonewOnlineApplication;->mXiaoMiHandler:Lcom/dodonew/online/receiver/XiaoMiPushReceiver$XiaoMiHandler;

    .line 152
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 79
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 80
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 81
    sput-object p0, Lcom/dodonew/online/DodonewOnlineApplication;->sInstance:Lcom/dodonew/online/DodonewOnlineApplication;

    .line 82
    sput-object p0, Lcom/dodonew/online/DodonewOnlineApplication;->mContext:Landroid/content/Context;

    .line 83
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/dodonew/online/DodonewOnlineApplication;->initData()V

    .line 88
    invoke-static {p0}, Lcom/dodonew/online/tools/CrashHandler;->create(Landroid/content/Context;)Lcom/dodonew/online/tools/CrashHandler;

    .line 89
    invoke-virtual {p0}, Lcom/dodonew/online/DodonewOnlineApplication;->initXiaoMiPush()V

    .line 90
    invoke-direct {p0}, Lcom/dodonew/online/DodonewOnlineApplication;->initLocation()V

    .line 91
    invoke-virtual {p0}, Lcom/dodonew/online/DodonewOnlineApplication;->getVersion()V

    .line 92
    invoke-static {p0}, Lcom/umeng/fb/push/FeedbackPush;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/push/FeedbackPush;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/fb/push/FeedbackPush;->init(Z)V

    .line 93
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 3
    .param p1, "aMapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 222
    sput-object p1, Lcom/dodonew/online/DodonewOnlineApplication;->myLocation:Lcom/amap/api/location/AMapLocation;

    .line 223
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/dodonew/online/bean/LocationEvent;

    invoke-direct {v1, p1}, Lcom/dodonew/online/bean/LocationEvent;-><init>(Lcom/amap/api/location/AMapLocation;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p0}, Lcom/dodonew/online/DodonewOnlineApplication;->stopLocation()V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const-string v0, "AmapError"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location Error, ErrCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 275
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->activityList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 276
    sget-object v0, Lcom/dodonew/online/DodonewOnlineApplication;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    return-void
.end method

.method public removeActivity(Ljava/lang/Class;)V
    .locals 3
    .param p1, "mClass"    # Ljava/lang/Class;

    .prologue
    .line 281
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->activityList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 282
    sget-object v2, Lcom/dodonew/online/DodonewOnlineApplication;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 283
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/Activity;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 285
    .local v1, "temp":Landroid/app/Activity;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 286
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 291
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/Activity;>;"
    .end local v1    # "temp":Landroid/app/Activity;
    :cond_1
    return-void
.end method

.method public varargs removeAllActivity([Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "ignore":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 301
    .local v0, "bIgnoreSuccess":Z
    sget-object v6, Lcom/dodonew/online/DodonewOnlineApplication;->activityList:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/dodonew/online/DodonewOnlineApplication;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 302
    sget-object v6, Lcom/dodonew/online/DodonewOnlineApplication;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 303
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/Activity;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 304
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 305
    .local v5, "temp":Landroid/app/Activity;
    const/4 v3, 0x0

    .line 306
    .local v3, "ignoreActivity":Z
    if-eqz p1, :cond_1

    if-eqz v5, :cond_1

    .line 307
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, p1

    if-ge v2, v6, :cond_1

    .line 308
    aget-object v1, p1, v2

    .line 309
    .local v1, "class1":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v1, :cond_2

    .line 310
    const/4 v3, 0x1

    .line 311
    const/4 v0, 0x1

    .line 315
    .end local v1    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v2    # "i":I
    :cond_1
    if-nez v3, :cond_0

    .line 317
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 318
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 319
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 307
    .restart local v1    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 323
    .end local v1    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v2    # "i":I
    .end local v3    # "ignoreActivity":Z
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/Activity;>;"
    .end local v5    # "temp":Landroid/app/Activity;
    :cond_3
    return v0
.end method

.method public stopLocation()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dodonew/online/DodonewOnlineApplication;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/dodonew/online/DodonewOnlineApplication;->locationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 194
    :cond_0
    return-void
.end method
