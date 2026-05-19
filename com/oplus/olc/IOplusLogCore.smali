.class public interface abstract Lcom/oplus/olc/IOplusLogCore;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/olc/IOplusLogCore$Stub;,
        Lcom/oplus/olc/IOplusLogCore$Default;
    }
.end annotation


# virtual methods
.method public abstract sendException(JIIIJLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
