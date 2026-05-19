.class Lcom/android/keyguardservice/KeyGuardDismissedUtils$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addHotSeatAnim(Lcom/android/launcher/Launcher;Ljava/util/List;Lcom/android/launcher3/CellLayout;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$hotSeat:Lcom/android/launcher3/CellLayout;

.field public final synthetic val$launcher:Lcom/android/launcher/Launcher;

.field public final synthetic val$pagePointView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$6;->val$launcher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$6;->val$hotSeat:Lcom/android/launcher3/CellLayout;

    iput-object p3, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$6;->val$pagePointView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "KeyGuardDismissedUtils"

    const-string v0, "addHotSeatAnim onAnimationEnd"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$6;->val$launcher:Lcom/android/launcher/Launcher;

    iget-object v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$6;->val$hotSeat:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$6;->val$pagePointView:Landroid/view/View;

    invoke-static {p1, v0, v1}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->access$100(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Landroid/view/View;)V

    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget-object v0, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$6;->val$hotSeat:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object p0, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$6;->val$pagePointView:Landroid/view/View;

    instance-of v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v0, :cond_25

    invoke-virtual {p1, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_25
    return-void
.end method
