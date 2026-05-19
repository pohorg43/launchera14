.class Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$2;
.super Landroid/view/animation/AlphaAnimation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->getDeviceFoldingRotationAnimations(IIIII)[Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

.field public final synthetic val$rotateExitDuration:I


# direct methods
.method public constructor <init>(Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;FFI)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$2;->this$0:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;

    iput p4, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$2;->val$rotateExitDuration:I

    invoke-direct {p0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long p1, p4

    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-void
.end method
