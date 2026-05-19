.class public abstract Lcom/android/wm/shell/bubbles/IBubbles$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/IBubbles;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/IBubbles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/IBubbles$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_collapseBubbles:I = 0x6

.field public static final TRANSACTION_onTaskbarStateChanged:I = 0x7

.field public static final TRANSACTION_registerBubbleListener:I = 0x2

.field public static final TRANSACTION_removeBubble:I = 0x5

.field public static final TRANSACTION_showBubble:I = 0x4

.field public static final TRANSACTION_unregisterBubbleListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.bubbles.IBubbles"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/bubbles/IBubbles;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.wm.shell.bubbles.IBubbles"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/wm/shell/bubbles/IBubbles;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/wm/shell/bubbles/IBubbles;

    return-object v0

    :cond_13
    new-instance v0, Lcom/android/wm/shell/bubbles/IBubbles$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/IBubbles$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.android.wm.shell.bubbles.IBubbles"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5b

    packed-switch p1, :pswitch_data_60

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_1a  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/bubbles/IBubbles;->onTaskbarStateChanged(I)V

    goto :goto_5a

    :pswitch_22  #0x6
    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/IBubbles;->collapseBubbles()V

    goto :goto_5a

    :pswitch_26  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/bubbles/IBubbles;->removeBubble(Ljava/lang/String;I)V

    goto :goto_5a

    :pswitch_32  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3e

    move p2, v0

    goto :goto_3f

    :cond_3e
    const/4 p2, 0x0

    :goto_3f
    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/bubbles/IBubbles;->showBubble(Ljava/lang/String;Z)V

    goto :goto_5a

    :pswitch_43  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/bubbles/IBubblesListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/bubbles/IBubbles;->unregisterBubbleListener(Lcom/android/wm/shell/bubbles/IBubblesListener;)V

    goto :goto_5a

    :pswitch_4f  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/bubbles/IBubblesListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/bubbles/IBubbles;->registerBubbleListener(Lcom/android/wm/shell/bubbles/IBubblesListener;)V

    :goto_5a
    return v0

    :cond_5b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_4f  #00000002
        :pswitch_43  #00000003
        :pswitch_32  #00000004
        :pswitch_26  #00000005
        :pswitch_22  #00000006
        :pswitch_1a  #00000007
    .end packed-switch
.end method
