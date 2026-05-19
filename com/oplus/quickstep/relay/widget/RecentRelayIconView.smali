.class public final Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/relay/widget/RecentRelayIconView$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecentRelayIconView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentRelayIconView.kt\ncom/oplus/quickstep/relay/widget/RecentRelayIconView\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,150:1\n54#2,4:151\n54#2,4:155\n*S KotlinDebug\n*F\n+ 1 RecentRelayIconView.kt\ncom/oplus/quickstep/relay/widget/RecentRelayIconView\n*L\n117#1:151,4\n129#1:155,4\n*E\n"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView$Companion;

.field private static final TAG:Ljava/lang/String; = "RecentRelayIconView"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mIconPaint:Landroid/graphics/Paint;

.field private mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

.field private final mMatrix:Landroid/graphics/Matrix;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->Companion:Lcom/oplus/quickstep/relay/widget/RecentRelayIconView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/quickstep/relay/RecentRelayInteraction;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mInteraction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mIconPaint:Landroid/graphics/Paint;

    new-instance p2, Lcom/oplus/quickstep/dock/DockFeedbackEffect;

    invoke-direct {p2, p0, p1}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;-><init>(Landroid/view/View;Landroid/graphics/Paint;)V

    new-instance p1, Lcom/android/launcher/guide/g;

    invoke-direct {p1, p0}, Lcom/android/launcher/guide/g;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/view/View;)V
    .registers 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->getRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    const-string v0, "onClick(), startType="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {v2}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->getRelayData()Lcom/oplus/quickstep/relay/data/RelayData;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lcom/oplus/quickstep/relay/data/RelayData;->getStartType()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    :cond_29
    move-object v2, v1

    :goto_2a
    const-string v3, "RecentRelayIconView"

    invoke-static {v0, v2, v3}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setClicked(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->getRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/views/LauncherRecentsView;

    if-eqz v0, :cond_5d

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_46

    move-object v1, p1

    check-cast v1, Lcom/android/launcher/Launcher;

    :cond_46
    if-eqz v1, :cond_60

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_60

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v3, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/app/Activity;)V

    invoke-static {v3}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_60

    :cond_5d
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->startRelay(Landroid/app/Activity;)V

    :cond_60
    :goto_60
    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/app/Activity;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->lambda$1$lambda$0(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->_init_$lambda$1(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/view/View;)V

    return-void
.end method

.method private final findIntentView(Lcom/android/launcher3/OplusWorkspace;Landroid/content/Intent;)Landroid/view/View;
    .registers 13

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    const-string v1, "RecentRelayIconView"

    const-string v2, "getChildAt(index)"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v6, v3

    :goto_17
    if-ge v6, v5, :cond_4e

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v9, :cond_2b

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_2c

    :cond_2b
    move-object v8, v4

    :goto_2c
    if-nez v8, :cond_2f

    goto :goto_4b

    :cond_2f
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->same(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_4b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_4a

    const-string p0, "findIntentView(), in hotseat: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v8, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p0, p1, v1}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_4a
    return-object v7

    :cond_4b
    :goto_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_4e
    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_5d

    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_5e

    :cond_5d
    move-object p1, v4

    :goto_5e
    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p1

    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_6a
    if-ge v3, v0, :cond_a1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v7, :cond_7e

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_7f

    :cond_7e
    move-object v6, v4

    :goto_7f
    if-nez v6, :cond_82

    goto :goto_9e

    :cond_82
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->same(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_9d

    const-string p0, "findIntentView(), in workspace: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v6, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p0, p1, v1}, Lcom/android/launcher/folder/download/d;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/String;)V

    :cond_9d
    return-object v5

    :cond_9e
    :goto_9e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    :cond_a1
    return-object v4
.end method

.method private static final lambda$1$lambda$0(Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;Landroid/app/Activity;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->startRelay(Landroid/app/Activity;)V

    return-void
.end method

.method private final same(Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;)Z
    .registers 3

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private final startRelay(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    invoke-virtual {v0}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->getRelayData()Lcom/oplus/quickstep/relay/data/RelayData;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/relay/data/RelayData;->start(Landroid/app/Activity;)V

    :cond_b
    iget-object p0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mInteraction:Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->setRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->clearDockerAppConnectData(Z)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mIconPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final updateRelayData(Lcom/oplus/quickstep/relay/data/RelayData;)V
    .registers 6

    const-string v0, "RecentRelayIconView"

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Lcom/oplus/quickstep/relay/data/RelayData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->getDockIconSize(Landroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_2b

    move v2, v1

    goto :goto_2f

    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :goto_2f
    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz p1, :cond_44

    iget-object v3, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_44
    iget-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mIconPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_83

    const-string p1, "updateRelayData(), scale="

    const-string v3, ", h="

    invoke-static {p1, v2, v3}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", defaultSize="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :cond_70
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_7b

    const-string p1, "updateRelayData(), bitmap set null"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/oplus/quickstep/relay/widget/RecentRelayIconView;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_83
    :goto_83
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
