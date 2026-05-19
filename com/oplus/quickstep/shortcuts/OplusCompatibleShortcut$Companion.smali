.class public final Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/shortcuts/OplusCompatibleShortcut$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isSupport(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskView;)Z
    .registers 10

    const-string p0, "task"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_13

    move-object p0, v0

    :cond_13
    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_1c

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_20
    if-nez v1, :cond_23

    goto :goto_24

    :cond_23
    move-object v0, v1

    :goto_24
    sget-object v1, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->Companion:Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;

    invoke-virtual {v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getParallelVersionMode()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getParallelVersionMode()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2, p0}, Li4/k0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_44

    move v2, v3

    goto :goto_45

    :cond_44
    move v2, v4

    :goto_45
    invoke-virtual {v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getCompatibleModeMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-virtual {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v5

    if-nez v5, :cond_7c

    instance-of p2, p2, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-nez p2, :cond_7c

    invoke-virtual {v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7c

    invoke-virtual {v1}, Lcom/oplus/quickstep/views/OplusTaskHeaderView$Companion;->getMiniWindowName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7c

    sget-object p0, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->INSTANCE:Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusTaskShortcutsFactory;->isMultiWindowMode(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p0

    if-nez p0, :cond_7c

    if-nez v2, :cond_7c

    goto :goto_7d

    :cond_7c
    move v3, v4

    :goto_7d
    return v3
.end method

.method public final showScaleChangeBtn(I)Ljava/lang/Boolean;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object p0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeFullScreen:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->getCompatibleModeValue()I

    move-result p0

    if-ne p1, p0, :cond_b

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_22

    :cond_b
    sget-object p0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeSixteenNine:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->getCompatibleModeValue()I

    move-result p0

    if-ne p1, p0, :cond_16

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_22

    :cond_16
    sget-object p0, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->CompatibleModeFourThree:Lcom/oplus/quickstep/utils/CompatibleModeEnum;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/CompatibleModeEnum;->getCompatibleModeValue()I

    move-result p0

    if-ne p1, p0, :cond_21

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return-object p0
.end method
