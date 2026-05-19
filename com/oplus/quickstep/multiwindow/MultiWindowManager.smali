.class public final Lcom/oplus/quickstep/multiwindow/MultiWindowManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/multiwindow/MultiWindowManager;

.field private static final TAG:Ljava/lang/String; = "MultiWindowManager"

.field public static volatile isInSplitScreen:Ljava/lang/Boolean;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->INSTANCE:Lcom/oplus/quickstep/multiwindow/MultiWindowManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isInMultiWindowMode(Lcom/android/launcher3/DeviceProfile;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "deviceProfile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_12

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isInMinimized$default(IILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    :cond_12
    move v0, v1

    :cond_13
    return v0
.end method

.method public static final isInSplitScreenMode()Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->isInSplitScreen:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isInMinimized$default(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    move v2, v1

    :cond_19
    :goto_19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->isInSplitScreen:Ljava/lang/Boolean;

    :cond_1f
    sget-object v0, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->isInSplitScreen:Ljava/lang/Boolean;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_27
    return v1
.end method

.method public static final isTaskSupportSplit(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1a

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_1a

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenState(Landroid/content/Intent;)I

    move-result v2

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_1a

    move v2, v0

    goto :goto_1b

    :cond_1a
    move v2, v1

    :goto_1b
    if-nez v2, :cond_25

    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isTaskSupport(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :cond_25
    :goto_25
    return v0
.end method

.method public static final needOverviewInputConsumer(Lcom/android/launcher3/statemanager/StatefulActivity;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isDeviceStateSupport()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method


# virtual methods
.method public final exitSplitScreenMode(I)V
    .registers 2

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->dismissSplitScreenMode(I)Z

    :cond_11
    return-void
.end method

.method public final resetSplitScreenMode()V
    .registers 1

    const/4 p0, 0x0

    sput-object p0, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->isInSplitScreen:Ljava/lang/Boolean;

    return-void
.end method
