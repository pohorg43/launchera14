.class public final Lcom/oplus/utrace/utils/UtilsKt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "UTrace.Lib.Utils"

.field private static final UNLOCK_CACHE_MAX_TIME:J = 0x3e8L

.field private static final dexFileName:Ljava/lang/String;

.field private static volatile logSuffix:Ljava/lang/String; = null

.field private static volatile processName:Ljava/lang/String; = ""

.field private static unlockCacheTime:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/utils/UtilsKt;->unlockCacheTime:Ljava/lang/Long;

    invoke-static {}, Lcom/oplus/utrace/utils/UtilsKt;->generateLogSuffix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/utils/UtilsKt;->logSuffix:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/utrace/utils/UtilsKt;->getDexFileName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/utils/UtilsKt;->dexFileName:Ljava/lang/String;

    return-void
.end method

.method public static final checkIntent(Landroid/content/Intent;)Z
    .registers 6

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    const-string v0, "check_intent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_13
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_3e

    :cond_1a
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIntent() exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " intent="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTrace.Lib.Utils"

    invoke-virtual {v2, v1, p0}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, v0, Lh4/k$a;

    if-eqz v1, :cond_45

    move-object v0, p0

    :cond_45
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final generateLogSuffix()Ljava/lang/String;
    .registers 14

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    sget-object v2, Lcom/oplus/utrace/utils/UtilsKt;->dexFileName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/oplus/utrace/utils/UtilsKt;->processName:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "1.4.6-a7b48bd-20240806-102432"

    aput-object v5, v1, v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :cond_18
    :goto_18
    if-ge v2, v0, :cond_31

    aget-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    if-eqz v5, :cond_29

    invoke-static {v5}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_27

    goto :goto_29

    :cond_27
    move v7, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move v7, v4

    :goto_2a
    xor-int/2addr v7, v4

    if-eqz v7, :cond_18

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_31
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3e

    const-string v7, "|"

    invoke-static/range {v6 .. v13}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v4

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    goto :goto_48

    :cond_47
    move-object v0, v2

    :goto_48
    if-nez v0, :cond_4b

    goto :goto_61

    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_61
    return-object v2
.end method

.method private static final getCurrentDexFileName()Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi"
        }
    .end annotation

    const-string v0, "UTrace.Lib.Utils"

    :try_start_2
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "getCurrentDexFileName() classLoader="

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Ldalvik/system/BaseDexClassLoader;

    const-string v4, "pathList"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/utrace/utils/UtilsKt;->getFirstDexFileNameFromPathList(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getCurrentDexFileName() result="

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_33

    return-object v2

    :catchall_33
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3f

    goto :goto_4e

    :cond_3f
    sget-object v2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getCurrentDexFileName() exception="

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4e
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final getDexFileName()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/oplus/utrace/utils/UtilsKt;->getCurrentDexFileName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_40

    :cond_8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "base.apk"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_40

    :cond_20
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    goto :goto_40

    :cond_27
    const/16 v1, 0x2d

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lk7/q;->B(Ljava/lang/CharSequence;CIZI)I

    move-result v1

    if-lez v1, :cond_3f

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3f

    :cond_3b
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_3f
    :goto_3f
    move-object v1, v0

    :goto_40
    return-object v1
.end method

.method public static final getFirstDexFileNameFromPathList(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "dexElements"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_1d

    check-cast p0, [Ljava/lang/Object;

    goto :goto_1e

    :cond_1d
    move-object p0, v0

    :goto_1e
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-static {p0}, Li4/i;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getFirstDexFileNameFromPathList() dexElements="

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTrace.Lib.Utils"

    invoke-virtual {v1, v4, v3}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_32

    goto :goto_83

    :cond_32
    invoke-static {p0}, Li4/k;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "dexFile"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_59

    :cond_57
    :goto_57
    move-object v1, v0

    goto :goto_80

    :cond_59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mFileName"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_71

    check-cast v1, Ljava/lang/String;

    goto :goto_72

    :cond_71
    move-object v1, v0

    :goto_72
    if-nez v1, :cond_75

    goto :goto_57

    :cond_75
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_57

    :goto_80
    if-eqz v1, :cond_3a

    move-object v0, v1

    :cond_83
    :goto_83
    return-object v0
.end method

.method public static final getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object p0, Lcom/oplus/utrace/utils/UtilsKt;->processName:Ljava/lang/String;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    if-eqz p0, :cond_1e

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "{\n            Applicatio…etProcessName()\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/oplus/utrace/utils/UtilsKt;->processName:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/utrace/utils/UtilsKt;->generateLogSuffix()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/utrace/utils/UtilsKt;->logSuffix:Ljava/lang/String;

    :cond_1e
    sget-object p0, Lcom/oplus/utrace/utils/UtilsKt;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public static final isUserUnlocked(Landroid/content/Context;)Z
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/oplus/utrace/utils/UtilsKt;->unlockCacheTime:Ljava/lang/Long;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_c

    :cond_a
    move v2, v4

    goto :goto_1e

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/16 v7, 0x3e8

    cmp-long v2, v5, v7

    if-gez v2, :cond_1a

    move v2, v3

    goto :goto_1b

    :cond_1a
    move v2, v4

    :goto_1b
    if-ne v2, v3, :cond_a

    move v2, v3

    :goto_1e
    if-eqz v2, :cond_21

    return v3

    :cond_21
    const/4 v2, 0x0

    if-nez p0, :cond_26

    move-object v3, v2

    goto :goto_2c

    :cond_26
    :try_start_26
    const-string v3, "user"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :goto_2c
    instance-of v5, v3, Landroid/os/UserManager;

    if-eqz v5, :cond_33

    check-cast v3, Landroid/os/UserManager;

    goto :goto_34

    :cond_33
    move-object v3, v2

    :goto_34
    if-nez v3, :cond_38

    move-object v3, v2

    goto :goto_46

    :cond_38
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_41

    goto :goto_46

    :catchall_41
    move-exception v3

    invoke-static {v3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_46
    instance-of v5, v3, Lh4/k$a;

    if-eqz v5, :cond_4b

    move-object v3, v2

    :cond_4b
    check-cast v3, Ljava/lang/Boolean;

    sget-object v5, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isUserUnlocked() result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_65

    move-object p0, v2

    goto :goto_69

    :cond_65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_69
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v6, "UTrace.Lib.Utils"

    invoke-virtual {v5, v6, p0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_78

    goto :goto_7c

    :cond_78
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_7c
    if-eqz v4, :cond_82

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_82
    sput-object v2, Lcom/oplus/utrace/utils/UtilsKt;->unlockCacheTime:Ljava/lang/Long;

    return v4
.end method

.method public static final submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_14
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1b

    goto :goto_28

    :cond_1b
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v0, "submitSafe() exception="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTrace.Lib.Utils"

    invoke-virtual {p1, v0, p0}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_28
    return-void
.end method

.method public static final transformLogMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/utils/UtilsKt;->logSuffix:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_14

    :cond_a
    const/16 v1, 0x20

    invoke-static {p0, v1, v0}, La/a;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    move-object p0, v0

    :goto_14
    return-object p0
.end method
