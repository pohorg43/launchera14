.class public final synthetic Lcom/android/keyguardservice/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguardservice/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguardservice/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/keyguardservice/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguardservice/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;[F)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/keyguardservice/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguardservice/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/IconShape$OctagonSquare;Landroid/graphics/Path;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguardservice/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguardservice/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguardservice/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/panel/COUIPanelPressHelper;Landroid/view/View;)V
    .registers 4

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/keyguardservice/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget v0, p0, Lcom/android/keyguardservice/c;->a:I

    packed-switch v0, :pswitch_data_92

    goto :goto_72

    :pswitch_6  #0x8
    iget-object v0, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object p0, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->e(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_12  #0x7
    iget-object v0, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/draganddrop/DragLayout;->a(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1e  #0x6
    iget-object v0, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    check-cast p0, [F

    invoke-static {v0, p0, p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->b(Landroid/view/View;[FLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_2a  #0x5
    iget-object v0, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    iget-object p0, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->e(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_36  #0x4
    iget-object v0, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->b(Landroid/view/View;Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_42  #0x3
    iget-object v0, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;

    iget-object p0, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Path;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;->b(Lcom/android/launcher3/graphics/IconShape$OctagonSquare;Landroid/graphics/Path;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_4e  #0x2
    iget-object v0, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;->c(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/folder/taskbar/TaskBarFolderIconBackground;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_5a  #0x1
    iget-object v0, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->b(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_66  #0x0
    iget-object v0, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iget-object p0, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->a(Lcom/android/launcher3/CellLayout;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_72
    iget-object v0, p0, Lcom/android/keyguardservice/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;

    iget-object p0, p0, Lcom/android/keyguardservice/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    sget-object v1, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->d:Landroid/view/animation/PathInterpolator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bgAlpha"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iput-object p1, v0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->a:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_66  #00000000
        :pswitch_5a  #00000001
        :pswitch_4e  #00000002
        :pswitch_42  #00000003
        :pswitch_36  #00000004
        :pswitch_2a  #00000005
        :pswitch_1e  #00000006
        :pswitch_12  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
