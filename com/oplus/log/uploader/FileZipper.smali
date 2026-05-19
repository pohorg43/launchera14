.class public Lcom/oplus/log/uploader/FileZipper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/log/uploader/FileZipper$OnZipFileListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createZip(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JLcom/oplus/log/uploader/FileZipper$OnZipFileListener;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;J",
            "Lcom/oplus/log/uploader/FileZipper$OnZipFileListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p5

    invoke-static/range {p1 .. p1}, Lcom/oplus/log/util/FileUtil;->getDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_10e

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_10e

    if-eqz p2, :cond_10e

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_10e

    :cond_1a
    invoke-static/range {p1 .. p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/log/util/FileUtil;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_3a

    if-eqz v1, :cond_39

    const/16 v0, -0x67

    invoke-interface {v1, v0, v2}, Lcom/oplus/log/uploader/FileZipper$OnZipFileListener;->onZipError(ILjava/lang/String;)V

    :cond_39
    return-void

    :cond_3a
    const/16 v0, 0x400

    new-array v4, v0, [B

    const/16 v0, 0x64

    :try_start_40
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_101

    :try_start_45
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_f2

    :try_start_4a
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_51
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    cmp-long v13, v10, p3

    if-ltz v13, :cond_64

    const/16 v0, 0x65

    goto :goto_c7

    :cond_64
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "upload file name : "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size : "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13
    :try_end_91
    .catchall {:try_start_4a .. :try_end_91} :catchall_e3

    add-long/2addr v10, v13

    :try_start_92
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_97} :catch_c4
    .catchall {:try_start_92 .. :try_end_97} :catchall_e3

    :try_start_97
    new-instance v14, Ljava/util/zip/ZipEntry;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_a3
    invoke-virtual {v13, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_ae

    const/4 v14, 0x0

    invoke-virtual {v6, v4, v14, v12}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_a3

    :cond_ae
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_b1
    .catchall {:try_start_97 .. :try_end_b1} :catchall_b5

    :try_start_b1
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_c4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_e3

    goto :goto_51

    :catchall_b5
    move-exception v0

    move-object v12, v0

    :try_start_b7
    throw v12
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception v0

    move-object v14, v0

    :try_start_ba
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_be

    goto :goto_c3

    :catchall_be
    move-exception v0

    move-object v13, v0

    :try_start_c0
    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c3
    throw v14
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c4} :catch_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_e3

    :catch_c4
    const/16 v0, 0x66

    goto :goto_51

    :cond_c7
    :goto_c7
    :try_start_c7
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_f2

    :try_start_ca
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_101

    if-eqz v1, :cond_e2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v4, v8

    if-lez v2, :cond_db

    invoke-interface {v1, v0, v3}, Lcom/oplus/log/uploader/FileZipper$OnZipFileListener;->onZipOk(ILjava/io/File;)V

    goto :goto_e2

    :cond_db
    const/16 v0, -0x69

    const-string v2, "zip file is empty"

    invoke-interface {v1, v0, v2}, Lcom/oplus/log/uploader/FileZipper$OnZipFileListener;->onZipError(ILjava/lang/String;)V

    :cond_e2
    :goto_e2
    return-void

    :catchall_e3
    move-exception v0

    move-object v2, v0

    :try_start_e5
    throw v2
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e6

    :catchall_e6
    move-exception v0

    move-object v3, v0

    :try_start_e8
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ec

    goto :goto_f1

    :catchall_ec
    move-exception v0

    move-object v4, v0

    :try_start_ee
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f1
    throw v3
    :try_end_f2
    .catchall {:try_start_ee .. :try_end_f2} :catchall_f2

    :catchall_f2
    move-exception v0

    move-object v2, v0

    :try_start_f4
    throw v2
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f5

    :catchall_f5
    move-exception v0

    move-object v3, v0

    :try_start_f7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_fb

    goto :goto_100

    :catchall_fb
    move-exception v0

    move-object v4, v0

    :try_start_fd
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_100
    throw v3
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_101} :catch_101

    :catch_101
    move-exception v0

    if-eqz v1, :cond_10d

    const/16 v2, -0x68

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/oplus/log/uploader/FileZipper$OnZipFileListener;->onZipError(ILjava/lang/String;)V

    :cond_10d
    return-void

    :cond_10e
    :goto_10e
    if-eqz v1, :cond_115

    const/16 v0, -0x66

    invoke-interface {v1, v0, v2}, Lcom/oplus/log/uploader/FileZipper$OnZipFileListener;->onZipError(ILjava/lang/String;)V

    :cond_115
    return-void
.end method

.method private static deleteDirectoryFiles(Ljava/io/File;)V
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_24

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {v2}, Lcom/oplus/log/uploader/FileZipper;->deleteDirectoryFiles(Ljava/io/File;)V

    goto :goto_21

    :cond_1e
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_24
    return-void
.end method

.method public static deleteZipFile(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/log/util/FileUtil;->getDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-static {p0}, Lcom/oplus/log/uploader/FileZipper;->deleteDirectoryFiles(Ljava/io/File;)V

    return-void
.end method

.method private static getFiles(JJLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    move-wide/from16 v1, p0

    const-string v3, "-"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd-HH"

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_10
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6
    :try_end_21
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_21} :catch_22

    goto :goto_27

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move-wide v6, v1

    :goto_27
    invoke-static/range {p4 .. p4}, Lcom/oplus/log/util/FileUtil;->getDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_bb

    new-instance v8, Lcom/oplus/log/uploader/FileZipper$1;

    move-object/from16 v9, p5

    invoke-direct {v8, v9}, Lcom/oplus/log/uploader/FileZipper$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_bb

    array-length v0, v8

    if-lez v0, :cond_bb

    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_40
    if-ge v11, v9, :cond_b3

    aget-object v0, v8, v11

    :try_start_44
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\."

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v10

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    array-length v14, v12

    add-int/lit8 v14, v14, -0x4

    aget-object v14, v12, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v12

    add-int/lit8 v14, v14, -0x3

    aget-object v14, v12, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v12

    add-int/lit8 v14, v14, -0x2

    aget-object v14, v12, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v12

    add-int/lit8 v14, v14, -0x1

    aget-object v12, v12, v14

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v1, v14

    if-lez v16, :cond_a2

    cmp-long v14, p2, v14

    if-lez v14, :cond_a2

    cmp-long v14, v12, v6

    if-ltz v14, :cond_b0

    cmp-long v12, v12, p2

    if-gtz v12, :cond_b0

    :cond_a2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_a5} :catch_a6

    goto :goto_b0

    :catch_a6
    move-exception v0

    invoke-static {}, Lcom/oplus/log/HLog;->isPrint()Z

    move-result v12

    if-eqz v12, :cond_b0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b0
    :goto_b0
    add-int/lit8 v11, v11, 0x1

    goto :goto_40

    :cond_b3
    new-instance v0, Lcom/oplus/log/uploader/FileZipper$2;

    invoke-direct {v0}, Lcom/oplus/log/uploader/FileZipper$2;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_bb
    return-object v4
.end method

.method private static getSuffixUploadInfo(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3f

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3f

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "***********************************\n"

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-string v2, "file name : "

    invoke-static {v0, v2}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_3e
    return-object v0

    :cond_3f
    :goto_3f
    const-string p0, ""

    return-object p0
.end method

.method public static makeUploadFiles(JJLcom/oplus/log/Settings;Ljava/lang/String;Ljava/lang/String;JLcom/oplus/log/uploader/FileZipper$OnZipFileListener;)V
    .registers 22

    move-object/from16 v5, p9

    invoke-virtual/range {p4 .. p4}, Lcom/oplus/log/Settings;->getPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    move-wide v6, p0

    move-wide v8, p2

    invoke-static/range {v6 .. v11}, Lcom/oplus/log/uploader/FileZipper;->getFiles(JJLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_25

    :cond_17
    invoke-static/range {p6 .. p6}, Lcom/oplus/log/core/FileStrategy;->makeZipFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p5

    move-wide/from16 v3, p7

    move-object/from16 v5, p9

    invoke-static/range {v0 .. v5}, Lcom/oplus/log/uploader/FileZipper;->createZip(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JLcom/oplus/log/uploader/FileZipper$OnZipFileListener;)V

    return-void

    :cond_25
    :goto_25
    if-eqz v5, :cond_2e

    const/16 v0, -0x65

    const-string v1, "no match file"

    invoke-interface {v5, v0, v1}, Lcom/oplus/log/uploader/FileZipper$OnZipFileListener;->onZipError(ILjava/lang/String;)V

    :cond_2e
    return-void
.end method
