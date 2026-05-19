.class public abstract Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/recents/ISystemUiProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/ISystemUiProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_changeBottomGestureAreaRatio:I = 0x9c

.field public static final TRANSACTION_changeMistouchBarVisiablity:I = 0x9b

.field public static final TRANSACTION_expandNotificationPanel:I = 0x1e

.field public static final TRANSACTION_getNonMinimizedSplitScreenSecondaryBounds:I = 0x8

.field public static final TRANSACTION_handleImageAsScreenshot:I = 0x16

.field public static final TRANSACTION_handleImageBundleAsScreenshot:I = 0x1d

.field public static final TRANSACTION_notifyAccessibilityButtonClicked:I = 0x10

.field public static final TRANSACTION_notifyAccessibilityButtonLongClicked:I = 0x11

.field public static final TRANSACTION_notifyAppTransition:I = 0x9d

.field public static final TRANSACTION_notifyInjectAllEvent:I = 0x98

.field public static final TRANSACTION_notifyInjectEvent:I = 0x99

.field public static final TRANSACTION_notifyKeyEvent:I = 0x9a

.field public static final TRANSACTION_notifyPrioritizedRotation:I = 0x1a

.field public static final TRANSACTION_notifySwipeToHomeFinished:I = 0x18

.field public static final TRANSACTION_notifySwipeToRecentFinished:I = 0x9e

.field public static final TRANSACTION_notifySwipeUpGestureStarted:I = 0x2f

.field public static final TRANSACTION_notifyTaskbarAutohideSuspend:I = 0x31

.field public static final TRANSACTION_notifyTaskbarStatus:I = 0x30

.field public static final TRANSACTION_onAssistantGestureCompletion:I = 0x13

.field public static final TRANSACTION_onAssistantProgress:I = 0xd

.field public static final TRANSACTION_onBackPressed:I = 0x2d

.field public static final TRANSACTION_onGetAppIcon:I = 0x97

.field public static final TRANSACTION_onImeSwitcherPressed:I = 0x32

.field public static final TRANSACTION_onOverviewShown:I = 0x7

.field public static final TRANSACTION_onStatusBarMotionEvent:I = 0xa

.field public static final TRANSACTION_setHomeRotationEnabled:I = 0x2e

.field public static final TRANSACTION_setNavBarButtonAlpha:I = 0x14

.field public static final TRANSACTION_setSplitScreenMinimized:I = 0x17

.field public static final TRANSACTION_startAssistant:I = 0xe

.field public static final TRANSACTION_startScreenPinning:I = 0x2

.field public static final TRANSACTION_stopScreenPinning:I = 0x12

.field public static final TRANSACTION_takeScreenshot:I = 0x34

.field public static final TRANSACTION_toggleNotificationPanel:I = 0x33


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object v0

    :cond_13
    new-instance v0, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.android.systemui.shared.recents.ISystemUiProxy"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_222

    const/4 v1, 0x2

    if-eq p1, v1, :cond_217

    const/16 v1, 0xa

    if-eq p1, v1, :cond_208

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_1fd

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1ef

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1e4

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1d9

    const/16 v1, 0xe

    if-eq p1, v1, :cond_1ca

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_1a3

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_19b

    packed-switch p1, :pswitch_data_226

    packed-switch p1, :pswitch_data_234

    packed-switch p1, :pswitch_data_23e

    packed-switch p1, :pswitch_data_252

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_46  #0x9e
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifySwipeToRecentFinished()V

    goto/16 :goto_221

    :pswitch_4b  #0x9d
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAppTransition(Landroid/os/Bundle;)V

    goto/16 :goto_221

    :pswitch_58  #0x9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->changeBottomGestureAreaRatio(F)V

    goto/16 :goto_221

    :pswitch_61  #0x9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_69

    move p1, v0

    goto :goto_6a

    :cond_69
    move p1, v2

    :goto_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_71

    move v2, v0

    :cond_71
    invoke-interface {p0, p1, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->changeMistouchBarVisiablity(ZZ)V

    goto/16 :goto_221

    :pswitch_76  #0x9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyKeyEvent(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_82  #0x99
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    sget-object p4, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MotionEvent;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_9a  #0x98
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    sget-object p4, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/MotionEvent;

    sget-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyInjectAllEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_b8  #0x97
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onGetAppIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_c8  #0x34
    sget-object p1, Lcom/android/internal/util/ScreenshotRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/ScreenshotRequest;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_d8  #0x33
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->toggleNotificationPanel()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_e0  #0x32
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onImeSwitcherPressed()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_e8  #0x31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_ef

    move v2, v0

    :cond_ef
    invoke-interface {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyTaskbarAutohideSuspend(Z)V

    goto/16 :goto_221

    :pswitch_f4  #0x30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_fc

    move p1, v0

    goto :goto_fd

    :cond_fc
    move p1, v2

    :goto_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_104

    move v2, v0

    :cond_104
    invoke-interface {p0, p1, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyTaskbarStatus(ZZ)V

    goto/16 :goto_221

    :pswitch_109  #0x2f
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifySwipeUpGestureStarted()V

    goto/16 :goto_221

    :pswitch_10e  #0x2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_115

    move v2, v0

    :cond_115
    invoke-interface {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setHomeRotationEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_11d  #0x2d
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onBackPressed()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_125  #0x18
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifySwipeToHomeFinished()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_12d  #0x17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_134

    move v2, v0

    :cond_134
    invoke-interface {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setSplitScreenMinimized(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_13c  #0x16
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Insets;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, v1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_160  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_16b

    move v2, v0

    :cond_16b
    invoke-interface {p0, p1, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setNavBarButtonAlpha(FZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_173  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantGestureCompletion(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_17f  #0x12
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->stopScreenPinning()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_187  #0x11
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonLongClicked()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :pswitch_18f  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonClicked(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :cond_19b
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->expandNotificationPanel()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_221

    :cond_1a3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    sget-object p4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Insets;

    sget-object v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-interface {p0, p1, p4, v1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_221

    :cond_1ca
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startAssistant(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_221

    :cond_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantProgress(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_221

    :cond_1e4
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_221

    :cond_1ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1f6

    move v2, v0

    :cond_1f6
    invoke-interface {p0, v2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onOverviewShown(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_221

    :cond_1fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyPrioritizedRotation(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_221

    :cond_208
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_221

    :cond_217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startScreenPinning(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_221
    return v0

    :cond_222
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_226
    .packed-switch 0x10
        :pswitch_18f  #00000010
        :pswitch_187  #00000011
        :pswitch_17f  #00000012
        :pswitch_173  #00000013
        :pswitch_160  #00000014
    .end packed-switch

    :pswitch_data_234
    .packed-switch 0x16
        :pswitch_13c  #00000016
        :pswitch_12d  #00000017
        :pswitch_125  #00000018
    .end packed-switch

    :pswitch_data_23e
    .packed-switch 0x2d
        :pswitch_11d  #0000002d
        :pswitch_10e  #0000002e
        :pswitch_109  #0000002f
        :pswitch_f4  #00000030
        :pswitch_e8  #00000031
        :pswitch_e0  #00000032
        :pswitch_d8  #00000033
        :pswitch_c8  #00000034
    .end packed-switch

    :pswitch_data_252
    .packed-switch 0x97
        :pswitch_b8  #00000097
        :pswitch_9a  #00000098
        :pswitch_82  #00000099
        :pswitch_76  #0000009a
        :pswitch_61  #0000009b
        :pswitch_58  #0000009c
        :pswitch_4b  #0000009d
        :pswitch_46  #0000009e
    .end packed-switch
.end method
