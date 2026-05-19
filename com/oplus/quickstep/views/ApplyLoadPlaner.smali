.class public final Lcom/oplus/quickstep/views/ApplyLoadPlaner;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/views/ApplyLoadPlaner$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/views/ApplyLoadPlaner$Companion;

.field private static final TAG:Ljava/lang/String; = "ApplyLoadPlaner"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/views/ApplyLoadPlaner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/views/ApplyLoadPlaner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/views/ApplyLoadPlaner;->Companion:Lcom/oplus/quickstep/views/ApplyLoadPlaner$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final bindTaskView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;Lcom/android/quickstep/util/GroupTask;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Landroid/view/View;",
            "Lcom/android/quickstep/util/GroupTask;",
            ")V"
        }
    .end annotation

    instance-of p0, p2, Lcom/android/quickstep/views/TaskView;

    if-eqz p0, :cond_7

    check-cast p2, Lcom/android/quickstep/views/TaskView;

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    if-nez p2, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    instance-of p1, p2, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz p1, :cond_37

    iget-object p1, p3, Lcom/android/quickstep/util/GroupTask;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    iget v1, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTopTaskId:I

    iget-object v2, p3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v1, v2, :cond_23

    const/4 v0, 0x1

    :cond_23
    if-eqz v0, :cond_28

    iget-object v1, p3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_2a

    :cond_28
    iget-object v1, p3, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    :goto_2a
    if-eqz v0, :cond_2f

    iget-object p3, p3, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_31

    :cond_2f
    iget-object p3, p3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    :goto_31
    check-cast p2, Lcom/android/quickstep/views/GroupedTaskView;

    invoke-virtual {p2, v1, p3, p0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    goto :goto_3c

    :cond_37
    iget-object p1, p3, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p2, p1, p0}, Lcom/android/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;)V

    :goto_3c
    return-void
.end method

