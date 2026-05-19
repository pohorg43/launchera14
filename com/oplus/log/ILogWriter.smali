.class public interface abstract Lcom/oplus/log/ILogWriter;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract append(Ljava/lang/String;Ljava/lang/String;BI)V
.end method

.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public abstract flush(Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;)V
.end method

.method public abstract flushSync()V
.end method

.method public abstract getCacheQueueSize()I
.end method

.method public abstract init(Lcom/oplus/log/Settings;)V
.end method

.method public abstract init(Lcom/oplus/log/core/LoganConfig;)V
.end method

.method public abstract quitThread()V
.end method
