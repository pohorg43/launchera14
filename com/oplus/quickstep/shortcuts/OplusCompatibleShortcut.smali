.class public final Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;
.super Lcom/oplus/quickstep/shortcuts/RecentShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/quickstep/shortcuts/RecentShortcut<",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut$Companion;

.field private static final KEY_COMPATIBLE_ACTION:Ljava/lang/String; = "oplus.intent.action.fantasywindowUI"

.field private static final KEY_COMPATIBLE_MODE:Ljava/lang/String; = "compatibleMode"

.field private static final KEY_COMPATIBLE_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final KEY_COMPATIBLE_TASK_ID:Ljava/lang/String; = "task_id"

.field private static final TAG:Ljava/lang/String; = "OplusCompatibleShortcut"


# instance fields
.field private final context:Landroid/content/Context;

.field private final name:I

.field private final packageName:Ljava/lang/String;

.field private final resId:I

.field private final taskId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->Companion:Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;II)V
    .registers 12

    const-string v0, "taskContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    const-string v0, "taskContainer.itemInfo"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    const-string v0, "taskContainer.taskView"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/oplus/quickstep/shortcuts/RecentShortcut;-><init>(IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput p3, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->resId:I

    iput p4, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->name:I

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    if-nez p1, :cond_32

    const-string p1, ""

    :cond_32
    iput-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_41

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_41

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_42

    :cond_41
    const/4 p1, -0x1

    :goto_42
    iput p1, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->taskId:I

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "taskContainer.taskView.context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->context:Landroid/content/Context;

    return-void
.end method

.method public static final showScaleChangeBtn(I)Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->Companion:Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut$Companion;->showScaleChangeBtn(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getName()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->name:I

    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getResId()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->resId:I

    return p0
.end method

.method public final getTaskId()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->taskId:I

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isQucikClick()Z

    move-result p1

    const-string v0, "OplusCompatibleShortcut"

    if-eqz p1, :cond_15

    const-string p0, "quick click the CompatibleShortcut"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    sget-object v3, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getCompatibleModeMap()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {v3}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getCompatibleModeMap()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeSixteenNine:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->getCompatibleModeValue()I

    move-result v4

    if-ne v3, v4, :cond_47

    const/4 v2, 0x1

    :cond_47
    iget v3, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->taskId:I

    const-string v4, "task_id"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "compatibleMode"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->packageName:Ljava/lang/String;

    const-string v4, "package_name"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oplus.intent.action.fantasywindowUI"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "click the Compatible icon: packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " scaleIsSixteenNine："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  taskId: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->taskId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;->context:Landroid/content/Context;

    invoke-static {p0, v1, p1}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_95
    .catch Landroid/content/ActivityNotFoundException; {:try_start_68 .. :try_end_95} :catch_96

    goto :goto_ab

    :catch_96
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start Compatible failed, exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ab
    return-void
.end method

.method public setIconAndLabelFor(Landroid/widget/TextView;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Landroid/widget/TextView;)V

    if-eqz p1, :cond_1c

    sget-object p0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setFreezesText(Z)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    :cond_1c
    return-void
.end method
