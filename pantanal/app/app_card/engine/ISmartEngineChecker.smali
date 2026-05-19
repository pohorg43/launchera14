.class public interface abstract Lpantanal/app/app_card/engine/ISmartEngineChecker;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract addErrorCallback(Ljava/lang/String;Lpantanal/app/app_card/engine/ISmartEngineError;)V
.end method

.method public abstract getSmartApi(Lcom/oplus/smartsdk/SmartAPICallback;)V
.end method

.method public abstract getSmartEngineContext()Landroid/content/Context;
.end method

.method public abstract init(Landroid/content/Context;Lpantanal/app/ILaunchInterceptor;)V
.end method

.method public abstract release(Landroid/content/Context;)V
.end method

.method public abstract removeErrorCallback(Ljava/lang/String;)V
.end method
