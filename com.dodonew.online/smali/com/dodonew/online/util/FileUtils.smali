.class public Lcom/dodonew/online/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final FILE_EXTENSION_SEPARATOR:Ljava/lang/String; = "."

.field private static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "desPath"    # Ljava/lang/String;
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 590
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 591
    :cond_0
    const-string v9, "FileUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "desPath:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "    srcPath:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_1
    :goto_0
    return v8

    .line 595
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 596
    const-string v9, "FileUtil"

    const-string v10, "can not copy the same dir!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    :cond_3
    const/4 v8, 0x1

    .line 601
    .local v8, "success":Z
    invoke-static {v10, p1, v12}, Lcom/dodonew/online/util/FileUtils;->getAllChildDirs(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 602
    .local v4, "srcDirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {v10, p1, v12}, Lcom/dodonew/online/util/FileUtils;->getAllChildFiles(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    .line 604
    .local v7, "srcFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 605
    .local v2, "srcDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, "srcDirPath":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "desDirPath":Ljava/lang/String;
    invoke-static {v0, v12}, Lcom/dodonew/online/util/FileUtils;->createDir(Ljava/lang/String;Z)Ljava/io/File;

    goto :goto_1

    .line 610
    .end local v0    # "desDirPath":Ljava/lang/String;
    .end local v2    # "srcDir":Ljava/io/File;
    .end local v3    # "srcDirPath":Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 611
    .local v5, "srcFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 612
    .local v6, "srcFilePath":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "desFilePath":Ljava/lang/String;
    invoke-static {v1, v6}, Lcom/dodonew/online/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 614
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "desPath"    # Ljava/lang/String;
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 563
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 564
    :cond_0
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "desPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    srcPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_0
    return v2

    .line 568
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    .local v1, "srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 570
    :cond_2
    const-string v3, "FileUtil"

    const-string v4, "srcFile not exists or is dir!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 574
    :cond_3
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/dodonew/online/util/FileUtils;->createFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 575
    .local v0, "desFile":Ljava/io/File;
    if-nez v0, :cond_4

    .line 576
    const-string v3, "FileUtil"

    const-string v4, "desFile can not create!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :cond_4
    invoke-static {v0, v1, v2}, Lcom/dodonew/online/util/FileUtils;->writeFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public static createDir(Ljava/lang/String;Z)Ljava/io/File;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "delete"    # Z

    .prologue
    .line 446
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    if-eqz p1, :cond_0

    .line 449
    invoke-static {p0}, Lcom/dodonew/online/util/FileUtils;->deleteDir(Ljava/lang/String;)Z

    .line 452
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 453
    return-object v0
.end method

.method public static createFile(Ljava/lang/String;Z)Ljava/io/File;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "delete"    # Z

    .prologue
    const/4 v2, 0x0

    .line 410
    if-nez p0, :cond_1

    move-object v1, v2

    .line 436
    :cond_0
    :goto_0
    return-object v1

    .line 414
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 419
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 420
    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 434
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    move-object v1, v2

    .line 424
    goto :goto_0

    .line 427
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 428
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/dodonew/online/util/FileUtils;->createDir(Ljava/lang/String;Z)Ljava/io/File;

    .line 430
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static deleteChildDirs(Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 543
    if-nez p0, :cond_1

    .line 544
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v2, 0x0

    .line 553
    :cond_0
    return v2

    .line 548
    :cond_1
    const/4 v2, 0x1

    .line 549
    .local v2, "success":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, p0, v4}, Lcom/dodonew/online/util/FileUtils;->getChildDirs(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 550
    .local v1, "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 551
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dodonew/online/util/FileUtils;->deleteDir(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static deleteChildFiles(Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 522
    if-nez p0, :cond_1

    .line 523
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v2, 0x0

    .line 534
    :cond_0
    return v2

    .line 527
    :cond_1
    const/4 v2, 0x1

    .line 528
    .local v2, "success":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, p0, v4}, Lcom/dodonew/online/util/FileUtils;->getChildFiles(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 529
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 530
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 531
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deleteDir(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-static {p0}, Lcom/dodonew/online/util/FileUtils;->deleteChildFiles(Ljava/lang/String;)Z

    move-result v2

    .line 472
    .local v2, "success":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, p0, v4}, Lcom/dodonew/online/util/FileUtils;->getChildDirs(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 473
    .local v1, "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 474
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dodonew/online/util/FileUtils;->deleteDir(Ljava/lang/String;)Z

    goto :goto_0

    .line 476
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    invoke-static {p0}, Lcom/dodonew/online/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 477
    return v2
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 462
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static deleteFileOrDir(Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 492
    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v2

    .line 496
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 500
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 503
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 504
    goto :goto_0

    .line 506
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v0, v2, v3

    .line 507
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 508
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 506
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 509
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 510
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dodonew/online/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_2

    .line 513
    .end local v0    # "f":Ljava/io/File;
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method public static getAllChildDirs(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;
    .locals 5
    .param p0, "filter"    # Ljava/io/FileFilter;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "includeHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileFilter;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {p0, p1, p2}, Lcom/dodonew/online/util/FileUtils;->getChildDirs(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    invoke-static {p0, p1, p2}, Lcom/dodonew/online/util/FileUtils;->getChildDirs(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 397
    .local v1, "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 398
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lcom/dodonew/online/util/FileUtils;->getAllChildDirs(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 400
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    return-object v2
.end method

.method public static getAllChildFiles(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;
    .locals 5
    .param p0, "filter"    # Ljava/io/FileFilter;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "includeHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileFilter;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {p0, p1, p2}, Lcom/dodonew/online/util/FileUtils;->getChildFiles(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 377
    const/4 v3, 0x0

    invoke-static {v3, p1, p2}, Lcom/dodonew/online/util/FileUtils;->getChildDirs(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 378
    .local v1, "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 379
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lcom/dodonew/online/util/FileUtils;->getAllChildFiles(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 381
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    return-object v2
.end method

.method public static getChildDirs(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .param p0, "filter"    # Ljava/io/FileFilter;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "includeHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileFilter;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v1, "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    invoke-virtual {v2, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 348
    .local v3, "fileArray":[Ljava/io/File;
    if-eqz v3, :cond_2

    .line 349
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v3, v4

    .line 350
    .local v0, "childFile":Ljava/io/File;
    if-eqz p2, :cond_1

    .line 351
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 352
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v6

    if-nez v6, :cond_0

    .line 356
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 363
    .end local v0    # "childFile":Ljava/io/File;
    .end local v3    # "fileArray":[Ljava/io/File;
    :cond_2
    return-object v1
.end method

.method public static getChildFiles(Ljava/io/FileFilter;Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .param p0, "filter"    # Ljava/io/FileFilter;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "includeHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileFilter;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 317
    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 318
    .local v2, "fileArray":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 319
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    .line 320
    .local v0, "childFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 321
    if-eqz p2, :cond_1

    .line 322
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v6

    if-nez v6, :cond_0

    .line 325
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 333
    .end local v0    # "childFile":Ljava/io/File;
    .end local v2    # "fileArray":[Ljava/io/File;
    :cond_2
    return-object v3
.end method

.method public static getDirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 755
    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    .end local p0    # "filePath":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 759
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 760
    .local v0, "filePosi":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ""

    :goto_1
    move-object p0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static getDirSize(Ljava/io/File;)J
    .locals 8
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 831
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 832
    .local v1, "files":[Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 833
    .local v2, "size":J
    if-eqz v1, :cond_1

    .line 834
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 835
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 836
    invoke-static {v0}, Lcom/dodonew/online/util/FileUtils;->getDirSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 834
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 838
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dodonew/online/util/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1

    .line 843
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    return-wide v2
.end method

.method public static getDirSize(Ljava/lang/String;)J
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 847
    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 851
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dodonew/online/util/FileUtils;->getDirSize(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 795
    .end local p0    # "filePath":Ljava/lang/String;
    .local v0, "extenPosi":I
    .local v1, "filePosi":I
    :goto_0
    return-object p0

    .line 790
    .end local v0    # "extenPosi":I
    .end local v1    # "filePosi":I
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 791
    .restart local v0    # "extenPosi":I
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 792
    .restart local v1    # "filePosi":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 793
    const-string p0, ""

    goto :goto_0

    .line 795
    :cond_1
    if-lt v1, v0, :cond_2

    const-string v2, ""

    :goto_1
    move-object p0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 723
    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    .end local p0    # "filePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 727
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 728
    .local v0, "filePosi":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 686
    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    .end local p0    # "filePath":Ljava/lang/String;
    .local v0, "extenPosi":I
    .local v1, "filePosi":I
    :cond_0
    :goto_0
    return-object p0

    .line 690
    .end local v0    # "extenPosi":I
    .end local v1    # "filePosi":I
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_1
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 691
    .restart local v0    # "extenPosi":I
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 692
    .restart local v1    # "filePosi":I
    if-ne v1, v3, :cond_2

    .line 693
    if-eq v0, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 695
    :cond_2
    if-ne v0, v3, :cond_3

    .line 696
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 698
    :cond_3
    if-ge v1, v0, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object p0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const-wide/16 v0, -0x1

    .line 818
    if-nez p0, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 809
    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    const-wide/16 v2, -0x1

    .line 814
    :goto_0
    return-wide v2

    .line 813
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 814
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/dodonew/online/util/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getSaveFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "folderPath"    # Ljava/lang/String;
    .param p1, "fileNmae"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/dodonew/online/util/FileUtils;->getSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSaveFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "folderName"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 103
    return-object v0
.end method

.method public static getSavePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "folderName"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0}, Lcom/dodonew/online/util/FileUtils;->getSaveFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDirExist(Ljava/lang/String;)Z
    .locals 3
    .param p0, "directoryPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 876
    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 881
    :cond_0
    :goto_0
    return v1

    .line 880
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 881
    .local v0, "dire":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 861
    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v1

    .line 865
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 866
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static moveDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "desPath"    # Ljava/lang/String;
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 640
    invoke-static {p0, p1}, Lcom/dodonew/online/util/FileUtils;->copyDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 641
    .local v0, "success":Z
    invoke-static {p1}, Lcom/dodonew/online/util/FileUtils;->deleteDir(Ljava/lang/String;)Z

    .line 642
    return v0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "desPath"    # Ljava/lang/String;
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 628
    invoke-static {p0, p1}, Lcom/dodonew/online/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 629
    .local v0, "success":Z
    invoke-static {p1}, Lcom/dodonew/online/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 630
    return v0
.end method

.method public static readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "fileContent":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    .line 118
    :cond_0
    const/4 v2, 0x0

    .line 141
    .end local v2    # "fileContent":Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    return-object v2

    .line 121
    .restart local v2    # "fileContent":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v5, 0x0

    .line 123
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 124
    .local v3, "is":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 126
    .local v4, "line":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 128
    const-string v7, "\r\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 135
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException occurred. "

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v5, :cond_4

    .line 139
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 141
    :cond_4
    throw v7

    .line 132
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    if-eqz v6, :cond_1

    .line 139
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException occurred. "

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 140
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException occurred. "

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 134
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static readFileToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v2, "fileContent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    .line 159
    :cond_0
    const/4 v2, 0x0

    .line 179
    .end local v2    # "fileContent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-object v2

    .line 162
    .restart local v2    # "fileContent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v5, 0x0

    .line 164
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 165
    .local v3, "is":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 167
    .local v4, "line":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 168
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 173
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException occurred. "

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v5, :cond_3

    .line 177
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 179
    :cond_3
    throw v7

    .line 170
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    if-eqz v6, :cond_1

    .line 177
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 178
    :catch_1
    move-exception v0

    .line 179
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException occurred. "

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 179
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "IOException occurred. "

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "is":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 172
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static renameFileOrDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "desName"    # Ljava/lang/String;
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 652
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    .local v2, "srcFile":Ljava/io/File;
    invoke-static {p0}, Lcom/dodonew/online/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 654
    :cond_0
    const-string v3, "FileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rename failed! desPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  srcPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v3, 0x0

    .line 660
    :goto_0
    return v3

    .line 658
    :cond_1
    invoke-static {p1}, Lcom/dodonew/online/util/FileUtils;->getDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "srcDir":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "desPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    goto :goto_0
.end method

.method public static writeFile(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 3
    .param p0, "desFile"    # Ljava/io/File;
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "append"    # Z

    .prologue
    .line 297
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 298
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {p0, v1, p2}, Lcom/dodonew/online/util/FileUtils;->writeFile(Ljava/io/File;Ljava/io/InputStream;Z)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 302
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return v2

    .line 299
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 302
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static writeFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/dodonew/online/util/FileUtils;->writeFile(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method public static writeFile(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "append"    # Z

    .prologue
    .line 261
    const/4 v3, 0x0

    .line 263
    .local v3, "o":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/dodonew/online/util/FileUtils;->createDir(Ljava/lang/String;Z)Ljava/io/File;

    .line 264
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v3    # "o":Ljava/io/OutputStream;
    .local v4, "o":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 266
    .local v0, "data":[B
    const/4 v2, -0x1

    .line 267
    .local v2, "length":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 268
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 272
    .end local v0    # "data":[B
    .end local v2    # "length":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 273
    .end local v4    # "o":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "o":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "FileNotFoundException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_0

    .line 279
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 280
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 282
    :cond_0
    throw v5

    .line 270
    .end local v3    # "o":Ljava/io/OutputStream;
    .restart local v0    # "data":[B
    .restart local v2    # "length":I
    .restart local v4    # "o":Ljava/io/OutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 271
    const/4 v5, 0x1

    .line 277
    if-eqz v4, :cond_2

    .line 279
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 280
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 282
    :cond_2
    return v5

    .line 281
    :catch_1
    move-exception v1

    .line 282
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 274
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "length":I
    .end local v4    # "o":Ljava/io/OutputStream;
    .restart local v3    # "o":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 275
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 281
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 282
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "IOException occurred. "

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 277
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "o":Ljava/io/OutputStream;
    .restart local v4    # "o":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "o":Ljava/io/OutputStream;
    .restart local v3    # "o":Ljava/io/OutputStream;
    goto :goto_2

    .line 274
    .end local v3    # "o":Ljava/io/OutputStream;
    .restart local v4    # "o":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "o":Ljava/io/OutputStream;
    .restart local v3    # "o":Ljava/io/OutputStream;
    goto :goto_3

    .line 272
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static writeFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/dodonew/online/util/FileUtils;->writeFile(Ljava/lang/String;Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method public static writeFile(Ljava/lang/String;Ljava/io/InputStream;Z)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "append"    # Z

    .prologue
    .line 236
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/dodonew/online/util/FileUtils;->writeFile(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 197
    .local v1, "fileWriter":Ljava/io/FileWriter;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3}, Lcom/dodonew/online/util/FileUtils;->createDir(Ljava/lang/String;Z)Ljava/io/File;

    .line 198
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .local v2, "fileWriter":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    const/4 v3, 0x1

    .line 205
    if-eqz v2, :cond_0

    .line 207
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 209
    :cond_0
    return v3

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IOException occurred. "

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 202
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .line 203
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IOException occurred. "

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_1

    .line 207
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 209
    :cond_1
    throw v3

    .line 208
    :catch_2
    move-exception v0

    .line 209
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IOException occurred. "

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_1

    .line 202
    .end local v1    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_0
.end method
