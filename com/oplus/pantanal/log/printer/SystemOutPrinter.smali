.class public final Lcom/oplus/pantanal/log/printer/SystemOutPrinter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/pantanal/log/printer/IPrinter;


# instance fields
.field private logConfig:Lcom/oplus/pantanal/log/printer/PrinterConfig;


# direct methods
.method public constructor <init>(Lcom/oplus/pantanal/log/printer/PrinterConfig;)V
    .registers 3

    const-string v0, "logConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/SystemOutPrinter;->logConfig:Lcom/oplus/pantanal/log/printer/PrinterConfig;

    return-void
.end method

.method private final buildMsg(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/oplus/pantanal/log/common/OLogLevel;->INSTANCE:Lcom/oplus/pantanal/log/common/OLogLevel;

    invoke-virtual {v0, p1}, Lcom/oplus/pantanal/log/common/OLogLevel;->getShortLevelName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "builder.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public appendCurTraceElementToNxtLine(Ljava/lang/StringBuilder;ILjava/lang/StackTraceElement;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->appendCurTraceElementToNxtLine(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/StringBuilder;ILjava/lang/StackTraceElement;)V

    return-void
.end method

.method public doPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string p4, "tag"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "msg"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/pantanal/log/printer/SystemOutPrinter;->buildMsg(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public formatClassNameAndMethodName()Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->formatClassNameAndMethodName(Lcom/oplus/pantanal/log/printer/IPrinter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatThreadInfo()Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[t-"

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/SystemOutPrinter;->logConfig:Lcom/oplus/pantanal/log/printer/PrinterConfig;

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

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/SystemOutPrinter;->logConfig:Lcom/oplus/pantanal/log/printer/PrinterConfig;

    return-void
.end method

.method public shouldPrint(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->shouldPrint(Lcom/oplus/pantanal/log/printer/IPrinter;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
