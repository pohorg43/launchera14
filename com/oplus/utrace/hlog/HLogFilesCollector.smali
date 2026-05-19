.class public final Lcom/oplus/utrace/hlog/HLogFilesCollector;
.super Landroid/content/ContentProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;

.field public static final KEY_FILES:Ljava/lang/String; = "logFiles"

.field public static final METHOD_ON_UPLOAD_FINISH:Ljava/lang/String; = "onUploadFinish"

.field public static final METHOD_RECV_FILES:Ljava/lang/String; = "receiveLogFiles"

.field private static collectorUri:Landroid/net/Uri;

.field private static final executor$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static final uploaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/oplus/utrace/hlog/HLogUploader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/hlog/HLogFilesCollector;->Companion:Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;

    sget-object v0, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion$executor$2;->INSTANCE:Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion$executor$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/hlog/HLogFilesCollector;->executor$delegate:Lh4/f;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/utrace/hlog/HLogFilesCollector;->uploaders:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Long;Lcom/oplus/utrace/hlog/HLogFilesCollector;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/utrace/hlog/HLogFilesCollector;->call$lambda-4(Ljava/lang/Long;Lcom/oplus/utrace/hlog/HLogFilesCollector;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCollectorUri$cp()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/hlog/HLogFilesCollector;->collectorUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getExecutor$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/hlog/HLogFilesCollector;->executor$delegate:Lh4/f;

    return-object v0
.end method

.method public static final synthetic access$getUploaders$cp()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/hlog/HLogFilesCollector;->uploaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$setCollectorUri$cp(Landroid/net/Uri;)V
    .registers 1

    sput-object p0, Lcom/oplus/utrace/hlog/HLogFilesCollector;->collectorUri:Landroid/net/Uri;

    return-void
.end method

.method public static synthetic b(Lcom/oplus/utrace/hlog/HLogFilesCollector;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/utrace/hlog/HLogFilesCollector;->call$lambda-2(Lcom/oplus/utrace/hlog/HLogFilesCollector;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private static final call$lambda-2(Lcom/oplus/utrace/hlog/HLogFilesCollector;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/utrace/hlog/HLogFilesCollector;->extractLogFilesFD(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p0

    if-eqz p2, :cond_1c

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1c

    sget-object p1, Lcom/oplus/utrace/hlog/HLogFilesCollector;->Companion:Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2, p0}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->access$receiveLogFiles(Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;JLjava/lang/String;Ljava/util/Map;)V

    :cond_1c
    return-void
.end method

.method private static final call$lambda-4(Ljava/lang/Long;Lcom/oplus/utrace/hlog/HLogFilesCollector;Ljava/lang/String;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$method"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/utrace/hlog/HLogFilesCollector;->uploaders:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/utrace/hlog/HLogUploader;

    if-nez p1, :cond_16

    const/4 p1, 0x0

    goto :goto_1b

    :cond_16
    invoke-virtual {p1}, Lcom/oplus/utrace/hlog/HLogUploader;->onUploadFinish()V

    sget-object p1, Lh4/z;->a:Lh4/z;

    :goto_1b
    if-nez p1, :cond_42

    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "] call() method="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " no uploaders found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTrace.Sdk.HLogFiles"

    invoke-virtual {p1, p2, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method private final extractLogFilesFD(Landroid/os/Bundle;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_a

    move-object p1, v0

    goto :goto_16

    :cond_a
    :try_start_a
    const-string v1, "logFiles"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_16
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "extractLogFilesFD() exception="

    const-string v3, "UTrace.Sdk.HLogFiles"

    if-nez v1, :cond_21

    goto :goto_2a

    :cond_21
    sget-object v4, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    instance-of v1, p1, Lh4/k$a;

    if-eqz v1, :cond_2f

    move-object p1, v0

    :cond_2f
    check-cast p1, Landroid/os/Bundle;

    if-nez p1, :cond_34

    goto :goto_8b

    :cond_34
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v4, "files.keySet()"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_4d
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-le v5, v6, :cond_5c

    const-class v5, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    goto :goto_68

    :cond_5c
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;
    :try_end_62
    .catchall {:try_start_4d .. :try_end_62} :catchall_63

    goto :goto_68

    :catchall_63
    move-exception v5

    invoke-static {v5}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    :goto_68
    invoke-static {v5}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_6f

    goto :goto_78

    :cond_6f
    sget-object v7, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8, v6}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_78
    instance-of v6, v5, Lh4/k$a;

    if-eqz v6, :cond_7d

    move-object v5, v0

    :cond_7d
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    if-nez v5, :cond_82

    goto :goto_41

    :cond_82
    const-string v6, "fileName"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    :cond_8b
    :goto_8b
    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 14

    const-string v0, "authority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call() callingPkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " arg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " authority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTrace.Sdk.HLogFiles"

    invoke-virtual {v1, v3, v2}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p4, :cond_4b

    move-object v2, v1

    goto :goto_5b

    :cond_4b
    :try_start_4b
    const-string v2, "traceId"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_56

    goto :goto_5b

    :catchall_56
    move-exception v2

    invoke-static {v2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_5b
    invoke-static {v2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    const-string v5, "call() method="

    if-nez v4, :cond_64

    goto :goto_80

    :cond_64
    sget-object v6, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_80
    instance-of v4, v2, Lh4/k$a;

    if-eqz v4, :cond_85

    goto :goto_86

    :cond_85
    move-object v1, v2

    :goto_86
    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_a8

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " traceId=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_a8
    const-string v2, "receiveLogFiles"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "executor"

    if-eqz v2, :cond_c4

    sget-object v2, Lcom/oplus/utrace/hlog/HLogFilesCollector;->Companion:Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;

    invoke-static {v2}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->access$getExecutor(Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/oplus/quickstep/gesture/g;

    invoke-direct {v3, p0, p4, v0, v1}, Lcom/oplus/quickstep/gesture/g;-><init>(Lcom/oplus/utrace/hlog/HLogFilesCollector;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v2, v3}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    goto :goto_dd

    :cond_c4
    const-string v0, "onUploadFinish"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    sget-object v0, Lcom/oplus/utrace/hlog/HLogFilesCollector;->Companion:Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;

    invoke-static {v0}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->access$getExecutor(Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/quickstep/f1;

    invoke-direct {v2, v1, p0, p2}, Lcom/android/quickstep/f1;-><init>(Ljava/lang/Long;Lcom/oplus/utrace/hlog/HLogFilesCollector;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    :cond_dd
    :goto_dd
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
