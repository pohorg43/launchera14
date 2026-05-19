.class public interface abstract Lpantanal/app/Card;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/IPantanalService;
.implements Lpantanal/app/ICardLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/Card$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getCardType()Lpantanal/app/bean/CardCategory;
.end method

.method public abstract getInnerCard()Ljava/lang/Object;
.end method

.method public abstract onDragEnd(Z)Z
.end method

.method public abstract onDragStart()V
.end method

.method public abstract onRenderFailed()V
.end method

.method public abstract releaseView()V
.end method
