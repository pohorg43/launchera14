.class public interface abstract Lcom/android/wm/shell/bubbles/IBubblesListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/IBubblesListener$_Parcel;,
        Lcom/android/wm/shell/bubbles/IBubblesListener$Stub;,
        Lcom/android/wm/shell/bubbles/IBubblesListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.wm.shell.bubbles.IBubblesListener"


# virtual methods
.method public abstract onBubbleStateChange(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
