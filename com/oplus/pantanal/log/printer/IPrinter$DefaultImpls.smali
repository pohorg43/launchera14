.class public final Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/pantanal/log/printer/IPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIPrinter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IPrinter.kt\ncom/oplus/pantanal/log/printer/IPrinter$DefaultImpls\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,273:1\n13644#2,3:274\n13644#2,3:277\n*S KotlinDebug\n*F\n+ 1 IPrinter.kt\ncom/oplus/pantanal/log/printer/IPrinter$DefaultImpls\n*L\n131#1:274,3\n261#1:277,3\n*E\n"
    }
.end annotation


# direct methods
.method public static appendCurTraceElementToNxtLine(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/StringBuilder;ILjava/lang/StackTraceElement;)V
    .registers 6

    const-string p0, "sb"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_2b

    if-gtz p2, :cond_a

    goto :goto_2b

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p2, :cond_1c

    const-string v1, "__"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1c
    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static doPrint(Lcom/oplus/pantanal/log/printer/IPrinter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string p0, "tag"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static findTargetTraceElement(Lcom/oplus/pantanal/log/printer/IPrinter;)Ljava/lang/StackTraceElement;
    .registers 12

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "stackTraceElements"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    move v6, v4

    :goto_13
    if-ge v4, v1, :cond_37

    aget-object v7, v0, v4

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "element.className"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/pantanal/log/printer/IPrinter;->getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->getLogClassName$OLog_release()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v7, v9, v3, v10}, Lk7/m;->j(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    if-eqz v7, :cond_33

    add-int/lit8 v5, v6, 0x2

    :cond_33
    add-int/lit8 v4, v4, 0x1

    move v6, v8

    goto :goto_13

    :cond_37
    if-eq v5, v2, :cond_3f

    array-length p0, v0

    if-ge v5, p0, :cond_3f

    aget-object p0, v0, v5

    goto :goto_40

    :cond_3f
    const/4 p0, 0x0

    :goto_40
    return-object p0
.end method

.method public static formatClassNameAndMethodName(Lcom/oplus/pantanal/log/printer/IPrinter;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->findTargetTraceElement(Lcom/oplus/pantanal/log/printer/IPrinter;)Ljava/lang/StackTraceElement;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "."

    invoke-static {v0, v1, p0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatThreadInfo(Lcom/oplus/pantanal/log/printer/IPrinter;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "t("

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fortmatFileNameAndLineNumber(Lcom/oplus/pantanal/log/printer/IPrinter;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->findTargetTraceElement(Lcom/oplus/pantanal/log/printer/IPrinter;)Ljava/lang/StackTraceElement;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static handleMsg(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/String;ZLjava/lang/String;ZIZ)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_e

    invoke-interface {p0}, Lcom/oplus/pantanal/log/printer/IPrinter;->formatThreadInfo()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/oplus/pantanal/log/printer/IPrinter;->handleOriginMsg(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p3}, Lcom/oplus/pantanal/log/printer/IPrinter;->handleSensitiveMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_26

    const/4 p2, 0x1

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    if-eqz p2, :cond_31

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    invoke-interface {p0}, Lcom/oplus/pantanal/log/printer/IPrinter;->getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->getLogMsgSuffix$OLog_release()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_4a

    const-string p1, " at "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/oplus/pantanal/log/printer/IPrinter;->formatClassNameAndMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4a
    invoke-interface {p0}, Lcom/oplus/pantanal/log/printer/IPrinter;->getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->getPrintFileNameAndLineNumber$OLog_release()Z

    move-result p1

    if-eqz p1, :cond_5b

    invoke-interface {p0}, Lcom/oplus/pantanal/log/printer/IPrinter;->fortmatFileNameAndLineNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    invoke-static {p0, v0, p5}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->handleStackTrace(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sb.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static handleOriginMsg(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static handleSensitiveMsg(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p0, "sensitiveMsg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static handleStackTrace(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/StringBuilder;I)V
    .registers 15

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const-string v2, "stackTraceElements"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    move v6, v5

    move v7, v4

    :goto_17
    if-ge v5, v2, :cond_3b

    aget-object v8, v1, v5

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "element.className"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/pantanal/log/printer/IPrinter;->getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->getLogClassName$OLog_release()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v8, v10, v3, v11}, Lk7/m;->j(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_37

    add-int/lit8 v7, v6, 0x3

    :cond_37
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_17

    :cond_3b
    move v2, v0

    :goto_3c
    if-le p2, v0, :cond_4e

    if-eq v7, v4, :cond_4e

    array-length v3, v1

    if-ge v7, v3, :cond_4e

    aget-object v3, v1, v7

    invoke-interface {p0, p1, v2, v3}, Lcom/oplus/pantanal/log/printer/IPrinter;->appendCurTraceElementToNxtLine(Ljava/lang/StringBuilder;ILjava/lang/StackTraceElement;)V

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v2, v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_3c

    :cond_4e
    return-void
.end method

.method public static handleTag(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/String;Lcom/oplus/pantanal/log/printer/PrinterConfig;)Ljava/lang/String;
    .registers 5

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "logConfig"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->getLogTagPrefix$OLog_release()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->getLogTagSecondaryPrefix$OLog_release()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    const-string v1, "."

    if-eqz v0, :cond_27

    invoke-virtual {p2}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->getLogTagSecondaryPrefix$OLog_release()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v1, p2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_27
    invoke-static {p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static println(Lcom/oplus/pantanal/log/printer/IPrinter;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
    .registers 19

    move-object v7, p0

    move-object v0, p2

    const-string v1, "tag"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    move-object v2, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sensitiveMsg"

    move-object v3, p5

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/pantanal/log/printer/IPrinter;->shouldPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v0, "tj"

    const-string v1, "shouldPrint return false, not print."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    invoke-interface {p0}, Lcom/oplus/pantanal/log/printer/IPrinter;->getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object v1

    invoke-interface {p0, p2, v1}, Lcom/oplus/pantanal/log/printer/IPrinter;->handleTag(Ljava/lang/String;Lcom/oplus/pantanal/log/printer/PrinterConfig;)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->handleMsg(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/String;ZLjava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    move v1, p1

    move-object/from16 v2, p9

    invoke-interface {p0, p1, v8, v0, v2}, Lcom/oplus/pantanal/log/printer/IPrinter;->doPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static shouldPrint(Lcom/oplus/pantanal/log/printer/IPrinter;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/pantanal/log/printer/IPrinter;->getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->getLogFloorLevel$OLog_release()I

    move-result p3

    const/4 v0, 0x0

    if-ge p1, p3, :cond_1d

    const-string p0, "tj"

    const-string p1, "shouldPrint return false,logLevel too low."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1d
    invoke-interface {p0}, Lcom/oplus/pantanal/log/printer/IPrinter;->getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->getLogTagWhiteSet$OLog_release()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    if-eqz p1, :cond_3d

    invoke-interface {p0}, Lcom/oplus/pantanal/log/printer/IPrinter;->getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->getLogTagWhiteSet$OLog_release()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    return p3

    :cond_3c
    return v0

    :cond_3d
    invoke-interface {p0}, Lcom/oplus/pantanal/log/printer/IPrinter;->getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->getLogTagBlackSet$OLog_release()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4c

    return v0

    :cond_4c
    return p3
.end method
