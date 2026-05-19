.class Lcom/android/keyguardservice/KeyGuardDismissedUtils$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguardservice/KeyGuardDismissedUtils;->addDragLayerAnim(Ljava/util/List;Lcom/android/launcher3/dragndrop/DragLayer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$dragLayer:Lcom/android/launcher3/dragndrop/DragLayer;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$3;->val$dragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$3;->val$dragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
