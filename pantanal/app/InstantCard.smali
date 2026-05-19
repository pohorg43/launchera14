.class public interface abstract Lpantanal/app/InstantCard;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/Card;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/InstantCard$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract registerCardMessageCallback(Lpantanal/app/instant/IInstantCardCallback;)V
.end method

.method public abstract replyMessage(ILjava/lang/String;)V
.end method

.method public abstract sendMessage(ILjava/lang/String;)V
.end method
