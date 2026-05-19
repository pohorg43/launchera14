.class Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;",
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
.method public getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget p0, p1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->k:F

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iput p2, p1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->k:F

    invoke-virtual {p1}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    iget-object p0, p1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->V:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;

    if-eqz p0, :cond_e

    invoke-interface {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressChangedListener;->b()V

    :cond_e
    return-void
.end method
