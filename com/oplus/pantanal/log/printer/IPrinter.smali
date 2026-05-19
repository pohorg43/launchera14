.class public interface abstract Lcom/oplus/pantanal/log/printer/IPrinter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/pantanal/log/printer/IPrinter$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract appendCurTraceElementToNxtLine(Ljava/lang/StringBuilder;ILjava/lang/StackTraceElement;)V
.end method

.method public abstract doPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract formatClassNameAndMethodName()Ljava/lang/String;
.end method

.method public abstract formatThreadInfo()Ljava/lang/String;
.end method

.method public abstract fortmatFileNameAndLineNumber()Ljava/lang/String;
.end method

.method public abstract getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;
.end method

.method public abstract handleOriginMsg(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract handleSensitiveMsg(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract handleTag(Ljava/lang/String;Lcom/oplus/pantanal/log/printer/PrinterConfig;)Ljava/lang/String;
.end method

.method public abstract println(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
.end method

.method public abstract setLogConfig(Lcom/oplus/pantanal/log/printer/PrinterConfig;)V
.end method

.method public abstract shouldPrint(ILjava/lang/String;Ljava/lang/String;)Z
.end method
