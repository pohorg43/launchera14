.class Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/views/OplusClearAllPanelView;->inflateIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$000(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->isEnterAnimatorRunning()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_50

    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v0, 0x9

    const/4 v2, 0x1

    if-eq p2, v0, :cond_3d

    const/16 v0, 0xa

    if-eq p2, v0, :cond_2a

    return v1

    :cond_2a
    check-cast p1, Lcom/android/launcher/views/PressFeedbackButton;

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$200(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f060835

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    return v2

    :cond_3d
    check-cast p1, Lcom/android/launcher/views/PressFeedbackButton;

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$100(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f04021c

    invoke-static {p0, p2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    return v2

    :cond_50
    :goto_50
    return v1
.end method
