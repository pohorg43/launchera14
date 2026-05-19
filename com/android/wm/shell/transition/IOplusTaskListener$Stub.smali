.class public abstract Lcom/android/wm/shell/transition/IOplusTaskListener$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/IOplusTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/IOplusTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/transition/IOplusTaskListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_onBackPressedOnTaskRoot:I = 0x4

.field public static final TRANSACTION_onLandScapeSceneExit:I = 0x6

.field public static final TRANSACTION_onTaskAppeared:I = 0x1

.field public static final TRANSACTION_onTaskInfoChanged:I = 0x3

.field public static final TRANSACTION_onTaskVanished:I = 0x2

.field public static final TRANSACTION_onTransitionFinish:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.transition.IOplusTaskListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/transition/IOplusTaskListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.wm.shell.transition.IOplusTaskListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/wm/shell/transition/IOplusTaskListener;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/wm/shell/transition/IOplusTaskListener;

    return-object v0

    :cond_13
    new-instance v0, Lcom/android/wm/shell/transition/IOplusTaskListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/transition/IOplusTaskListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.android.wm.shell.transition.IOplusTaskListener"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_69

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_6e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_1b  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_22

    move v1, v0

    :cond_22
    invoke-interface {p0, v1}, Lcom/android/wm/shell/transition/IOplusTaskListener;->onLandScapeSceneExit(Z)V

    goto :goto_68

    :pswitch_26  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2d

    move v1, v0

    :cond_2d
    invoke-interface {p0, v1}, Lcom/android/wm/shell/transition/IOplusTaskListener;->onTransitionFinish(Z)V

    goto :goto_68

    :pswitch_31  #0x4
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/transition/IOplusTaskListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/IOplusTaskListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_68

    :pswitch_3d  #0x3
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/transition/IOplusTaskListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/IOplusTaskListener;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_68

    :pswitch_49  #0x2
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/transition/IOplusTaskListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/IOplusTaskListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_68

    :pswitch_55  #0x1
    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/wm/shell/transition/IOplusTaskListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-object p3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/android/wm/shell/transition/IOplusTaskListener$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl;

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/transition/IOplusTaskListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :goto_68
    return v0

    :cond_69
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_55  #00000001
        :pswitch_49  #00000002
        :pswitch_3d  #00000003
        :pswitch_31  #00000004
        :pswitch_26  #00000005
        :pswitch_1b  #00000006
    .end packed-switch
.end method
