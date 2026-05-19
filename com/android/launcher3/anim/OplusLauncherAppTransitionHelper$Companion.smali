.class public final Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;
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

    invoke-direct {p0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/animation/Animator;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;->finishAnimImmediately$lambda$0(Landroid/animation/Animator;)V

    return-void
.end method

.method private static final finishAnimImmediately$lambda$0(Landroid/animation/Animator;)V
    .registers 2

    const-string v0, "$animator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    return-void
.end method


# virtual methods
.method public final finishAnimImmediately(Landroid/animation/Animator;Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finishAnimImmediately, asyncAnim = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusLauncherAppTransitionHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_28

    sget-object p0, Lcom/oplus/util/OplusExecutors;->ANIM_EXECUTOR:Lcom/oplus/util/OplusLauncherAnimExecutor;

    new-instance p2, Landroidx/core/widget/a;

    invoke-direct {p2, p1}, Landroidx/core/widget/a;-><init>(Landroid/animation/Animator;)V

    invoke-virtual {p0, p2}, Lcom/oplus/util/OplusLauncherAnimExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2b

    :cond_28
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    :goto_2b
    return-void
.end method

.method public final hasParent(Landroid/view/View;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getParentFolderIcon()Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p1

    if-eqz p1, :cond_12

    move p0, v1

    :cond_12
    return p0

    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1a

    move p0, v1

    :cond_1a
    return p0
.end method
