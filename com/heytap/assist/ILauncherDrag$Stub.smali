.class public abstract Lcom/heytap/assist/ILauncherDrag$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/heytap/assist/ILauncherDrag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/assist/ILauncherDrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/assist/ILauncherDrag$Stub$a;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onEditStateChanged:I = 0x3

.field public static final TRANSACTION_onWallpaperBrightnessChanged:I = 0x6

.field public static final TRANSACTION_onWidgetDragEnd:I = 0x4

.field public static final TRANSACTION_sendCardInfoList:I = 0x5

.field public static final TRANSACTION_setLauncherDragCallback:I = 0x1

.field public static final TRANSACTION_startWidgetDrag:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.heytap.assist.ILauncherDrag"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/heytap/assist/ILauncherDrag;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.heytap.assist.ILauncherDrag"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/heytap/assist/ILauncherDrag;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/heytap/assist/ILauncherDrag;

    return-object v0

    :cond_13
    new-instance v0, Lcom/heytap/assist/ILauncherDrag$Stub$a;

    invoke-direct {v0, p0}, Lcom/heytap/assist/ILauncherDrag$Stub$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.heytap.assist.ILauncherDrag"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_55

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_5a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_1b  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_22

    move v1, v0

    :cond_22
    invoke-interface {p0, v1}, Lcom/heytap/assist/ILauncherDrag;->onWallpaperBrightnessChanged(Z)V

    goto :goto_54

    :pswitch_26  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDrag;->sendCardInfoList(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_2e  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDrag;->onWidgetDragEnd(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_36  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3d

    move v1, v0

    :cond_3d
    invoke-interface {p0, v1}, Lcom/heytap/assist/ILauncherDrag;->onEditStateChanged(Z)V

    goto :goto_54

    :pswitch_41  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDrag;->startWidgetDrag(Ljava/lang/String;)V

    goto :goto_54

    :pswitch_49  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/assist/ILauncherDragCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/assist/ILauncherDragCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDrag;->setLauncherDragCallback(Lcom/heytap/assist/ILauncherDragCallback;)V

    :goto_54
    return v0

    :cond_55
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_49  #00000001
        :pswitch_41  #00000002
        :pswitch_36  #00000003
        :pswitch_2e  #00000004
        :pswitch_26  #00000005
        :pswitch_1b  #00000006
    .end packed-switch
.end method
