.class public final Lcom/oplus/utrace/hlog/HLogReceiver$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/hlog/HLogReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->getLogFiles$lambda-4(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLogFiles(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;JJLjava/lang/String;J)Ljava/util/List;
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->getLogFiles(JJLjava/lang/String;J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/io/File;Ljava/io/File;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->getLogFiles$lambda-7(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method private final getLogFiles(JJLjava/lang/String;J)Ljava/util/List;
    .registers 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd-HH"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_7
    new-instance v0, Ljava/util/Date;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_25

    move-wide/from16 v2, p1

    :try_start_b
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_2c

    :cond_1a
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_23

    goto :goto_2c

    :catchall_23
    move-exception v0

    goto :goto_28

    :catchall_25
    move-exception v0

    move-wide/from16 v2, p1

    :goto_28
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_2c
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    const-string v5, "UTrace.Sdk.HLogReceiver"

    if-nez v4, :cond_35

    goto :goto_54

    :cond_35
    sget-object v6, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-direct {v8}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->getLogPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " getLogFiles() exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    instance-of v4, v0, Lh4/k$a;

    if-eqz v4, :cond_59

    const/4 v0, 0x0

    :cond_59
    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_5e

    goto :goto_62

    :cond_5e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_62
    invoke-static/range {p5 .. p5}, Lcom/oplus/log/util/FileUtil;->getDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_81

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    const-string v3, " getLogFiles() can\'t access directory "

    move-object/from16 v4, p5

    invoke-static {v1, v2, v3, v4}, Landroidx/fragment/app/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Li4/y;->a:Li4/y;

    return-object v0

    :cond_81
    sget-object v4, Lcom/oplus/utrace/hlog/a;->a:Lcom/oplus/utrace/hlog/a;

    invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_155

    array-length v4, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_90

    move v4, v6

    goto :goto_91

    :cond_90
    move v4, v7

    :goto_91
    if-eqz v4, :cond_95

    goto/16 :goto_155

    :cond_95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v0

    move v8, v7

    :goto_9c
    if-ge v7, v5, :cond_14e

    aget-object v9, v0, v7

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v10, 0x0

    cmp-long v12, v2, v10

    if-lez v12, :cond_137

    cmp-long v12, p3, v10

    if-lez v12, :cond_137

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "file.name"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "\\."

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x6

    invoke-static {v12, v13, v8, v8, v14}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    const-string v13, "_"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v8, v8, v14}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v12, -0x4

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x2d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v12, -0x3

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v12, -0x2

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v12, v6

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    if-nez v8, :cond_11b

    const/4 v8, 0x0

    goto :goto_12e

    :cond_11b
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v8, v2, v12

    if-gtz v8, :cond_129

    cmp-long v8, v12, p3

    if-gtz v8, :cond_129

    move v8, v6

    goto :goto_12a

    :cond_129
    const/4 v8, 0x0

    :goto_12a
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_12e
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_137

    goto :goto_143

    :cond_137
    cmp-long v8, p6, v10

    if-lez v8, :cond_145

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v8, v10, p6

    if-lez v8, :cond_145

    :goto_143
    const/4 v8, 0x0

    goto :goto_146

    :cond_145
    move v8, v6

    :goto_146
    if-eqz v8, :cond_14b

    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_14b
    const/4 v8, 0x0

    goto/16 :goto_9c

    :cond_14e
    sget-object v0, Lcom/oplus/utrace/hlog/b;->a:Lcom/oplus/utrace/hlog/b;

    invoke-static {v4, v0}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_155
    :goto_155
    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-direct/range {p0 .. p0}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, " getLogFiles() no matching log files"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Li4/y;->a:Li4/y;

    return-object v0
.end method

.method private static final getLogFiles$lambda-4(Ljava/io/File;Ljava/lang/String;)Z
    .registers 8

    const-string p0, "filename"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p0, :cond_f

    move p0, v0

    goto :goto_10

    :cond_f
    move p0, v1

    :goto_10
    if-eqz p0, :cond_31

    const/4 p0, 0x3

    const-string v2, ".dog3"

    const-string v3, ".dog2"

    const-string v4, ".dog1"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    move v3, v1

    :cond_1e
    if-ge v3, p0, :cond_2d

    aget-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x2

    invoke-static {p1, v4, v1, v5}, Lk7/m;->j(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_1e

    move p0, v0

    goto :goto_2e

    :cond_2d
    move p0, v1

    :goto_2e
    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    return v0
.end method

.method private static final getLogFiles$lambda-7(Ljava/io/File;Ljava/io/File;)I
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-gez p0, :cond_11

    const/4 p0, -0x1

    goto :goto_16

    :cond_11
    if-lez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private final getLogPrefix()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/utrace/hlog/HLogReceiver;->access$getLogPrefix$delegate$cp()Lh4/f;

    move-result-object p0

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final declared-synchronized registerReceiver(Landroid/content/Context;)Lcom/oplus/utrace/hlog/HLogReceiver;
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/utrace/utils/UtilsKt;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_20

    if-eqz v0, :cond_16

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_16
    :try_start_16
    new-instance v0, Lcom/oplus/utrace/hlog/HLogReceiver;

    invoke-direct {v0}, Lcom/oplus/utrace/hlog/HLogReceiver;-><init>()V

    invoke-virtual {v0, p1}, Lcom/oplus/utrace/hlog/HLogReceiver;->register$utrace_sdk_fullRelease(Landroid/content/Context;)V
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final register$utrace_sdk_fullRelease(Landroid/content/Context;)Lcom/oplus/utrace/hlog/HLogReceiver;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->isInSeedlingPlugin$utrace_sdk_fullRelease()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->registerReceiver(Landroid/content/Context;)Lcom/oplus/utrace/hlog/HLogReceiver;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setLogger$utrace_sdk_fullRelease(Lcom/oplus/log/Logger;)V
    .registers 4

    invoke-static {p1}, Lcom/oplus/utrace/hlog/HLogReceiver;->access$setSLogger$cp(Lcom/oplus/log/Logger;)V

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " setLogger() sLogger="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/utrace/hlog/HLogReceiver;->access$getSLogger$cp()Lcom/oplus/log/Logger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTrace.Sdk.HLogReceiver"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_29

    goto :goto_31

    :cond_29
    new-instance p0, Lcom/oplus/utrace/hlog/HLogReceiver$Companion$setLogger$1;

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion$setLogger$1;-><init>()V

    invoke-virtual {p1, p0}, Lcom/oplus/log/Logger;->setUploaderListener(Lcom/oplus/log/uploader/UploadManager$UploaderListener;)V

    :goto_31
    return-void
.end method
