.class public abstract Lcom/android/wm/shell/pip/IPip$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/IPip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/IPip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/IPip$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_abortSwipePipToHome:I = 0x4

.field public static final TRANSACTION_setLauncherAppIconSize:I = 0x9

.field public static final TRANSACTION_setLauncherKeepClearAreaHeight:I = 0x8

.field public static final TRANSACTION_setPipAnimationListener:I = 0x5

.field public static final TRANSACTION_setPipAnimationTypeToAlpha:I = 0x7

.field public static final TRANSACTION_setShelfHeight:I = 0x6

.field public static final TRANSACTION_startSwipePipToHome:I = 0x2

.field public static final TRANSACTION_stopSwipePipToHome:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.pip.IPip"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/pip/IPip;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.wm.shell.pip.IPip"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/wm/shell/pip/IPip;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/wm/shell/pip/IPip;

    return-object v0

    :cond_13
    new-instance v0, Lcom/android/wm/shell/pip/IPip$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/IPip$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.android.wm.shell.pip.IPip"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_b8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_bc

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_1b  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/IPip;->setLauncherAppIconSize(I)V

    goto/16 :goto_b7

    :pswitch_24  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2b

    move v1, v0

    :cond_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, v1, p1}, Lcom/android/wm/shell/pip/IPip;->setLauncherKeepClearAreaHeight(ZI)V

    goto/16 :goto_b7

    :pswitch_34  #0x7
    invoke-interface {p0}, Lcom/android/wm/shell/pip/IPip;->setPipAnimationTypeToAlpha()V

    goto/16 :goto_b7

    :pswitch_39  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_40

    move v1, v0

    :cond_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, v1, p1}, Lcom/android/wm/shell/pip/IPip;->setShelfHeight(ZI)V

    goto :goto_b7

    :pswitch_48  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/pip/IPipAnimationListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/IPip;->setPipAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V

    goto :goto_b7

    :pswitch_54  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/android/wm/shell/pip/IPip$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/pip/IPip;->abortSwipePipToHome(ILandroid/content/ComponentName;)V

    goto :goto_b7

    :pswitch_64  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/android/wm/shell/pip/IPip$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/android/wm/shell/pip/IPip$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/android/wm/shell/pip/IPip$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl;

    invoke-interface {p0, p1, p3, p4, p2}, Lcom/android/wm/shell/pip/IPip;->stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    goto :goto_b7

    :pswitch_84  #0x2
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/pip/IPip$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/ComponentName;

    sget-object p1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/pip/IPip$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/content/pm/ActivityInfo;

    sget-object p1, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/pip/IPip$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/app/PictureInPictureParams;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/pip/IPip$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/graphics/Rect;

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/android/wm/shell/pip/IPip;->startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0, v0}, Lcom/android/wm/shell/pip/IPip$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_b7
    return v0

    :cond_b8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_bc
    .packed-switch 0x2
        :pswitch_84  #00000002
        :pswitch_64  #00000003
        :pswitch_54  #00000004
        :pswitch_48  #00000005
        :pswitch_39  #00000006
        :pswitch_34  #00000007
        :pswitch_24  #00000008
        :pswitch_1b  #00000009
    .end packed-switch
.end method
