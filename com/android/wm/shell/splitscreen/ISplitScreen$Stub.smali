.class public abstract Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/ISplitScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/ISplitScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_exitSplitScreen:I = 0x6

.field public static final TRANSACTION_exitSplitScreenOnHide:I = 0x7

.field public static final TRANSACTION_onGoingToRecentsLegacy:I = 0xe

.field public static final TRANSACTION_onStartingSplitLegacy:I = 0xf

.field public static final TRANSACTION_registerSplitScreenListener:I = 0x2

.field public static final TRANSACTION_removeFromSideStage:I = 0x5

.field public static final TRANSACTION_startIntent:I = 0xa

.field public static final TRANSACTION_startIntentAndTask:I = 0x11

.field public static final TRANSACTION_startIntentAndTaskWithLegacyTransition:I = 0xd

.field public static final TRANSACTION_startIntents:I = 0x14

.field public static final TRANSACTION_startIntentsWithLegacyTransition:I = 0x13

.field public static final TRANSACTION_startShortcut:I = 0x9

.field public static final TRANSACTION_startShortcutAndTask:I = 0x12

.field public static final TRANSACTION_startShortcutAndTaskWithLegacyTransition:I = 0x10

.field public static final TRANSACTION_startTask:I = 0x8

.field public static final TRANSACTION_startTasks:I = 0xb

.field public static final TRANSACTION_startTasksWithLegacyTransition:I = 0xc

.field public static final TRANSACTION_unregisterSplitScreenListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreen;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.wm.shell.splitscreen.ISplitScreen"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/wm/shell/splitscreen/ISplitScreen;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/wm/shell/splitscreen/ISplitScreen;

    return-object v0

    :cond_13
    new-instance v0, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v13, 0x1

    const-string v4, "com.android.wm.shell.splitscreen.ISplitScreen"

    if-lt v1, v13, :cond_15

    const v5, 0xffffff

    if-gt v1, v5, :cond_15

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    const v5, 0x5f4e5446

    if-eq v1, v5, :cond_352

    packed-switch v1, :pswitch_data_356

    :pswitch_1d  #0x4
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_22  #0x14
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v5}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v7}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    sget-object v9, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v9}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    invoke-static {v2, v5}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    sget-object v5, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v5}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/window/RemoteTransition;

    sget-object v5, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v5}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/internal/logging/InstanceId;

    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    move v10, v12

    move-object v11, v14

    move-object v12, v15

    invoke-interface/range {v0 .. v12}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startIntents(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_351

    :pswitch_85  #0x13
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v5}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v7}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    sget-object v9, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v9}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    invoke-static {v2, v5}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    sget-object v5, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v5}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/view/RemoteAnimationAdapter;

    sget-object v5, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v5}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/internal/logging/InstanceId;

    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    move v10, v12

    move-object v11, v14

    move-object v12, v15

    invoke-interface/range {v0 .. v12}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_351

    :pswitch_e8  #0x12
    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    sget-object v3, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/window/RemoteTransition;

    sget-object v3, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/internal/logging/InstanceId;

    move-object/from16 v0, p0

    move-object v2, v4

    move v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    invoke-interface/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_351

    :pswitch_12b  #0x11
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    sget-object v4, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/window/RemoteTransition;

    sget-object v4, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/internal/logging/InstanceId;

    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v5

    move v4, v6

    move-object v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v10

    move-object v9, v11

    invoke-interface/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_351

    :pswitch_173  #0x10
    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    sget-object v3, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/view/RemoteAnimationAdapter;

    sget-object v3, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/internal/logging/InstanceId;

    move-object/from16 v0, p0

    move-object v2, v4

    move v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    invoke-interface/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_351

    :pswitch_1b6  #0xf
    sget-object v1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_351

    :pswitch_1ca  #0xe
    sget-object v1, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v3, v0, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_351

    :pswitch_1de  #0xd
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    sget-object v4, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/view/RemoteAnimationAdapter;

    sget-object v4, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/internal/logging/InstanceId;

    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v5

    move v4, v6

    move-object v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v10

    move-object v9, v11

    invoke-interface/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_351

    :pswitch_226  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    sget-object v3, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/view/RemoteAnimationAdapter;

    sget-object v3, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/internal/logging/InstanceId;

    move-object/from16 v0, p0

    move-object v2, v4

    move v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    invoke-interface/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_351

    :pswitch_265  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    sget-object v3, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/window/RemoteTransition;

    sget-object v3, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v3}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/internal/logging/InstanceId;

    move-object/from16 v0, p0

    move-object v2, v4

    move v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    invoke-interface/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_351

    :pswitch_2a4  #0xa
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v6}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    sget-object v7, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v7}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/internal/logging/InstanceId;

    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;)V

    goto/16 :goto_351

    :pswitch_2d9  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v5}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v6}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    sget-object v7, Lcom/android/internal/logging/InstanceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v7}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/internal/logging/InstanceId;

    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_351

    :pswitch_309  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v2, v4}, Lcom/android/wm/shell/splitscreen/ISplitScreen$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v1, v3, v2}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->startTask(IILandroid/os/Bundle;)V

    goto :goto_351

    :pswitch_31d  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_325

    move v1, v13

    goto :goto_326

    :cond_325
    const/4 v1, 0x0

    :goto_326
    invoke-interface {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->exitSplitScreenOnHide(Z)V

    goto :goto_351

    :pswitch_32a  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->exitSplitScreen(I)V

    goto :goto_351

    :pswitch_332  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->removeFromSideStage(I)V

    goto :goto_351

    :pswitch_33a  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    goto :goto_351

    :pswitch_346  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/wm/shell/splitscreen/ISplitScreen;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    :goto_351
    return v13

    :cond_352
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_data_356
    .packed-switch 0x2
        :pswitch_346  #00000002
        :pswitch_33a  #00000003
        :pswitch_1d  #00000004
        :pswitch_332  #00000005
        :pswitch_32a  #00000006
        :pswitch_31d  #00000007
        :pswitch_309  #00000008
        :pswitch_2d9  #00000009
        :pswitch_2a4  #0000000a
        :pswitch_265  #0000000b
        :pswitch_226  #0000000c
        :pswitch_1de  #0000000d
        :pswitch_1ca  #0000000e
        :pswitch_1b6  #0000000f
        :pswitch_173  #00000010
        :pswitch_12b  #00000011
        :pswitch_e8  #00000012
        :pswitch_85  #00000013
        :pswitch_22  #00000014
    .end packed-switch
.end method
