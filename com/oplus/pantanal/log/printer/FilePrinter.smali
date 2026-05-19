.class public final Lcom/oplus/pantanal/log/printer/FilePrinter;
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

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/FilePrinter;->logConfig:Lcom/oplus/pantanal/log/printer/PrinterConfig;

    return-void
.end method


# virtual methods
.method public appendCurTraceElementToNxtLine(Ljava/lang/StringBuilder;ILjava/lang/StackTraceElement;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->appendCurTraceElementToNxtLine(Lcom/oplus/pantanal/log/printer/IPrinter;Ljava/lang/StringBuilder;ILjava/lang/StackTraceElement;)V

    return-void
.end method

.method public doPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    const-string p0, "tag"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

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

    iget-object p0, p0, Lcom/oplus/pantanal/log/printer/FilePrinter;->logConfig:Lcom/oplus/pantanal/log/printer/PrinterConfig;

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

    iput-object p1, p0, Lcom/oplus/pantanal/log/printer/FilePrinter;->logConfig:Lcom/oplus/pantanal/log/printer/PrinterConfig;

    return-void
.end method

.method public shouldPrint(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;->shouldPrint(Lcom/oplus/pantanal/log/printer/IPrinter;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
