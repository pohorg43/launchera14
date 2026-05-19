.class public abstract Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/recents/IOverviewProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/IOverviewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_disable:I = 0x14

.field public static final TRANSACTION_getPreAppIcon:I = 0x97

.field public static final TRANSACTION_iconPaperZoomOut:I = 0x9a

.field public static final TRANSACTION_notifyCapsuleChange:I = 0x9c

.field public static final TRANSACTION_onActiveNavBarRegionChanges:I = 0xc

.field public static final TRANSACTION_onAssistantAvailable:I = 0xe

.field public static final TRANSACTION_onAssistantVisibilityChanged:I = 0xf

.field public static final TRANSACTION_onBackAction:I = 0x10

.field public static final TRANSACTION_onInitialize:I = 0xd

.field public static final TRANSACTION_onNavButtonsDarkIntensityChanged:I = 0x17

.field public static final TRANSACTION_onOplusSystemBarAttributesChanged:I = 0x9b

.field public static final TRANSACTION_onOverviewHidden:I = 0x9

.field public static final TRANSACTION_onOverviewShown:I = 0x8

.field public static final TRANSACTION_onOverviewToggle:I = 0x7

.field public static final TRANSACTION_onRotationProposal:I = 0x13

.field public static final TRANSACTION_onScreenTurnedOn:I = 0x16

.field public static final TRANSACTION_onSplitScreenSecondaryBoundsChanged:I = 0x12

.field public static final TRANSACTION_onSystemBarAttributesChanged:I = 0x15

.field public static final TRANSACTION_onSystemUiStateChanged:I = 0x11

.field public static final TRANSACTION_onTip:I = 0xb

.field public static final TRANSACTION_switchPreApp:I = 0x98

.field public static final TRANSACTION_switchPreAppCurvedGesture:I = 0x99


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.shared.recents.IOverviewProxy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.systemui.shared.recents.IOverviewProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object v0

    :cond_13
    new-instance v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_155

    const/4 v1, 0x7

    if-eq p1, v1, :cond_151

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v1, :cond_146

    const/16 v1, 0x9

    if-eq p1, v1, :cond_132

    packed-switch p1, :pswitch_data_15a

    packed-switch p1, :pswitch_data_178

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_29  #0x9c
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->notifyCapsuleChange(Landroid/os/Bundle;)V

    goto/16 :goto_154

    :pswitch_36  #0x9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p3, p4, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOplusSystemBarAttributesChanged(IIILjava/lang/String;)V

    goto/16 :goto_154

    :pswitch_4b  #0x9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->iconPaperZoomOut(F)V

    goto/16 :goto_154

    :pswitch_54  #0x99
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->switchPreAppCurvedGesture()V

    goto/16 :goto_154

    :pswitch_59  #0x98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->switchPreApp(I)V

    goto/16 :goto_154

    :pswitch_62  #0x97
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->getPreAppIcon()V

    goto/16 :goto_154

    :pswitch_67  #0x17
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onNavButtonsDarkIntensityChanged(F)V

    goto/16 :goto_154

    :pswitch_70  #0x16
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onScreenTurnedOn()V

    goto/16 :goto_154

    :pswitch_75  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onSystemBarAttributesChanged(II)V

    goto/16 :goto_154

    :pswitch_82  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_95

    move v2, v0

    :cond_95
    invoke-interface {p0, p1, p3, p4, v2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->disable(IIIZ)V

    goto/16 :goto_154

    :pswitch_9a  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_a5

    move v2, v0

    :cond_a5
    invoke-interface {p0, p1, v2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onRotationProposal(IZ)V

    goto/16 :goto_154

    :pswitch_aa  #0x12
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    sget-object p3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/android/systemui/shared/recents/IOverviewProxy$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onSplitScreenSecondaryBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_154

    :pswitch_bf  #0x11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onSystemUiStateChanged(I)V

    goto/16 :goto_154

    :pswitch_c8  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d0

    move v4, v0

    goto :goto_d1

    :cond_d0
    move v4, v2

    :goto_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e1

    move v7, v0

    goto :goto_e2

    :cond_e1
    move v7, v2

    :goto_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_ea

    move v8, v0

    goto :goto_eb

    :cond_ea
    move v8, v2

    :goto_eb
    move-object v3, p0

    invoke-interface/range {v3 .. v8}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onBackAction(ZIIZZ)V

    goto/16 :goto_154

    :pswitch_f1  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantVisibilityChanged(F)V

    goto/16 :goto_154

    :pswitch_fa  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_102

    move p1, v0

    goto :goto_103

    :cond_102
    move p1, v2

    :goto_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_10a

    move v2, v0

    :cond_10a
    invoke-interface {p0, p1, v2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantAvailable(ZZ)V

    goto :goto_154

    :pswitch_10e  #0xd
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onInitialize(Landroid/os/Bundle;)V

    goto :goto_154

    :pswitch_11a  #0xc
    sget-object p1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Region;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V

    goto :goto_154

    :pswitch_126  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onTip(II)V

    goto :goto_154

    :cond_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_13a

    move p1, v0

    goto :goto_13b

    :cond_13a
    move p1, v2

    :goto_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_142

    move v2, v0

    :cond_142
    invoke-interface {p0, p1, v2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewHidden(ZZ)V

    goto :goto_154

    :cond_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_14d

    move v2, v0

    :cond_14d
    invoke-interface {p0, v2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewShown(Z)V

    goto :goto_154

    :cond_151
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewToggle()V

    :goto_154
    return v0

    :cond_155
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_15a
    .packed-switch 0xb
        :pswitch_126  #0000000b
        :pswitch_11a  #0000000c
        :pswitch_10e  #0000000d
        :pswitch_fa  #0000000e
        :pswitch_f1  #0000000f
        :pswitch_c8  #00000010
        :pswitch_bf  #00000011
        :pswitch_aa  #00000012
        :pswitch_9a  #00000013
        :pswitch_82  #00000014
        :pswitch_75  #00000015
        :pswitch_70  #00000016
        :pswitch_67  #00000017
    .end packed-switch

    :pswitch_data_178
    .packed-switch 0x97
        :pswitch_62  #00000097
        :pswitch_59  #00000098
        :pswitch_54  #00000099
        :pswitch_4b  #0000009a
        :pswitch_36  #0000009b
        :pswitch_29  #0000009c
    .end packed-switch
.end method
