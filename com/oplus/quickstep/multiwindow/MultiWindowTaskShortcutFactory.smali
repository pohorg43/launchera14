.class public final Lcom/oplus/quickstep/multiwindow/MultiWindowTaskShortcutFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/TaskShortcutFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            "Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;",
            ")",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;"
        }
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskContainer"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isDeviceStateSupport()Z

    move-result p0

    if-eqz p0, :cond_16

    new-instance p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;

    invoke-direct {p0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;-><init>()V

    goto :goto_1b

    :cond_16
    new-instance p0, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;

    invoke-direct {p0}, Lcom/oplus/quickstep/multiwindow/splitscreen/SplitScreenShortcutPolity;-><init>()V

    :goto_1b
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/multiwindow/AbsMultiWindowShortcutPolicy;->isSupport(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/multiwindow/AbsMultiWindowShortcutPolicy;->get(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return-object p0
.end method
