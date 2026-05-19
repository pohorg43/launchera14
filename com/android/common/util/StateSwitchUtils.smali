.class public final Lcom/android/common/util/StateSwitchUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStateSwitchUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateSwitchUtils.kt\ncom/android/common/util/StateSwitchUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,132:1\n1855#2,2:133\n*S KotlinDebug\n*F\n+ 1 StateSwitchUtils.kt\ncom/android/common/util/StateSwitchUtils\n*L\n69#1:133,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/StateSwitchUtils;

.field private static final TAG:Ljava/lang/String; = "StateSwitchUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/StateSwitchUtils;

    invoke-direct {v0}, Lcom/android/common/util/StateSwitchUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/StateSwitchUtils;->INSTANCE:Lcom/android/common/util/StateSwitchUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final applyStateChange(ZIZLcom/android/launcher/Launcher;)V
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    const-string v1, "applyStateChange, isFadeIn = "

    const-string v2, ", forceNoAnimate = "

    const-string v3, ", hasFolder = "

    invoke-static {v1, p0, v2, p2, v3}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_19

    move v4, v3

    goto :goto_1a

    :cond_19
    move v4, v2

    :goto_1a
    const-string v5, "StateSwitchUtils"

    invoke-static {v1, v4, v5}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    const-string v1, "folder.content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChangeForFolder(ZIZLcom/android/launcher3/folder/FolderPagedView;)V

    move p2, v3

    :cond_2e
    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p3

    const-string v0, "launcher.workspace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3e

    return-void

    :cond_3e
    invoke-virtual {p3}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    if-gez v1, :cond_45

    return-void

    :cond_45
    invoke-virtual {p3}, Lcom/android/launcher3/PagedView;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v1

    const-string v3, "currentVisiblePage"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v6, "it"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v6, v4, Lcom/android/launcher3/CellLayout;

    if-eqz v6, :cond_73

    check-cast v4, Lcom/android/launcher3/CellLayout;

    goto :goto_74

    :cond_73
    move-object v4, v5

    :goto_74
    if-eqz v4, :cond_7a

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    :cond_7a
    xor-int/lit8 v4, p2, 0x1

    invoke-static {v5, p0, p1, v4}, Lcom/android/common/util/StateSwitchUtils;->applySwitchStateForContainer(Lcom/android/launcher3/ShortcutAndWidgetContainer;ZIZ)V

    goto :goto_52

    :cond_80
    move p2, v2

    :goto_81
    if-ge p2, v0, :cond_a3

    invoke-virtual {v1, p2}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_a0

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/CellLayout;

    if-eqz v4, :cond_94

    check-cast v3, Lcom/android/launcher3/CellLayout;

    goto :goto_95

    :cond_94
    move-object v3, v5

    :goto_95
    if-eqz v3, :cond_9c

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    goto :goto_9d

    :cond_9c
    move-object v3, v5

    :goto_9d
    invoke-static {v3, p0, p1, v2}, Lcom/android/common/util/StateSwitchUtils;->applySwitchStateForContainer(Lcom/android/launcher3/ShortcutAndWidgetContainer;ZIZ)V

    :cond_a0
    add-int/lit8 p2, p2, 0x1

    goto :goto_81

    :cond_a3
    return-void
.end method

.method public static final applyStateChangeForFolder(ZIZLcom/android/launcher3/folder/FolderPagedView;)V
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "folder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p3}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    if-gez v1, :cond_13

    return-void

    :cond_13
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.CellLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v2, p0, p1, p2}, Lcom/android/common/util/StateSwitchUtils;->applySwitchStateForContainer(Lcom/android/launcher3/ShortcutAndWidgetContainer;ZIZ)V

    const/4 p2, 0x0

    move v2, p2

    :goto_2a
    if-ge v2, v0, :cond_41

    if-eq v2, v1, :cond_3e

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-static {v4, p0, p1, p2}, Lcom/android/common/util/StateSwitchUtils;->applySwitchStateForContainer(Lcom/android/launcher3/ShortcutAndWidgetContainer;ZIZ)V

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_41
    return-void
.end method

.method public static final applyStateChangeWithCertainView(Landroid/view/View;ZIZLcom/android/launcher/Launcher;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_c

    sget-object v0, Lcom/android/common/util/StateSwitchUtils;->INSTANCE:Lcom/android/common/util/StateSwitchUtils;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/common/util/StateSwitchUtils;->applySwitchStateForView(Landroid/view/View;ZIZ)V

    :cond_c
    invoke-static {p1, p2, p3, p4}, Lcom/android/common/util/StateSwitchUtils;->applyStateChange(ZIZLcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static final applySwitchStateForContainer(Lcom/android/launcher3/ShortcutAndWidgetContainer;ZIZ)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_a

    const-string p0, "StateSwitchUtils"

    const-string p1, "applySwitchStateForChild container is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1d

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/android/common/util/StateSwitchUtils;->INSTANCE:Lcom/android/common/util/StateSwitchUtils;

    invoke-virtual {v3, v2, p1, p2, p3}, Lcom/android/common/util/StateSwitchUtils;->applySwitchStateForView(Landroid/view/View;ZIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return-void
.end method


# virtual methods
.method public final applySwitchStateForView(Landroid/view/View;ZIZ)V
    .registers 5

    instance-of p0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_c

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2, p3, p4}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->applySelectedState(ZIZ)V

    goto :goto_2f

    :cond_c
    instance-of p0, p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz p0, :cond_1c

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->isSmallIcon()Z

    move-result p0

    if-eqz p0, :cond_2f

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/launcher3/folder/OplusFolderIcon;->applyChildSelectedState(ZIZ)V

    goto :goto_2f

    :cond_1c
    instance-of p0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz p0, :cond_26

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->applySwitchState(ZIZ)V

    goto :goto_2f

    :cond_26
    instance-of p0, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p0, :cond_2f

    check-cast p1, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/launcher3/card/LauncherCardView;->applySwitchState(ZIZ)V

    :cond_2f
    :goto_2f
    return-void
.end method
