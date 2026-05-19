.class public final synthetic Lcom/android/keyguardservice/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;Z)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguardservice/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/keyguardservice/d;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/views/PressFeedbackButton;Z)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguardservice/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/keyguardservice/d;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/anim/IconPressAnimManager;Z)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguardservice/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/keyguardservice/d;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Z)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguardservice/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/keyguardservice/d;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BadgedImageView;Z)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/keyguardservice/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/keyguardservice/d;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;Z)V
    .registers 4

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/keyguardservice/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/keyguardservice/d;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;Z)V
    .registers 4

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguardservice/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/keyguardservice/d;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;Z)V
    .registers 4

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/keyguardservice/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/keyguardservice/d;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/view/ViewGroup;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguardservice/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/keyguardservice/d;->b:Z

    iput-object p2, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/android/launcher3/folder/big/FolderIndicator;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguardservice/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/keyguardservice/d;->b:Z

    iput-object p2, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget v0, p0, Lcom/android/keyguardservice/d;->a:I

    packed-switch v0, :pswitch_data_82

    goto :goto_78

    :pswitch_6  #0x8
    iget-object v0, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;

    iget-boolean p0, p0, Lcom/android/keyguardservice/d;->b:Z

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->a(Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_10  #0x7
    iget-object v0, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    iget-boolean p0, p0, Lcom/android/keyguardservice/d;->b:Z

    iget-object v1, v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p0, :cond_23

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p0

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    invoke-virtual {v0, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->m(F)I

    move-result p0

    iget p1, v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->k:I

    invoke-static {p0, p1}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :pswitch_32  #0x6
    iget-object v0, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-boolean p0, p0, Lcom/android/keyguardservice/d;->b:Z

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->b(Lcom/android/wm/shell/bubbles/BadgedImageView;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_3c  #0x5
    iget-object v0, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    iget-boolean p0, p0, Lcom/android/keyguardservice/d;->b:Z

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->d(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_46  #0x4
    iget-boolean v0, p0, Lcom/android/keyguardservice/d;->b:Z

    iget-object p0, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/big/FolderIndicator;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/folder/big/FolderIndicator;->a(ZLcom/android/launcher3/folder/big/FolderIndicator;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_50  #0x3
    iget-object v0, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/anim/IconPressAnimManager;

    iget-boolean p0, p0, Lcom/android/keyguardservice/d;->b:Z

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->a(Lcom/android/launcher3/anim/IconPressAnimManager;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_5a  #0x2
    iget-object v0, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/views/PressFeedbackButton;

    iget-boolean p0, p0, Lcom/android/keyguardservice/d;->b:Z

    invoke-static {v0, p0, p1}, Lcom/android/launcher/views/PressFeedbackButton;->a(Lcom/android/launcher/views/PressFeedbackButton;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_64  #0x1
    iget-object v0, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget-boolean p0, p0, Lcom/android/keyguardservice/d;->b:Z

    invoke-static {v0, p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->e(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_6e  #0x0
    iget-boolean v0, p0, Lcom/android/keyguardservice/d;->b:Z

    iget-object p0, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {v0, p0, p1}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->b(ZLandroid/view/ViewGroup;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_78
    iget-object v0, p0, Lcom/android/keyguardservice/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    iget-boolean p0, p0, Lcom/android/keyguardservice/d;->b:Z

    invoke-static {v0, p0, p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->b(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_6e  #00000000
        :pswitch_64  #00000001
        :pswitch_5a  #00000002
        :pswitch_50  #00000003
        :pswitch_46  #00000004
        :pswitch_3c  #00000005
        :pswitch_32  #00000006
        :pswitch_10  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
