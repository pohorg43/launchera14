.class public final Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;
.super Lcom/oplus/quickstep/multiwindow/AbsMultiWindowShortcutPolicy;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;->Companion:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/multiwindow/AbsMultiWindowShortcutPolicy;-><init>()V

    return-void
.end method

.method public static final support(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;->Companion:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;->support(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            "Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;",
            ")",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            ">;"
        }
    .end annotation

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskContainer"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V

    return-object p0
.end method

.method public isSupport(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z
    .registers 3

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskContainer"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy;->Companion:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioShortcutPolicy$Companion;->support(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z

    move-result p0

    return p0
.end method
