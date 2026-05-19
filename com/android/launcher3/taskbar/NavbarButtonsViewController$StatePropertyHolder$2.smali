.class Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;-><init>(Landroid/view/View;Ljava/util/function/IntPredicate;[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder$2;->this$0:Lcom/android/launcher3/taskbar/NavbarButtonsViewController$StatePropertyHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_NAVIGATIONBAR_WIDTH_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASKBAR_NAVIGATIONBAR_WIDTH_ANIMATION:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method
