.class public interface abstract Lcom/android/wm/shell/desktopmode/IDesktopMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/desktopmode/IDesktopMode$Stub;,
        Lcom/android/wm/shell/desktopmode/IDesktopMode$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.wm.shell.desktopmode.IDesktopMode"


# virtual methods
.method public abstract getVisibleTaskCount(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showDesktopApps(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
