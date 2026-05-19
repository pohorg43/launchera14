.class Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressBarStyleProperty"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->g:F

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->h:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->a:F

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->b:F

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c:F

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->i:I

    return-void
.end method


# virtual methods
.method public a()F
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->h:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d:F

    return p0

    :cond_a
    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->g:F

    return p0
.end method

.method public b()F
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->h:F

    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_a

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c:F

    return p0

    :cond_a
    return v0
.end method

.method public c(F)V
    .registers 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_c

    const-string v1, "COUICircularDrawable"

    const-string v2, "Progress bar outer diameter should be greater than 0 !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->f:F

    return-void
.end method

.method public d(F)V
    .registers 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_c

    const-string v1, "COUICircularDrawable"

    const-string v2, "Progress bar stroke width should be greater than 0 !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->e:F

    return-void
.end method
