.class Lcom/android/quickstep/util/animation/DynamicAnimation$14;
.super Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/animation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/util/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;Lcom/android/quickstep/util/animation/DynamicAnimation$1;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/animation/DynamicAnimation$14;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    float-to-int p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setScrollY(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/animation/DynamicAnimation$14;->setValue(Landroid/view/View;F)V

    return-void
.end method
