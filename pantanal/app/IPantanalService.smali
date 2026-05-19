.class public interface abstract Lpantanal/app/IPantanalService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/ILifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/IPantanalService$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getUIData()Lpantanal/app/bean/PantanalUIData;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
.end method

.method public abstract load(Lpantanal/app/OnLoadCallback;)V
.end method

.method public abstract release()V
.end method

.method public abstract setUIDataInterceptor(Lpantanal/app/UIDataInterceptor;)V
.end method
