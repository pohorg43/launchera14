.class Lcom/coui/appcompat/seekbar/COUISeekBar$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La2/g;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/seekbar/COUISeekBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(La2/d;)V
    .registers 2

    return-void
.end method

.method public onSpringAtRest(La2/d;)V
    .registers 2

    return-void
.end method

.method public onSpringEndStateChange(La2/d;)V
    .registers 2

    return-void
.end method

.method public onSpringUpdate(La2/d;)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s0:F

    float-to-double v1, v1

    iget-wide v3, p1, La2/d;->g:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget-object p1, p1, La2/d;->c:La2/d$b;

    iget-wide v1, p1, La2/d$b;->a:D

    double-to-float p1, v1

    iput p1, v0, Lcom/coui/appcompat/seekbar/COUISeekBar;->s0:F

    goto :goto_20

    :cond_1b
    iget-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    const/4 v0, 0x0

    iput v0, p1, Lcom/coui/appcompat/seekbar/COUISeekBar;->s0:F

    :goto_20
    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$2;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_25
    return-void
.end method
