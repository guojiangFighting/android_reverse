.class public final Lcom/Install/MultiDex/MultiDex$V14;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Install/MultiDex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V14"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Install/MultiDex/MultiDex$V14$ElementConstructor;,
        Lcom/Install/MultiDex/MultiDex$V14$ICSElementConstructor;,
        Lcom/Install/MultiDex/MultiDex$V14$JBMR11ElementConstructor;,
        Lcom/Install/MultiDex/MultiDex$V14$JBMR2ElementConstructor;
    }
.end annotation


# static fields
.field public static final EXTRACTED_SUFFIX_LENGTH:I


# instance fields
.field public final elementConstructor:Lcom/Install/MultiDex/MultiDex$V14$ElementConstructor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 310
    const-string v0, ".zip"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/Install/MultiDex/MultiDex$V14;->EXTRACTED_SUFFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const-string v4, "dalvik.system.DexPathList$Element"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 331
    .local v1, "elementClass":Ljava/lang/Class;
    :try_start_0
    new-instance v0, Lcom/Install/MultiDex/MultiDex$V14$ICSElementConstructor;

    invoke-direct {v0, v1}, Lcom/Install/MultiDex/MultiDex$V14$ICSElementConstructor;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    iput-object v0, p0, Lcom/Install/MultiDex/MultiDex$V14;->elementConstructor:Lcom/Install/MultiDex/MultiDex$V14$ElementConstructor;

    .line 341
    return-void

    .line 332
    :catch_0
    move-exception v3

    .line 334
    .local v3, "var6":Ljava/lang/NoSuchMethodException;
    :try_start_1
    new-instance v0, Lcom/Install/MultiDex/MultiDex$V14$JBMR11ElementConstructor;

    invoke-direct {v0, v1}, Lcom/Install/MultiDex/MultiDex$V14$JBMR11ElementConstructor;-><init>(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    .local v0, "constructor":Lcom/Install/MultiDex/MultiDex$V14$JBMR11ElementConstructor;
    move-object v3, v0

    move-object v0, v3

    goto :goto_0

    .line 335
    .end local v0    # "constructor":Lcom/Install/MultiDex/MultiDex$V14$JBMR11ElementConstructor;
    :catch_1
    move-exception v2

    .line 336
    .local v2, "var5":Ljava/lang/NoSuchMethodException;
    new-instance v0, Lcom/Install/MultiDex/MultiDex$V14$JBMR2ElementConstructor;

    invoke-direct {v0, v1}, Lcom/Install/MultiDex/MultiDex$V14$JBMR2ElementConstructor;-><init>(Ljava/lang/Class;)V

    .local v0, "constructor":Lcom/Install/MultiDex/MultiDex$V14$JBMR2ElementConstructor;
    goto :goto_0
.end method

.method public static install(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "additionalClassPathEntries":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    const-string v4, "pathList"

    invoke-static {p0, v4}, Lcom/Install/MultiDex/MultiDex;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 315
    .local v2, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    .local v0, "dexPathList":Ljava/lang/Object;
    new-instance v4, Lcom/Install/MultiDex/MultiDex$V14;

    invoke-direct {v4}, Lcom/Install/MultiDex/MultiDex$V14;-><init>()V

    invoke-virtual {v4, p1}, Lcom/Install/MultiDex/MultiDex$V14;->makeDexElements(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v1

    .line 319
    .local v1, "elements":[Ljava/lang/Object;
    :try_start_0
    const-string v4, "dexElements"

    invoke-static {v0, v4, v1}, Lcom/Install/MultiDex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v3

    .line 321
    .local v3, "var6":Ljava/lang/NoSuchFieldException;
    const-string v4, "pathElements"

    invoke-static {v0, v4, v1}, Lcom/Install/MultiDex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static optimizedPathFor(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 355
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 356
    .local v1, "optimizedDirectory":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/Install/MultiDex/MultiDex$V14;->EXTRACTED_SUFFIX_LENGTH:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "optimizedFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    .local v3, "result":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public final makeDexElements(Ljava/util/List;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/Object;

    .line 346
    .local v0, "elements":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 347
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 348
    .local v1, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/Install/MultiDex/MultiDex$V14;->elementConstructor:Lcom/Install/MultiDex/MultiDex$V14$ElementConstructor;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/Install/MultiDex/MultiDex$V14;->optimizedPathFor(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/Install/MultiDex/MultiDex$V14$ElementConstructor;->newInstance(Ljava/io/File;Ldalvik/system/DexFile;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-object v0
.end method
