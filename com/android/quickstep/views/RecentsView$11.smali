.class Lcom/android/quickstep/views/RecentsView$11;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/quickstep/views/RecentsView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/quickstep/views/RecentsView;)F
    .registers 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView$11;->getValue(Lcom/android/quickstep/views/RecentsView;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/quickstep/views/RecentsView;F)V
    .registers 3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/RecentsView;->setSwipeUpScrollXByAnimation(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView$11;->setValue(Lcom/android/quickstep/views/RecentsView;F)V

    return-void
.end method
