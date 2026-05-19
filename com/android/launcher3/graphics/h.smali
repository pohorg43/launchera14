.class public final synthetic Lcom/android/launcher3/graphics/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/Scrim;F)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/graphics/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/graphics/h;->c:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;F)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/graphics/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/graphics/h;->c:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;F)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/graphics/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/graphics/h;->c:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/views/WorkSpaceScrimView;F)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/graphics/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/graphics/h;->c:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;F)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/graphics/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/graphics/h;->c:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;F)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/graphics/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/graphics/h;->c:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;F)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/graphics/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/graphics/h;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/graphics/h;->a:I

    packed-switch v0, :pswitch_data_4c

    goto :goto_42

    :pswitch_6  #0x5
    iget-object v0, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    iget p0, p0, Lcom/android/launcher3/graphics/h;->c:F

    invoke-static {v0, p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->a(Lcom/android/quickstep/touch/TaskWindowSpringScrollController;F)V

    return-void

    :pswitch_10  #0x4
    iget-object v0, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;

    iget p0, p0, Lcom/android/launcher3/graphics/h;->c:F

    invoke-static {v0, p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->a(Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;F)V

    return-void

    :pswitch_1a  #0x3
    iget-object v0, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/views/WorkSpaceScrimView;

    iget p0, p0, Lcom/android/launcher3/graphics/h;->c:F

    invoke-static {v0, p0}, Lcom/android/launcher3/views/WorkSpaceScrimView;->a(Lcom/android/launcher3/views/WorkSpaceScrimView;F)V

    return-void

    :pswitch_24  #0x2
    iget-object v0, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    iget p0, p0, Lcom/android/launcher3/graphics/h;->c:F

    invoke-static {v0, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;F)V

    return-void

    :pswitch_2e  #0x1
    iget-object v0, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;

    iget p0, p0, Lcom/android/launcher3/graphics/h;->c:F

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;->v(Lcom/android/launcher3/taskbar/OplusNavbarButtonsViewController;F)V

    return-void

    :pswitch_38  #0x0
    iget-object v0, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/graphics/Scrim;

    iget p0, p0, Lcom/android/launcher3/graphics/h;->c:F

    invoke-static {v0, p0}, Lcom/android/launcher3/graphics/Scrim;->a(Lcom/android/launcher3/graphics/Scrim;F)V

    return-void

    :goto_42
    iget-object v0, p0, Lcom/android/launcher3/graphics/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    iget p0, p0, Lcom/android/launcher3/graphics/h;->c:F

    invoke-static {v0, p0}, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;->d(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;F)V

    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_2e  #00000001
        :pswitch_24  #00000002
        :pswitch_1a  #00000003
        :pswitch_10  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
