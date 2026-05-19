.class public interface abstract Lpantanal/app/ICardLifecycle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/ILifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/ICardLifecycle$LifeCycleValue;,
        Lpantanal/app/ICardLifecycle$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onForceUpdate(Lpantanal/app/ICardLifecycle$LifeCycleValue;)V
.end method

.method public abstract onHostChange(Ljava/lang/String;)V
.end method

.method public abstract onScrollState(I)V
.end method

.method public abstract onSubscribe()V
.end method

.method public abstract onUnsubscribe()V
.end method
