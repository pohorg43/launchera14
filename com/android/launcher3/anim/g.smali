.class public final synthetic Lcom/android/launcher3/anim/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:F

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FLcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/anim/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/g;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/anim/g;->e:Ljava/lang/Object;

    iput p5, p0, Lcom/android/launcher3/anim/g;->f:F

    iput-object p6, p0, Lcom/android/launcher3/anim/g;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FLcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;)V
    .registers 8

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/anim/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/g;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/anim/g;->e:Ljava/lang/Object;

    iput p5, p0, Lcom/android/launcher3/anim/g;->f:F

    iput-object p6, p0, Lcom/android/launcher3/anim/g;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;F)V
    .registers 8

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/anim/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/g;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/anim/g;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/anim/g;->g:Ljava/lang/Object;

    iput p6, p0, Lcom/android/launcher3/anim/g;->f:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget v0, p0, Lcom/android/launcher3/anim/g;->a:I

    packed-switch v0, :pswitch_data_64

    goto :goto_44

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/anim/g;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v0, p0, Lcom/android/launcher3/anim/g;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;

    iget-object v0, p0, Lcom/android/launcher3/anim/g;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/shared/system/AppTransitionParam;

    iget-object v0, p0, Lcom/android/launcher3/anim/g;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/android/launcher3/anim/g;->f:F

    iget-object p0, p0, Lcom/android/launcher3/anim/g;->g:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;->a(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/AppOpenWindowAnimRunner;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FLcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;)V

    return-void

    :pswitch_25  #0x0
    iget-object v0, p0, Lcom/android/launcher3/anim/g;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v0, p0, Lcom/android/launcher3/anim/g;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;

    iget-object v0, p0, Lcom/android/launcher3/anim/g;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/shared/system/AppTransitionParam;

    iget-object v0, p0, Lcom/android/launcher3/anim/g;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/android/launcher3/anim/g;->f:F

    iget-object p0, p0, Lcom/android/launcher3/anim/g;->g:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;->a(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/anim/AppCloseWindowAnimRunner;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FLcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;)V

    return-void

    :goto_44
    iget-object v0, p0, Lcom/android/launcher3/anim/g;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v0, p0, Lcom/android/launcher3/anim/g;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/window/SplashScreenView;

    iget-object v0, p0, Lcom/android/launcher3/anim/g;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/launcher3/anim/g;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/anim/g;->g:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Runnable;

    iget v6, p0, Lcom/android/launcher3/anim/g;->f:F

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->c(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;F)V

    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
