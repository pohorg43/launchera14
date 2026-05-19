.class Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;
.super Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# annotations
.annotation build Landroidx/annotation/BinderThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ISplitScreenImpl"
.end annotation


# instance fields
.field private mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field private final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/common/SingleInstanceRemoteListener<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            "Lcom/android/wm/shell/splitscreen/ISplitScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSplitScreenListener:Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/ISplitScreen$Stub;-><init>()V

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mSplitScreenListener:Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    new-instance v1, Lcom/android/wm/shell/splitscreen/q;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/q;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;)V

    new-instance v2, Lcom/android/wm/shell/splitscreen/x;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/splitscreen/x;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    return-void
.end method

.method public static synthetic a(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$startIntent$17(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$new$1(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$startShortcutAndTask$13(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic d(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$startTasks$11(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic e(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$exitSplitScreen$4(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$startShortcut$16(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$unregisterSplitScreenListener$3(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic h(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 13

    invoke-static/range {p0 .. p12}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$startIntentsWithLegacyTransition$14(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$new$0(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic j(IILandroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$startTask$7(IILandroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic k([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$onStartingSplitLegacy$19([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic l(ZLcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$exitSplitScreenOnHide$5(ZLcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method private static synthetic lambda$exitSplitScreen$4(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitSplitScreen(II)V

    return-void
.end method

.method private static synthetic lambda$exitSplitScreenOnHide$5(ZLcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitSplitScreenOnHide(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mSplitScreenListener:Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mSplitScreenListener:Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method private static synthetic lambda$onGoingToRecentsLegacy$18([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 3

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p0, p2

    return-void
.end method

.method private static synthetic lambda$onStartingSplitLegacy$19([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 3

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p0, p2

    return-void
.end method

.method private synthetic lambda$registerSplitScreenListener$2(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->register(Landroid/os/IInterface;)V

    return-void
.end method

.method private static synthetic lambda$removeFromSideStage$6(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->removeFromSideStage(I)Z

    return-void
.end method

.method private static synthetic lambda$startIntent$17(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 14

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private static synthetic lambda$startIntentAndTask$12(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 20

    move-object/from16 v0, p9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$800(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private static synthetic lambda$startIntentAndTaskWithLegacyTransition$9(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 20

    move-object/from16 v0, p9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$900(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private static synthetic lambda$startIntents$15(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 26

    move-object/from16 v0, p12

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-static/range {v0 .. v12}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$600(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private static synthetic lambda$startIntentsWithLegacyTransition$14(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 26

    move-object/from16 v0, p12

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-static/range {v0 .. v12}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->access$700(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private static synthetic lambda$startShortcut$16(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 14

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private static synthetic lambda$startShortcutAndTask$13(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 18

    move-object/from16 v0, p8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private static synthetic lambda$startShortcutAndTaskWithLegacyTransition$10(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 18

    move-object/from16 v0, p8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private static synthetic lambda$startTask$7(IILandroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 4

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$startTasks$11(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 18

    move-object/from16 v0, p8

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private static synthetic lambda$startTasksWithLegacyTransition$8(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 18

    move-object/from16 v0, p8

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method private synthetic lambda$unregisterSplitScreenListener$3(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    return-void
.end method

.method public static synthetic m(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$startIntentAndTask$12(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic n(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$startIntentAndTaskWithLegacyTransition$9(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic o([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$onGoingToRecentsLegacy$18([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic p(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$startShortcutAndTaskWithLegacyTransition$10(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/splitscreen/ISplitScreenListener;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$registerSplitScreenListener$2(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic r(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$startTasksWithLegacyTransition$8(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic s(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$removeFromSideStage$6(ILcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method

.method public static synthetic t(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 13

    invoke-static/range {p0 .. p12}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->lambda$startIntents$15(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method


# virtual methods
.method public exitSplitScreen(I)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v0, Lcom/android/wm/shell/splitscreen/o;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/o;-><init>(II)V

    const-string p1, "exitSplitScreen"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public exitSplitScreenOnHide(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v0, Lcom/android/wm/shell/splitscreen/s;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/splitscreen/s;-><init>(Z)V

    const-string p1, "exitSplitScreenOnHide"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    return-void
.end method

.method public onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [[Landroid/view/RemoteAnimationTarget;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v2, Lcom/android/wm/shell/splitscreen/y;

    invoke-direct {v2, v1, p1}, Lcom/android/wm/shell/splitscreen/y;-><init>([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    const-string/jumbo p1, "onGoingToRecentsLegacy"

    invoke-static {p0, p1, v2, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    aget-object p0, v1, v3

    return-object p0
.end method

.method public onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [[Landroid/view/RemoteAnimationTarget;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v2, Lcom/android/wm/shell/splitscreen/z;

    invoke-direct {v2, v1, p1}, Lcom/android/wm/shell/splitscreen/z;-><init>([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    const-string/jumbo p1, "onStartingSplitLegacy"

    invoke-static {p0, p1, v2, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    aget-object p0, v1, v3

    return-object p0
.end method

.method public registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v1, Lcom/android/wm/shell/splitscreen/y;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/splitscreen/y;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    const-string/jumbo p0, "registerSplitScreenListener"

    invoke-static {v0, p0, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeFromSideStage(I)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v0, Lcom/android/wm/shell/splitscreen/o;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/o;-><init>(II)V

    const-string/jumbo p1, "removeFromSideStage"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;)V
    .registers 15

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v7, Lcom/android/wm/shell/splitscreen/b0;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/b0;-><init>(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo p1, "startIntent"

    invoke-static {p0, p1, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 22
    .param p6  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v11, Lcom/android/wm/shell/splitscreen/v;

    move-object v1, v11

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/android/wm/shell/splitscreen/v;-><init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v1, "startIntentAndTask"

    invoke-static {v0, v1, v11}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 22

    move-object v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v11, Lcom/android/wm/shell/splitscreen/v;

    move-object v1, v11

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/android/wm/shell/splitscreen/v;-><init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v1, "startIntentAndTaskWithLegacyTransition"

    invoke-static {v0, v1, v11}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startIntents(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 28
    .param p9  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v14, Lcom/android/wm/shell/splitscreen/u;

    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/android/wm/shell/splitscreen/u;-><init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v1, "startIntents"

    invoke-static {v0, v1, v14}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 28
    .param p9  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v14, Lcom/android/wm/shell/splitscreen/u;

    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/android/wm/shell/splitscreen/u;-><init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v1, "startIntentsWithLegacyTransition"

    invoke-static {v0, v1, v14}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;)V
    .registers 15

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v7, Lcom/android/wm/shell/splitscreen/r;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/r;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo p1, "startShortcut"

    invoke-static {p0, p1, v7}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 20
    .param p5  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v10, Lcom/android/wm/shell/splitscreen/w;

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/splitscreen/w;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v1, "startShortcutAndTask"

    invoke-static {v0, v1, v10}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 20
    .param p5  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v10, Lcom/android/wm/shell/splitscreen/w;

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/splitscreen/w;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v1, "startShortcutAndTaskWithLegacyTransition"

    invoke-static {v0, v1, v10}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startTask(IILandroid/os/Bundle;)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v0, Lcom/android/wm/shell/splitscreen/a0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/a0;-><init>(IILandroid/os/Bundle;)V

    const-string/jumbo p1, "startTask"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 20
    .param p5  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v10, Lcom/android/wm/shell/splitscreen/t;

    move-object v1, v10

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/splitscreen/t;-><init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v1, "startTasks"

    invoke-static {v0, v1, v10}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 20
    .param p5  # I
        .annotation build Lcom/android/wm/shell/common/split/SplitScreenConstants$SplitPosition;
        .end annotation
    .end param

    move-object v0, p0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v10, Lcom/android/wm/shell/splitscreen/t;

    move-object v1, v10

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/splitscreen/t;-><init>(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    const-string/jumbo v1, "startTasks"

    invoke-static {v0, v1, v10}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .registers 3

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v0, Lcom/android/wm/shell/splitscreen/p;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/p;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;)V

    const-string/jumbo p0, "unregisterSplitScreenListener"

    invoke-static {p1, p0, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
