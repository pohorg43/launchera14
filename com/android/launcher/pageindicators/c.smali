.class public final synthetic Lcom/android/launcher/pageindicators/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;ZI)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/pageindicators/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    iput p3, p0, Lcom/android/launcher/pageindicators/c;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;ZI)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/pageindicators/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    iput p3, p0, Lcom/android/launcher/pageindicators/c;->d:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher/pageindicators/c;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    iget p0, p0, Lcom/android/launcher/pageindicators/c;->d:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->d(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;ZILandroid/animation/ValueAnimator;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/launcher/pageindicators/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/c;->c:Z

    iget p0, p0, Lcom/android/launcher/pageindicators/c;->d:I

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;->a(Lcom/oplus/zoom/zoommenu/ZoomFullBoundManager;ZILandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
