.class Lde/greenrobot/event/SubscriberMethodFinder;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"


# static fields
.field private static final BRIDGE:I = 0x40

.field private static final MODIFIERS_IGNORE:I = 0x1448

.field private static final ON_EVENT_METHOD_NAME:Ljava/lang/String; = "onEvent"

.field private static final SYNTHETIC:I = 0x1000

.field private static final methodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final skipMethodVerificationForClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "skipMethodVerificationForClassesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 49
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    invoke-interface {v2, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static clearCaches()V
    .locals 2

    .prologue
    .line 130
    sget-object v1, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    monitor-exit v1

    .line 133
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method findSubscriberMethods(Ljava/lang/Class;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "subscriberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "key":Ljava/lang/String;
    sget-object v19, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    monitor-enter v19

    .line 58
    :try_start_0
    sget-object v18, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 57
    .local v15, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    monitor-exit v19

    .line 60
    if-eqz v15, :cond_0

    move-object/from16 v16, v15

    .line 125
    .end local v15    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    .local v16, "subscriberMethods":Ljava/lang/Object;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :goto_0
    return-object v16

    .line 57
    .end local v16    # "subscriberMethods":Ljava/lang/Object;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 63
    .restart local v15    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .restart local v15    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    move-object/from16 v2, p1

    .line 65
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 66
    .local v4, "eventTypesFound":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v8, "methodKeyBuilder":Ljava/lang/StringBuilder;
    :goto_1
    if-nez v2, :cond_2

    .line 118
    :cond_1
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 119
    new-instance v18, Lde/greenrobot/event/EventBusException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Subscriber "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " has no public methods called "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 120
    const-string v20, "onEvent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 119
    invoke-direct/range {v18 .. v19}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 68
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    .line 69
    .local v13, "name":Ljava/lang/String;
    const-string v18, "java."

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "javax."

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "android."

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 75
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 76
    .local v10, "methods":[Ljava/lang/reflect/Method;
    array-length v0, v10

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 116
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    .line 76
    :cond_3
    aget-object v6, v10, v18

    .line 77
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "methodName":Ljava/lang/String;
    const-string v20, "onEvent"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 79
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    .line 80
    .local v12, "modifiers":I
    and-int/lit8 v20, v12, 0x1

    if-eqz v20, :cond_9

    and-int/lit16 v0, v12, 0x1448

    move/from16 v20, v0

    if-nez v20, :cond_9

    .line 81
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    .line 82
    .local v14, "parameterTypes":[Ljava/lang/Class;
    array-length v0, v14

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 83
    const-string v20, "onEvent"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, "modifierString":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_5

    .line 86
    sget-object v17, Lde/greenrobot/event/ThreadMode;->PostThread:Lde/greenrobot/event/ThreadMode;

    .line 100
    .local v17, "threadMode":Lde/greenrobot/event/ThreadMode;
    :goto_3
    const/16 v20, 0x0

    aget-object v3, v14, v20

    .line 101
    .local v3, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 102
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/16 v20, 0x3e

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "methodKey":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 107
    new-instance v20, Lde/greenrobot/event/SubscriberMethod;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1, v3}, Lde/greenrobot/event/SubscriberMethod;-><init>(Ljava/lang/reflect/Method;Lde/greenrobot/event/ThreadMode;Ljava/lang/Class;)V

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v3    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "methodKey":Ljava/lang/String;
    .end local v11    # "modifierString":Ljava/lang/String;
    .end local v12    # "modifiers":I
    .end local v14    # "parameterTypes":[Ljava/lang/Class;
    .end local v17    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_4
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 87
    .restart local v11    # "modifierString":Ljava/lang/String;
    .restart local v12    # "modifiers":I
    .restart local v14    # "parameterTypes":[Ljava/lang/Class;
    :cond_5
    const-string v20, "MainThread"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 88
    sget-object v17, Lde/greenrobot/event/ThreadMode;->MainThread:Lde/greenrobot/event/ThreadMode;

    .line 89
    .restart local v17    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_3

    .end local v17    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_6
    const-string v20, "BackgroundThread"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 90
    sget-object v17, Lde/greenrobot/event/ThreadMode;->BackgroundThread:Lde/greenrobot/event/ThreadMode;

    .line 91
    .restart local v17    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_3

    .end local v17    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_7
    const-string v20, "Async"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 92
    sget-object v17, Lde/greenrobot/event/ThreadMode;->Async:Lde/greenrobot/event/ThreadMode;

    .line 93
    .restart local v17    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_3

    .line 94
    .end local v17    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 97
    new-instance v18, Lde/greenrobot/event/EventBusException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Illegal onEvent method, check for typos: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 110
    .end local v11    # "modifierString":Ljava/lang/String;
    .end local v14    # "parameterTypes":[Ljava/lang/Class;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 111
    sget-object v20, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Skipping method (not public, static or abstract): "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 112
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 111
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 122
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "methodName":Ljava/lang/String;
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v12    # "modifiers":I
    .end local v13    # "name":Ljava/lang/String;
    :cond_a
    sget-object v19, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    monitor-enter v19

    .line 123
    :try_start_1
    sget-object v18, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    monitor-exit v19

    move-object/from16 v16, v15

    .line 125
    .restart local v16    # "subscriberMethods":Ljava/lang/Object;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    goto/16 :goto_0

    .line 122
    .end local v16    # "subscriberMethods":Ljava/lang/Object;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :catchall_1
    move-exception v18

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v18
.end method
