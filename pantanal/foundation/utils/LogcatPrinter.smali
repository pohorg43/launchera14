.class public final Lpantanal/foundation/utils/LogcatPrinter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/pantanal/log/printer/IPrinter;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private logConfig:Lcom/oplus/pantanal/log/printer/PrinterConfig;


# direct methods
.method public constructor <init>(Lcom/oplus/pantanal/log/printer/PrinterConfig;)V
    .registers 3

    const-string v0, "logConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/foundation/utils/LogcatPrinter;->logConfig:Lcom/oplus/pantanal/log/printer/PrinterConfig;

    return-void
.end method


# virtual methods
.method public appendCurTraceElementToNxtLine(Ljava/lang/StringBuilder;ILjava/lang/StackTraceElement;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->appendCurTraceElementToNxtLine(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/StringBuilder;ILjava/lang/StackTraceElement;)V

    return-void
.end method

.method public doPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string p0, "tag"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_10

    invoke-static {p1, p2, p3}, Lcom/oplus/utrace/sdk/ULog;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const/4 p0, 0x2

    if-eq p1, p0, :cond_37

    const/4 p0, 0x3

    if-eq p1, p0, :cond_33

    const/4 p0, 0x4

    if-eq p1, p0, :cond_2f

    const/4 p0, 0x5

    if-eq p1, p0, :cond_2b

    const/4 p0, 0x6

    if-eq p1, p0, :cond_27

    const-string p0, "olog"

    const-string p1, "log level not match."

    invoke-static {p0, p1}, Lcom/oplus/utrace/sdk/ULog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :cond_27
    invoke-static {p2, p3, p4}, Lcom/oplus/utrace/sdk/ULog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    :cond_2b
    invoke-static {p2, p3, p4}, Lcom/oplus/utrace/sdk/ULog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    :cond_2f
    invoke-static {p2, p3, p4}, Lcom/oplus/utrace/sdk/ULog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    :cond_33
    invoke-static {p2, p3, p4}, Lcom/oplus/utrace/sdk/ULog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    :cond_37
    invoke-static {p2, p3, p4}, Lcom/oplus/utrace/sdk/ULog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3a
    return-void
.end method

.method public formatClassNameAndMethodName()Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->formatClassNameAndMethodName(Lcom/oplus/pantanal/log/printer/IPrinter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatThreadInfo()Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->formatThreadInfo(Lcom/oplus/pantanal/log/printer/IPrinter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public fortmatFileNameAndLineNumber()Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->fortmatFileNameAndLineNumber(Lcom/oplus/pantanal/log/printer/IPrinter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;
    .registers 1

    iget-object p0, p0, Lpantanal/foundation/utils/LogcatPrinter;->logConfig:Lcom/oplus/pantanal/log/printer/PrinterConfig;

    return-object p0
.end method

.method public handleOriginMsg(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->handleOriginMsg(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleSensitiveMsg(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->handleSensitiveMsg(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleTag(Ljava/lang/String;Lcom/oplus/pantanal/log/printer/PrinterConfig;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->handleTag(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/String;Lcom/oplus/pantanal/log/printer/PrinterConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public println(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->println(Lcom/oplus/pantanal/log/printer/IPrinter;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    return-void
.end method

.method public setLogConfig(Lcom/oplus/pantanal/log/printer/PrinterConfig;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/foundation/utils/LogcatPrinter;->logConfig:Lcom/oplus/pantanal/log/printer/PrinterConfig;

    return-void
.end method

.method public shouldPrint(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->shouldPrint(Lcom/oplus/pantanal/log/printer/IPrinter;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
