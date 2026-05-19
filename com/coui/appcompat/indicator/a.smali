.class public final synthetic Lcom/coui/appcompat/indicator/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/indicator/COUIPageIndicator;

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;IFZI)V
    .registers 6

    iput p5, p0, Lcom/coui/appcompat/indicator/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/indicator/a;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iput p2, p0, Lcom/coui/appcompat/indicator/a;->c:I

    iput p3, p0, Lcom/coui/appcompat/indicator/a;->d:F

    iput-boolean p4, p0, Lcom/coui/appcompat/indicator/a;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/coui/appcompat/indicator/a;->a:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/coui/appcompat/indicator/a;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget v1, p0, Lcom/coui/appcompat/indicator/a;->c:I

    iget v2, p0, Lcom/coui/appcompat/indicator/a;->d:F

    iget-boolean p0, p0, Lcom/coui/appcompat/indicator/a;->e:Z

    sget v3, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k0:F

    invoke-virtual {v0, v1, v2, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g(IFZ)V

    return-void

    :goto_14
    iget-object v0, p0, Lcom/coui/appcompat/indicator/a;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget v1, p0, Lcom/coui/appcompat/indicator/a;->c:I

    iget v2, p0, Lcom/coui/appcompat/indicator/a;->d:F

    iget-boolean p0, p0, Lcom/coui/appcompat/indicator/a;->e:Z

    sget v3, Lcom/coui/appcompat/indicator/COUIPageIndicator;->k0:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->p(I)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->b(IFZ)V

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->n:I

    iput v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->o:I

    iget-object p0, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->W:Landroid/graphics/RectF;

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->s:F

    iput v1, p0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->t:F

    iput v1, p0, Landroid/graphics/RectF;->right:F

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->j0:Lcom/coui/appcompat/indicator/COUIPageIndicator$IndicatorSavedState;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