.method private final isFit(Lcom/android/quickstep/util/GroupTask;Landroid/view/View;)Z
    .registers 3

    instance-of p0, p2, Lcom/android/quickstep/views/TaskView;

    if-eqz p0, :cond_1a

    invoke-virtual {p1}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result p0

    if-eqz p0, :cond_e

    instance-of p0, p2, Lcom/android/quickstep/views/GroupedTaskView;

    if-nez p0, :cond_18

    :cond_e
    invoke-virtual {p1}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result p0

    if-nez p0, :cond_1a

    instance-of p0, p2, Lcom/android/quickstep/views/GroupedTaskView;

    if-nez p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private final print(Lcom/android/quickstep/util/GroupTask;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x5b

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/views/ApplyLoadPlaner;->print(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_23

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/ApplyLoadPlaner;->print(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    const/16 p1, 0x5d

    invoke-static {v0, p0, p1}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    goto :goto_31

    :cond_2b
    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/views/ApplyLoadPlaner;->print(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object p0

    :goto_31
    return-object p0
.end method

.method private final print(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_5

    const-string p0, ""

    goto :goto_4a

    :cond_5
    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    const/16 v0, 0x5d

    const/16 v1, 0x23

    const/16 v2, 0x5b

    if-eqz p0, :cond_26

    const-string v3, "title"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    if-eqz p0, :cond_26

    invoke-static {v2}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    goto :goto_36

    :cond_26
    invoke-static {v2}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4a
    return-object p0
.end method

.method private final printId(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    const-string p0, "null"

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final apply(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/util/ArrayList;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "recentsView"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "taskGroups"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x8

    const-string v5, "attachAndBindChilds"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    const-string v7, "ApplyLoadPlaner"

    if-eqz v6, :cond_3d

    const-string v6, "apply(), taskCount="

    const-string v8, ", childCount="

    invoke-static {v6, v5, v8}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    const-string v9, "clearButton"

    const/4 v10, -0x1

    if-eq v8, v10, :cond_50

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeView(Landroid/view/View;)V

    :cond_50
    add-int/lit8 v8, v5, -0x1

    const/4 v11, 0x0

    :goto_53
    if-ge v10, v8, :cond_eb

    add-int/lit8 v10, v11, 0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "taskGroups[j]"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v12}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v13

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-direct {v0, v12, v14}, Lcom/oplus/quickstep/views/ApplyLoadPlaner;->isFit(Lcom/android/quickstep/util/GroupTask;Landroid/view/View;)Z

    move-result v15

    const/16 v16, 0x0

    if-eqz v15, :cond_87

    instance-of v11, v14, Lcom/android/quickstep/views/TaskView;

    if-eqz v11, :cond_7a

    move-object/from16 v16, v14

    check-cast v16, Lcom/android/quickstep/views/TaskView;

    :cond_7a
    if-eqz v16, :cond_7f

    invoke-virtual/range {v16 .. v16}, Lcom/android/quickstep/views/TaskView;->onRecycle()V

    :cond_7f
    invoke-direct {v0, v1, v14, v12}, Lcom/oplus/quickstep/views/ApplyLoadPlaner;->bindTaskView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;Lcom/android/quickstep/util/GroupTask;)V

    move-wide/from16 v18, v3

    move/from16 v17, v10

    goto :goto_e0

    :cond_87
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v15

    if-eqz v15, :cond_c8

    const-string v15, "apply(), cant reuse, TaskView: index="

    const-string v2, ", "

    invoke-static {v15, v11, v2}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v17, v10

    invoke-direct {v0, v14}, Lcom/oplus/quickstep/views/ApplyLoadPlaner;->printId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v10, v14, Lcom/android/quickstep/views/TaskView;

    if-eqz v10, :cond_a9

    move-object v10, v14

    check-cast v10, Lcom/android/quickstep/views/TaskView;

    goto :goto_ab

    :cond_a9
    move-object/from16 v10, v16

    :goto_ab
    if-eqz v10, :cond_b7

    invoke-virtual {v10}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v10

    if-eqz v10, :cond_b7

    invoke-direct {v0, v10}, Lcom/oplus/quickstep/views/ApplyLoadPlaner;->print(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;

    move-result-object v16

    :cond_b7
    move-wide/from16 v18, v3

    move-object/from16 v10, v16

    const-string v3, " >>> GroupTask: index="

    invoke-static {v15, v10, v3, v8, v2}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v0, v12}, Lcom/oplus/quickstep/views/ApplyLoadPlaner;->print(Lcom/android/quickstep/util/GroupTask;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2, v7}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cc

    :cond_c8
    move-wide/from16 v18, v3

    move/from16 v17, v10

    :goto_cc
    invoke-virtual {v1, v13}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromPool(Z)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-direct {v0, v1, v2, v12}, Lcom/oplus/quickstep/views/ApplyLoadPlaner;->bindTaskView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Landroid/view/View;Lcom/android/quickstep/util/GroupTask;)V

    if-eqz v14, :cond_e0

    instance-of v2, v14, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setIgnoreNotifyViewRemovedToDock(Z)V

    invoke-virtual {v1, v14}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeView(Landroid/view/View;)V

    :cond_e0
    :goto_e0
    add-int/lit8 v8, v8, -0x1

    const/4 v10, -0x1

    move-object/from16 v2, p2

    move/from16 v11, v17

    move-wide/from16 v3, v18

    goto/16 :goto_53

    :cond_eb
    move-wide/from16 v18, v3

    :cond_ed
    :goto_ed
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, v5, :cond_11b

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_110

    const-string v3, "apply(), removeView: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {v0, v2}, Lcom/oplus/quickstep/views/ApplyLoadPlaner;->printId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_110
    if-eqz v2, :cond_ed

    instance-of v3, v2, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setIgnoreNotifyViewRemovedToDock(Z)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->removeView(Landroid/view/View;)V

    goto :goto_ed

    :cond_11b
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->addView(Landroid/view/View;)V

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_147

    const-string v0, "apply(), cost: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_147
    return-void
.end method
