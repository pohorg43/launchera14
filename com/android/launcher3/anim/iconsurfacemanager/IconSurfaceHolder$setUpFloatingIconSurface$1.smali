.class public final Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setUpFloatingIconSurface(Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $clickedView:Landroid/view/View;

.field public final synthetic $cropHeight:Z

.field public final synthetic $floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic $iconContainerSurfaceView:Landroid/view/SurfaceView;

.field public final synthetic $iconId:I

.field public final synthetic this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;ILandroid/view/View;Lcom/android/launcher3/views/FloatingIconView;ZLandroid/view/SurfaceView;)V
    .registers 7

    iput-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iput p2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$iconId:I

    iput-object p3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$clickedView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    iput-boolean p5, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$cropHeight:Z

    iput-object p6, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$iconContainerSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->onFinish$lambda$4(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->onDrawableLoaded$lambda$0(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->onDrawableLoaded$lambda$2$lambda$1(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;)V

    return-void
.end method

.method private static final onDrawableLoaded$lambda$0(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideOriginalIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getHasReset$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSurfaceHolder"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getHasReset$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Z

    move-result p0

    if-nez p0, :cond_33

    instance-of p0, p1, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz p0, :cond_2d

    check-cast p1, Lcom/android/launcher3/views/OplusFloatingIconView;

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    if-eqz p1, :cond_33

    invoke-virtual {p1, p2}, Lcom/android/launcher3/views/OplusFloatingIconView;->hideOriginalIcon(Landroid/view/View;)V

    :cond_33
    return-void
.end method

.method private static final onDrawableLoaded$lambda$2$lambda$1(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideOriginalIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getHasReset$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSurfaceHolder"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getHasReset$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Z

    move-result p0

    if-nez p0, :cond_33

    instance-of p0, p1, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz p0, :cond_2d

    check-cast p1, Lcom/android/launcher3/views/OplusFloatingIconView;

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    if-eqz p1, :cond_33

    invoke-virtual {p1, p2}, Lcom/android/launcher3/views/OplusFloatingIconView;->hideOriginalIcon(Landroid/view/View;)V

    :cond_33
    return-void
.end method

.method private static final onFinish$lambda$4(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic onDrawableLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 5

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->onDrawableLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/Float;ZZ)V

    return-void
.end method

.method public onDrawableLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/Float;ZZ)V
    .registers 23

    move-object/from16 v0, p0

    const-string/jumbo v1, "setUpFloatingIconSurface drawable ready, need set surface now floatingIconForegroundSurface: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconSurfaceHolder"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_2a

    :cond_29
    move-object v1, v3

    :goto_2a
    const/4 v4, 0x0

    if-eqz v1, :cond_54

    const-string/jumbo v1, "no need to redraw as same iconsurface"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$iconId:I

    iget-object v2, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    invoke-static {v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getIconSurfaceManager$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$clickedView:Landroid/view/View;

    invoke-interface {v2, v3}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->getViewId(Landroid/view/View;)I

    move-result v2

    if-ne v1, v2, :cond_53

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v2, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iget-object v3, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    iget-object v0, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$clickedView:Landroid/view/View;

    new-instance v5, Lcom/android/launcher3/anim/iconsurfacemanager/a;

    invoke-direct {v5, v2, v3, v0, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/a;-><init>(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;I)V

    invoke-virtual {v1, v5}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_53
    return-void

    :cond_54
    if-eqz p1, :cond_161

    iget-object v1, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iget-object v5, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$clickedView:Landroid/view/View;

    iget-boolean v13, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$cropHeight:Z

    iget-object v15, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$iconContainerSurfaceView:Landroid/view/SurfaceView;

    iget v14, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$iconId:I

    iget-object v0, v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$floatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    invoke-static {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getIconSurfaceManager$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->getLauncherCardBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    instance-of v11, v5, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    new-instance v12, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    if-eqz v11, :cond_74

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    goto :goto_75

    :cond_74
    move-object v6, v3

    :goto_75
    if-eqz v6, :cond_82

    invoke-virtual {v6}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getRealBigFolderItemBounds()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_82

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    goto :goto_83

    :cond_82
    move v6, v4

    :goto_83
    if-eqz v11, :cond_89

    move-object v7, v5

    check-cast v7, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    goto :goto_8a

    :cond_89
    move-object v7, v3

    :goto_8a
    if-eqz v7, :cond_96

    invoke-virtual {v7}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getRealBigFolderItemBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_96

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    :cond_96
    invoke-direct {v12, v6, v4}, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;-><init>(II)V

    invoke-static {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getLauncher$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Lcom/android/launcher3/Launcher;

    move-result-object v6

    if-eqz p2, :cond_a4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_a6

    :cond_a4
    const/high16 v4, 0x3f800000  # 1.0f

    :goto_a6
    move v9, v4

    invoke-static {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getDeviceProfile$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v10

    if-eqz v5, :cond_b2

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    goto :goto_b3

    :cond_b2
    move-object v4, v3

    :goto_b3
    instance-of v7, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v7, :cond_ba

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_bb

    :cond_ba
    move-object v4, v3

    :goto_bb
    if-eqz v4, :cond_c1

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    :cond_c1
    move-object/from16 v16, v3

    move-object/from16 v7, p1

    move v3, v14

    move/from16 v14, p3

    move-object v4, v15

    move/from16 v15, p4

    invoke-static/range {v6 .. v16}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableViewKt;->getDrawableView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FLcom/android/launcher3/OplusDeviceProfile;ZLcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZZZLjava/lang/String;)Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$setLastIconView$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Landroid/view/View;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getIconSurfaceManager$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v7

    invoke-static {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getLauncher$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Lcom/android/launcher3/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getIconSurfaceManager$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v10

    invoke-interface {v10, v5}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->getViewId(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "-iconViewSurface"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDrawableSize()Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDrawableSize()Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;->getHeight()I

    move-result v12

    new-instance v13, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;

    invoke-virtual {v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getOriginalWidth()I

    move-result v9

    invoke-virtual {v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getOriginalHeight()I

    move-result v14

    invoke-direct {v13, v9, v14}, Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;-><init>(II)V

    invoke-virtual {v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->isIconClamped()Z

    move-result v14

    invoke-virtual {v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->cropOffset()I

    move-result v15

    invoke-virtual {v6}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->needAdjustCornerRadius()Z

    move-result v16

    move-object v9, v5

    move-object v5, v7

    move-object v7, v9

    move-object/from16 v17, v2

    move-object v2, v9

    move-object v9, v4

    invoke-interface/range {v5 .. v16}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->transferViewToSurface(Landroid/view/View;Landroid/view/View;Landroid/view/ViewRootImpl;Landroid/view/SurfaceView;Ljava/lang/String;IILcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZIZ)Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setCurrentFloatingIconSurface(Lcom/android/launcher3/anim/floatingdrawable/IconSurface;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getIconSurfaceManager$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->getViewId(Landroid/view/View;)I

    move-result v4

    if-ne v3, v4, :cond_147

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/launcher3/anim/iconsurfacemanager/a;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v0, v2, v5}, Lcom/android/launcher3/anim/iconsurfacemanager/a;-><init>(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;I)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_147
    const-string/jumbo v0, "setUpFloatingIconSurface set here: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lh4/z;->a:Lh4/z;

    goto :goto_162

    :cond_161
    move-object v1, v2

    :goto_162
    if-nez v3, :cond_169

    const-string v0, "drawable is null cannot do nothing"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_169
    return-void
.end method

.method public onFinish()V
    .registers 4

    const-string/jumbo v0, "setUpFloatingIconSurface onFinish called, callers: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSurfaceHolder"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1$onFinish$finishSurfaceRunnable$1;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iget-object v2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->$clickedView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1$onFinish$finishSurfaceRunnable$1;-><init>(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;->this$0:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    invoke-static {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->access$getLauncher$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p0

    if-eqz p0, :cond_38

    new-instance p0, Lcom/android/launcher3/anim/iconsurfacemanager/b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/b;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-static {p0, v1}, Lcom/oplus/quickstep/utils/ChoreographerUtil;->postFrameCallbackDelay(Ljava/lang/Runnable;I)V

    goto :goto_3b

    :cond_38
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_3b
    return-void
.end method
